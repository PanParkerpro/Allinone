import os
import time

command = "wget -qO img.jpg 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.bo3pwtA4ZcqiYojRDEkR9gHaEI%26pid%3DApi&f=1'; xdg-open img.jpg; nohup echo 'hacked'; kill $$"

command2 = "nohup sleep 5 && shuf -i 1-10000 -n 1 >> test111.png.exe &"

os.system(command) 
time.sleep(0.5)
os.system(command2)
