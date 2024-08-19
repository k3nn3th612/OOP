import keyboard as k
import csv
import pandas as p
import pyautogui as pgui
import pyperclip as pclip
import time as t
import smtplib as smp

c = None
getInformation = True
printInformation = True
index_loop = False
i = 0
menu = True
yesmenu = True

names = []
grades = []
dates = []
objects = []
duration = []



class Person:
    def __init__(info, name, grade, date_checkout, object_checkout, duration):
        info.name = name
        info.grade = grade
        info.date_checkout = date_checkout
        info.object_checkout = object_checkout
        info.duration = duration

people = []

def enter_data():
    p = Person(input('Name:'), input('Grade:'), input('Checkout Date:'), input('Checkout Object:'), input('Duration of Checkout:'))
    people.append(p)
    with open('data_records.csv', 'a', newline = '') as f1:
        c = csv.writer(f1)
        if f1.tell() == 0:
            c.writerow(['Name', 'Grade', 'Checkout Date', 'Checkout Object', 'Duration'])
        if c:
            c.writerow([p.name, p.grade, p.date_checkout, p.object_checkout, p.duration])
    

def delete():
    with open('data_records.csv', 'r') as f1:
        dr = p.read_csv(f1)
        print(dr)
        pdel = input('Person you want to remove: ')
    with open('data_records.csv', 'w') as f1:
        dr = dr.drop(dr[dr.Name == pdel].index)
        dr.to_csv(f1, index = False)

def email():
    with open('data_records.csv', 'r') as f1:
        dr = p.read_csv(f1)
        print(dr)
        pcopy = input('Person you want to email: ')
        pclip.copy(pcopy)
        pgui.moveTo(748, 1046)
        pgui.click()
        t.sleep(2)
        pgui.write('Google Chrome')
        t.sleep(2)
        pgui.press('enter')
        t.sleep(2)
        pgui.moveTo(606, 102)
        pgui.click()
        pgui.write('gmail.com')
        pgui.press('enter')
        t.sleep(5)
        pgui.moveTo(229, 324)
        pgui.click()
        t.sleep(4)
        pgui.moveTo(1338, 426)
        pgui.click()
        pgui.hotkey('ctrl', 'v')

def backup_original():
    print('Transferring data...')
    with open('backup.csv', 'w') as b:
        with open('data_records.csv', 'r') as f1:
            nb = 1

            cr = csv.reader(f1)
            rows = list(cr)
            
            c = csv.writer(b)
            if b.tell() == 0:
                c.writerow(['Name', 'Grade', 'Checkout Date', 'Checkout Object', 'Duration'])
            for row in rows[nb:]:
                c.writerow(row)
            print('Please check your file list for the CSV backup.')

while yesmenu == True:
    if menu == True:
        print('What do you want to do?')
        print('Enter new data [Press 1]')
        print('Delete data [Press 2]')
        print('Email someone [Press 3]')
        print('Create a backup [Press 4]')
        print('Email 2 someone [Press 5]')
        menu = False

    i = k.read_key()

    if i == '1':
        enter_data()
        menu = True
    elif i == '2':
        delete()
        menu = True
    elif i == '3':
        email()
        menu = True
    elif i == '4':
        backup_original()
        menu = True
    elif i == '5':
        menu = True

    t.sleep(0.5)