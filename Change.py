import os


directory = input("Enter the directory path where your files are located: ")


os.chdir(directory)


files = os.listdir()


counter = 1


max_digits = len(str(len(files)))


for file_name in files:
    
    if os.path.isfile(file_name):
        
        file_name_parts = os.path.splitext(file_name)
        
        new_name = '{}{}'.format(counter, file_name_parts[1])
        
        os.rename(file_name, new_name)
        
        counter += 1

print("Successfully")
