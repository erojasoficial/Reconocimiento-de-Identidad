import cv2
import numpy as np
import MySQLdb



def detect(path, Idx):
    img = cv2.imread(path)
    # Pasamos la ruta del XML
    cascade = cv2.CascadeClassifier("haarcascade_frontalface_default.xml")
    gray=cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    rects=cascade.detectMultiScale(gray,1.3,4);
    

    if len(rects) == 0:
        box([], gray, img, Idx)
    rects[1:, 2:] += rects[:1, :2]
    box(rects, gray, img, Idx)
  
def box(rects, gray, img, Idx): 
    sampleNumber=0 
    for sampleNumber in range(0,101):
        for x,y,w,h in rects:
            sampleNumber=sampleNumber+1;
            cv2.imwrite("dataSet/User."+str(Idx)+"."+str(sampleNumber)+".jpg",gray[y:y+h,x:x+w])
            cv2.rectangle(img, (x,y),(x+y,y+h),(0,0,255),2)
            cv2.waitKey(100);
    # Ruta donde guardaremos la imagen con la deteccion de rostros

db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="",  # your password
                     db="criminales")

cursor = db.cursor()
query = ("SELECT MAX(id) as idx FROM personas")

cursor.execute(query)

profile=None
for row in cursor:
    profile=row
cursor.close
 
# Pasamos la imagen que quremos detectar
idx=str(profile[0])
img = detect("modelos\\"+str(profile[0])+".jpg",idx)
