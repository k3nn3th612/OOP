import speech_recognition as sr
import time as t
import pyautogui as pgui
import pyperclip as pclip
import setuptools as stt

start_time = t.time()
text_write = False

UserVoiceRecognizer = sr.Recognizer()
while t.time() - start_time < 5:
    try:
        with sr.Microphone() as UserVoiceInputSource:
            UserVoiceRecognizer.adjust_for_ambient_noise(UserVoiceInputSource, duration = 1)
            UserVoiceInput = UserVoiceRecognizer.listen(UserVoiceInputSource)

            UserVoiceInput_converted_to_Text = UserVoiceRecognizer.recognize_google(UserVoiceInput)
            UserVoiceInput_converted_to_Text = UserVoiceInput_converted_to_Text.lower()
            print(UserVoiceInput_converted_to_Text)


    except KeyboardInterrupt:
        print('A Keyboard Interrupt has occurred; terminating the program immediately.')
        exit(0)

    except sr.UnknownValueError:
        print('No user voice detected / unintelligible noises detected / unable to transfer recognized audio to text.')

if t.time() - start_time > 5:
    text_write = True

if text_write == True:    
    pgui.moveTo(785, 1046)
    pgui.click()
    t.sleep(2)
    pgui.write('Google Chrome')
    t.sleep(2)
    pgui.press('enter')
    t.sleep(2)
    pgui.moveTo(359, 91)
    pgui.click()
    pgui.write(UserVoiceInput_converted_to_Text)
    pgui.press('enter')


