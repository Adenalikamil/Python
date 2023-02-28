import psycopg2
con=psycopg2.connect(host="aden",database="bank_accounts",user="myuser",password="123")

#cursor
cur=con.cursor()
cur.execute('CREATE TABLE notes(id integer PRIMARY KEY, body text, title text);')

#close the connection
con.close()

