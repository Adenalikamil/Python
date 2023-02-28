# Utiliser Python avec SQLite

import sqlite3
connexion=sqlite3.connect("factbook.db")
with connexion:
    c=connexion.cursor()
    c.execute("select * from facts  order by population asc limit 10;")
    print(c.fetchall())
connexion.commit()