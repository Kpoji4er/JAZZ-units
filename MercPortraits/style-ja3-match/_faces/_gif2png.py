from PIL import Image
import sys
src, dst = sys.argv[1], sys.argv[2]
im = Image.open(src)
im.seek(0)
im.convert('RGBA').save(dst)
print(dst)
