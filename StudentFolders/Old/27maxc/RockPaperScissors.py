import time as t;
import random as r;

AIhand = r.randint(1, 4)
USERhand = input("What is your hand?")

t.sleep(1)
print("3")
t.sleep(1)
print("2")
t.sleep(1)
print("1")

print(USERhand)

if AIhand == 1:
    print("Rock")
if AIhand == 2:
    print("Paper")
if AIhand == 3:
    print("Scissors")
if AIhand == 4:
    print("doom stephen")
 