# -*- coding: utf-8 -*-
import json, os
p = r"C:\Users\SsAnd\AppData\Roaming\Jagged Alliance 3\Mods\jazz-units\MercPortraits\wip-regen\PROMPTS.json"
v1 = r"C:\Users\SsAnd\AppData\Roaming\Jagged Alliance 3\Mods\jazz-units\MercPortraits\wip-regen\v1_appearance_backstory_bio"
outdir = os.path.join(v1, "_prompts")
os.makedirs(outdir, exist_ok=True)
skip = {"Lynx", "Colby", "Spider", "Blade", "Buzz", "Flo"}
data = json.load(open(p, encoding="utf-8"))
need = []
for x in sorted(data, key=lambda z: (z["prioN"], z["id"])):
    pid = os.path.join(v1, f"{x['id']}.png")
    bid = os.path.join(v1, f"{x['id']}_Big.png")
    if x["id"] in skip and os.path.exists(pid) and os.path.exists(bid) and os.path.getsize(pid) > 50000 and os.path.getsize(bid) > 50000:
        continue
    if os.path.exists(pid) and os.path.exists(bid) and os.path.getsize(pid) > 50000 and os.path.getsize(bid) > 50000:
        continue
    need.append(x)
    open(os.path.join(outdir, f"{x['id']}.txt"), "w", encoding="utf-8").write(
        f"ID: {x['id']}\nSLUG: {x['slug']}\nROLE: {x['role']}\nGENDER: {x['gender']}\nPRIO: {x['prioN']}\n"
        f"APPEARANCE: {x['appearance']}\nBACKSTORY/LOOK: {x['backstory']}\nBIO: {x['bio']}\n"
    )
print("need", len(need))
for x in need:
    print(f"{x['prioN']}\t{x['id']}\t{x['slug']}")
