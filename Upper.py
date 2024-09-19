import os


directory = input("Enter the directory path where your folders are located: ")


os.chdir(directory)


files = os.listdir()


for item in files:
    
    item_path = os.path.join(directory, item)
    
    
    if os.path.isdir(item_path):
        
        new_name = item.upper()
        
        
        new_path = os.path.join(directory, new_name)
        
        
        os.rename(item_path, new_path)

print("All folder names have been updated to uppercase.")

