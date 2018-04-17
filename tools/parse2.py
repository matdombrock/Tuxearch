import MySQLdb

db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="6c496c5501d5cc6c641168a7e6b829279c4d809b89ccc0b4",  # your password
                     db="cli")        # name of the data base

# you must create a Cursor object. It will let
#  you execute all the queries you need
cursor = db.cursor()

cursor.execute("""CREATE TABLE commands(
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
   INFO           TEXT      NOT NULL,
   COMMAND            TEXT       NOT NULL,
   TAGS        TEXT
);""")
#connection.commit()

with open("cmd.txt") as f:
	content = f.readlines()
	#content = [x.strip() for x in content] 
index = "none"
data = ["none","none","none"]
for line in content:
		if line[0] == "#":
			print("#")
			continue
		if(line == "\n" or line == " "):
			index = "new"
		elif index == "new":
			index = "info"		
		elif index == "info":
			index = "command"
		elif index == "command":
			index = "tags"
		line = line.strip()
		#print(index+": "+line)
		#print(index)
		
		if index == "info":
			data[0] = line
		if index == "command":
			data[1] = line
		if index == "tags":
			data[2] = line
		if index == "new":
			#print(data[0])
			#print(data[1])
			#print(data[2])
			cursor.execute("""INSERT INTO commands
				VALUES (NULL,%s,%s,%s)""", (data[0],data[1],data[2]))
		#connection.commit()
#connection.close()


# Use all the SQL you like
cursor.execute("SELECT * FROM commands")

# print all the first cell of all the rows
print("OKAY")
for row in cursor.fetchall():
    print(row[1])
db.commit()
db.close()
