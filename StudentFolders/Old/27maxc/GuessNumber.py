import random as r 
stop = False
num = r.randint(1, 100)

while stop == False:
   
    guess = int(input('What is your guess?'))

    if guess == num:
        print('You won.')
        stop = True
    else:
        if guess > num:
            print('Lower')
        if guess < num:
            print('Higher')




