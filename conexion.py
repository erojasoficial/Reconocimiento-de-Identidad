#!/usr/bin/python
import MySQLdb

db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="",  # your password
                     db="criminales")        # name of the data base

# you must create a Cursor object. It will let
#  you execute all the queries you need
cursor = db.cursor()

# Execute SQL select statement
#cursor.execute("SELECT * FROM personas")

#print(cursor.fetchall())

# Close the connection
#db.close()

query = ("SELECT MAX(id) as idx FROM personas")

cursor.execute(query)

profile=None
for row in cursor:
	profile=row
cursor.close

print(profile[0])