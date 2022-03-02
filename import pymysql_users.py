import pymysql
import csv
db = pymysql.connect(host='localhost',
                             user='root',
                             password='test123',
                             database='sys',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
cursor = db.cursor()
csv_data = csv.reader(open('C:\\Users\\psiadmin\\Desktop\\users_list.csv'))
next(csv_data)
for row in csv_data:
    cursor.execute('INSERT INTO users_list(name,email,role,org) VALUES(%s,%s,%s,%s)',row)
db.commit()
cursor.close()
