import mysql.connector
from mysql.connector.errors import DatabaseError

password = ""

with open("pass.txt") as txt:
    password = txt.readline()

mydb = mysql.connector.connect(
    host="localhost", 
    user="root", 
    passwd=password,
    database="record_company"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM albums")

'''
for i in mycursor:
    print(i)
'''

results = mycursor.fetchall()

for i in results:
    print(i)

for i in results:
    print(f"{i[0]:{10}}  {i[1]:{30}}  {i[2]:{10}}  {i[3]:{10}}")

'''
results = mycursor.fetchone()

print(results)
'''

mydb.close()