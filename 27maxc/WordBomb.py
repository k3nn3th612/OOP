import random as r
import time as t

Start = True
answertime = False

if Start == True:
    letters = r.choice(["oy", "fo", "le", "bi", "de", "en", "op", "fl", "ns"])
    print(letters)
    answertime = True
    Start = False

if answertime == True:
    seconds = t.time()
    Word = input("What is the word?")
    while letters not in Word:
        print("Try again")
        Word = input("What is the word?")

    if letters in Word:
        print("Correct, next person.")
        Start = False
        print('3')
        t.sleep(1)
        print('2')
        t.sleep(1)
        print('1')
        t.sleep(1)
        Start = True
        letters = r.choice(["oy", "fo", "le", "bi", "de", "en", "op", "fl", "ns"])
        print(letters)
        answertime = True
        Start = False

    if t.time() - seconds > 10:
        answertime == False
        print("No more time")
    
    

    
