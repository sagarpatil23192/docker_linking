!/usr/bin/python

import MySQLdb

# Open database connection
db = MySQLdb.connect("db","root","root","<DB_name>" )

# prepare a cursor object using cursor() method
cursor = db.cursor()

sql = "SELECT * FROM <DB_table>"
try:
   # Execute the SQL command
   cursor.execute(sql)
   # Fetch all the rows in a list of lists.
   results = cursor.fetchall()
   for row in results:
      fname = row[2]
      # Now print fetched result
      print "fname=%s" % \
             (fname)
except:
   print "Error: unable to fecth data"

# disconnect from server
db.close()
