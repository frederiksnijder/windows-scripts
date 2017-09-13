from glob import glob
from os import remove

# Create a list of file
file_list = glob('D:\\path\\to\\folder\\*char.ext')

print(file_list)

# remove items in list
for i in file_list:
	remove(i)