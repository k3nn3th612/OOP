import keyboard as kb
import random as r

menu = ["hamburger(bun, sauce, tomato, lettuce, cheese, patty, sauce, bun)", "cheeseburger(bun, sauce, cheese, patty, cheese, sauce, bun)", "land-air-sea burger(bun, sauce, tomato, cheese, patty, chicken, fish, cheese, lettuce, sauce, bun)", "classic-sesame burger(sesame seeds, bun, sauce, cheese, pickles, patty, lettuce, tomato, sauce, bun, sesame seeds)"]

session = True
cpick = r.randint(1, 4)

if (cpick == 1):
    print(menu[0])
if (cpick == 2):
    print(menu[1])
if (cpick == 3):
    print(menu[2])
if (cpick == 4):
    print(menu[3])

def printstuff(key):
    if(key == 1):
        print("bun")
    if(key == 2):
        print("lettuce")
    if(key == 3):
        print("tomato")
    if(key == 4):
        print("cheese")
    if(key == 5):
        print("sauce")
    if(key == 6):
        print("fish")
    if(key == 7):
        print("patty")
    if(key == 8):
        print("salt")
    if(key == 9):
        print("chicken")
    if(key == 0):
        print("mayo")
    if(key == "a"):
        print("sesame seeds")
    if(key == "b"):
        print("ranch")
    if(key == "c"):
        print("pickles")
    if(key == "d"):
        print("bbq sauce")
    if(key == "e"):
        print("bacon")
    if(key == "f"):
        print("pepper")

if(kb.is_pressed("space")):
    printstuff(1)

kb.on_press_key('1', lambda event: printstuff(1))
kb.on_press_key('2', lambda event: printstuff(2))
kb.on_press_key('3', lambda event: printstuff(3))
kb.on_press_key('4', lambda event: printstuff(4))
kb.on_press_key('5', lambda event: printstuff(5))
kb.on_press_key('6', lambda event: printstuff(6))
kb.on_press_key('7', lambda event: printstuff(7))
kb.on_press_key('8', lambda event: printstuff(8))
kb.on_press_key('9', lambda event: printstuff(9))
kb.on_press_key('0', lambda event: printstuff(0))
kb.on_press_key('a', lambda event: printstuff('a'))
kb.on_press_key('b', lambda event: printstuff('b'))
kb.on_press_key('c', lambda event: printstuff('c'))
kb.on_press_key('d', lambda event: printstuff('d'))
kb.on_press_key('e', lambda event: printstuff('e'))
kb.on_press_key('f', lambda event: printstuff('f'))

# kb.on_press_key('2', printstuff(2))

while True:
    kb.wait()