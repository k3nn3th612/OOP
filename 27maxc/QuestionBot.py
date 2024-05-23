import pyautogui as pgui
import time as t
import keyboard as k


if k.is_pressed('2'):
    Question = input('What is your question?')
    pgui.moveTo(1196, 1032)
    pgui.click()
    t.sleep(4)
    pgui.hotkey('ctrl', 't')
    pgui.moveTo(395, 92)
    pgui.click()
    pgui.write(Question)
    pgui.press('enter')

while True:
    while k.is_pressed('1'):
        print("hello")
        pgui.keyDown('volumeup')

    




