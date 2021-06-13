import mysql.connector
from mysql.connector.errors import DatabaseError

password = ""

with open("pass.txt") as txt:
    password = txt.read()

mydb = mysql.connector.connect(
    host="localhost", 
    user="root", 
    passwd=password,
    database="students"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM students")


for i in mycursor:
    print(i)

'''
results = mycursor.fetchall()

for i in results:
    print(i)

results = mycursor.fetchone()

print(results)
'''