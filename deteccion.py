# -*- coding: cp1252 -*-
# -*- coding: 850 -*-
# -*- coding: utf-8 -*-
import cv2
import numpy as np
import MySQLdb



faceDetect=cv2.CascadeClassifier('haarcascade_frontalface_default.xml');
cam=cv2.VideoCapture(0);
rec=cv2.face.LBPHFaceRecognizer_create();
rec.read("recognizer\\trainingData.yml")
fontface = cv2.FONT_HERSHEY_TRIPLEX
fontscale = 0.5
fontcolor = (255,0,0)


def getProfile(id):
	db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="",  # your password
                     db="criminales")
	cur = db.cursor()
	cur.execute('SELECT * FROM personas WHERE id={}'.format(id))
	profile=None
	for row in cur:
		profile=row
	cur.close
	return profile

while (True):
	ret, img=cam.read();
	gray=cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
	faces=faceDetect.detectMultiScale(gray,1.3,5);
	for (x,y,w,h) in faces:
		cv2.rectangle(img, (x,y),(x+y,y+h),(0,0,255),2)
		id,conf=rec.predict(gray[y:y+h,x:x+w])
		profile=getProfile(id)
		if conf<=50:
			nombre=profile[1]
			delito=profile[2]
			recompensa = profile[3]
			#cv2.putText(img, "Genero: "+str(profile[3]), (x,y+h+150), fontface, fontscale, fontcolor);
		else:
			nombre="desconocido"
			delito="desconocido"
			recompensa="desconocida"
			
		if (profile!=None):
				cv2.putText(img, str(nombre), (x,y+h+30), fontface, fontscale, fontcolor);
				cv2.putText(img, "Delito: "+str(delito), (x,y+h+60), fontface, fontscale, fontcolor);
				cv2.putText(img, "recompensa: "+str(recompensa), (x,y+h+90), fontface, fontscale, fontcolor);	
			
	cv2.imshow("Face",img);
	if (cv2.waitKey(1)==ord('q')):
		break;

cam.release()
cv2.destroyAllWindows()			