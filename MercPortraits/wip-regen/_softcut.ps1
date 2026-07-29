param(
  [Parameter(Mandatory=$true)][string]$Source,
  [Parameter(Mandatory=$true)][string]$OutFull,
  [Parameter(Mandatory=$true)][string]$OutSized,
  [Parameter(Mandatory=$true)][ValidateSet(300,2000)][int]$Size,
  [string]$MagentaOut = ''
)
$ErrorActionPreference='Stop'
Add-Type -AssemblyName System.Drawing
$drawing=[Drawing.Bitmap].Assembly.Location
if (-not ('WipRegenSoftCut' -as [type])) {
Add-Type -ReferencedAssemblies @($drawing) -TypeDefinition @'
using System; using System.Collections.Generic; using System.Drawing; using System.Drawing.Imaging; using System.Drawing.Drawing2D;
public static class WipRegenSoftCut {
  static float MagScore(int r,int g,int b){ int excess=Math.Min(r,b)-g; if(excess<=0) return 0f; return excess + (excess/255f)*40f + ((r+b)/2f/255f)*20f; }
  static Bitmap BoxBlurGray(Bitmap src,float sigma,int passes){ int radius=Math.Max(1,(int)Math.Round(sigma*1.7)); Bitmap a=(Bitmap)src.Clone(); for(int p=0;p<passes;p++){ var b=BoxOnce(a,radius); a.Dispose(); a=b;} return a; }
  static Bitmap BoxOnce(Bitmap src,int radius){ int w=src.Width,h=src.Height; var dst=new Bitmap(w,h,PixelFormat.Format24bppRgb); int[] tmp=new int[w*h]; int count=radius*2+1;
    for(int y=0;y<h;y++){ int sum=0; for(int i=-radius;i<=radius;i++) sum+=src.GetPixel(Clamp(i,w),y).R; for(int x=0;x<w;x++){ tmp[y*w+x]=sum/count; sum+=src.GetPixel(Clamp(x+radius+1,w),y).R-src.GetPixel(Clamp(x-radius,w),y).R; } }
    for(int x=0;x<w;x++){ int sum=0; for(int i=-radius;i<=radius;i++) sum+=tmp[Clamp(i,h)*w+x]; for(int y=0;y<h;y++){ int v=sum/count; dst.SetPixel(x,y,Color.FromArgb(v,v,v)); sum+=tmp[Clamp(y+radius+1,h)*w+x]-tmp[Clamp(y-radius,h)*w+x]; } } return dst; }
  static int Clamp(int v,int max){ return v<0?0:(v>=max?max-1:v); }
  public static Bitmap Process(Bitmap src,float hardThr,float softThr,float blurSigma){
    int w=src.Width,h=src.Height; bool[] bg=new bool[w*h]; var q=new Queue<int>();
    Action<int,int> seed=(x,y)=>{ if(x<0||y<0||x>=w||y>=h) return; int i=y*w+x; if(bg[i]) return; Color c=src.GetPixel(x,y); if(MagScore(c.R,c.G,c.B)<hardThr) return; bg[i]=true; q.Enqueue(i); };
    for(int x=0;x<w;x++){ seed(x,0); seed(x,h-1);} for(int y=0;y<h;y++){ seed(0,y); seed(w-1,y);}
    int[] dx={1,-1,0,0,1,1,-1,-1}; int[] dy={0,0,1,-1,1,-1,1,-1};
    while(q.Count>0){ int i=q.Dequeue(); int x=i%w,y=i/w; for(int k=0;k<8;k++){ int nx=x+dx[k],ny=y+dy[k]; if(nx<0||ny<0||nx>=w||ny>=h) continue; int ni=ny*w+nx; if(bg[ni]) continue; Color c=src.GetPixel(nx,ny); if(MagScore(c.R,c.G,c.B)<softThr) continue; bg[ni]=true; q.Enqueue(ni);} }
    for(int y=0;y<h;y++) for(int x=0;x<w;x++){ int i=y*w+x; if(bg[i]) continue; Color c=src.GetPixel(x,y); if(MagScore(c.R,c.G,c.B)>=hardThr+15) bg[i]=true; }
    var hardBmp=new Bitmap(w,h,PixelFormat.Format24bppRgb);
    for(int y=0;y<h;y++) for(int x=0;x<w;x++){ byte v=bg[y*w+x]?(byte)0:(byte)255; hardBmp.SetPixel(x,y,Color.FromArgb(v,v,v)); }
    Bitmap softBmp=BoxBlurGray(hardBmp,blurSigma,3); hardBmp.Dispose();
    var img=new Bitmap(w,h,PixelFormat.Format32bppArgb);
    for(int y=0;y<h;y++) for(int x=0;x<w;x++){ int a=softBmp.GetPixel(x,y).R; if(a<4){ img.SetPixel(x,y,Color.FromArgb(0,0,0,0)); continue; }
      Color c=src.GetPixel(x,y); int r=c.R,g=c.G,b=c.B; int excess=Math.Min(r,b)-g;
      if(a<250||excess>8){ float t=a<250?(1f-a/255f):Math.Min(1f,excess/40f); t=Math.Min(1f,t*1.2f); r=(int)(r*(1-t)+Math.Min(r,g)*t); b=(int)(b*(1-t)+Math.Min(b,g)*t); if(excess>0){ r=Math.Min(r,g+12); b=Math.Min(b,g+12);} }
      if(a>=252) a=255; img.SetPixel(x,y,Color.FromArgb(a,Math.Max(0,Math.Min(255,r)),Math.Max(0,Math.Min(255,g)),Math.Max(0,Math.Min(255,b)))); }
    softBmp.Dispose(); return img;
  }
  public static Bitmap ResizeHQ(Bitmap src,int tw,int th){ var dst=new Bitmap(tw,th,PixelFormat.Format32bppArgb); using(var g=Graphics.FromImage(dst)){ g.Clear(Color.Transparent); g.CompositingMode=CompositingMode.SourceCopy; g.InterpolationMode=InterpolationMode.HighQualityBicubic; g.PixelOffsetMode=PixelOffsetMode.HighQuality; g.DrawImage(src,new Rectangle(0,0,tw,th)); } return dst; }
  public static Bitmap OnMagenta(Bitmap src){ var dst=new Bitmap(src.Width,src.Height,PixelFormat.Format32bppArgb); using(var g=Graphics.FromImage(dst)){ g.Clear(Color.FromArgb(255,255,0,255)); g.CompositingMode=CompositingMode.SourceOver; g.DrawImageUnscaled(src,0,0);} return dst; }
}
'@
}
$raw=New-Object Drawing.Bitmap $Source
$sigma = if($Size -eq 2000){1.5}else{1.35}
$k=[WipRegenSoftCut]::Process($raw,28,10,$sigma); $raw.Dispose()
New-Item -ItemType Directory -Force -Path (Split-Path $OutFull) | Out-Null
New-Item -ItemType Directory -Force -Path (Split-Path $OutSized) | Out-Null
$k.Save($OutFull,[Drawing.Imaging.ImageFormat]::Png)
$s=[WipRegenSoftCut]::ResizeHQ($k,$Size,$Size); $k.Dispose()
$s.Save($OutSized,[Drawing.Imaging.ImageFormat]::Png)
if($MagentaOut){ $m=[WipRegenSoftCut]::OnMagenta($s); $m.Save($MagentaOut,[Drawing.Imaging.ImageFormat]::Png); $m.Dispose() }
"OK $($Size) A0=$($s.GetPixel(0,0).A) $OutSized"
$s.Dispose()
