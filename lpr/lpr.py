#coding=utf-8
import os
import sys
import datetime
import codecs

#*****************************************************************************************
#need set
path='/root/lpr/'
#*****************************************************************************************

def LPR(path):
	
	filelist=os.listdir(path)
	#remove not ".jpg" In order to sort
	listName=[]
	for files in filelist:
		if os.path.splitext(files)[1]=='.jpg':
			listName.append(files)
			
	listName.sort()
	#print(listName)
	return  listName

start=datetime.datetime.now()
#print(sys.getdefaultencoding())
#print(sys.stdout.encoding)
listname=LPR(path)
#import hyperlpr
from hyperlpr import *
#import opencv lib
import cv2
#read image
resultPath=path+"pythonresult.txt"
#result=open(resultPath,"w+")
result=codecs.open(resultPath, 'w+', 'utf-8')

for files in listname:
	#print(path+files)
	image = cv2.imread(path+files)
	list = HyperLPR_plate_recognition(image)
	
	result.write(str(list))
	result.write("\n")
	
	end=datetime.datetime.now()
	print(end-start)
	
	#p,f=os.path.split(files)
	#print(p)
	#print(f)
	#print(list)
	#print("\n")
result.close
end=datetime.datetime.now()
print(end-start)

