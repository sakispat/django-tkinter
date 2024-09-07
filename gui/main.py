import tkinter as tk
import requests


# Function to fetch data from the Django server
def fetch_data():
    response = requests.get('http://127.0.0.1:8000/')
    label.config(text=response.text)
    

# Create a Tkinter window
root = tk.Tk()
root.title('Django Tkinter App')

label = tk.Label(root, text='Press the button to fetch data from Django')
label.pack(pady=10)

button = tk.Button(root, text='Fetch Data', command=fetch_data)
button.pack(pady=10)

root.mainloop()
