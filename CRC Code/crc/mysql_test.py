#!/usr/bin/python
# -*- coding: UTF-8 -*-

import mysql_connection

if __name__ == '__main__':
    db = mysql_connection.get_connection()
    cursor = db.cursor()
    sql = " SELECT * FROM account limit 2 "
    try:
        cursor.execute(sql);
        results = cursor.fetchall()
        for row in results:
            id = row[0]
            username = row[1]
            pwd = row[2]

            print ("id=%s,username=%s,pwd=%s" % \
                   (id, username, pwd))
    except:
        print ("Error: unable to fetch data")

    db.close()
