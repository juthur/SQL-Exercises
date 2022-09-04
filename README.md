# SQL-Exercises  

**Goal :** Test SQL skills with some exercises created by Mathis Hammel  
**Link :** https://app.coderpad.io/sandbox?question_id=225822&utm_campaign=Tiny+Interviews&utm_source=twitter&utm_medium=mathishammel   
**Technology used :** MySQL  

### Database schema :  
DESCRIBE players;  
+----------+--------------+------+-----+---------+-------+  
| Field | Type | Null | Key | Default | Extra |  
+----------+--------------+------+-----+---------+-------+  
| user_id | int | NO | PRI | NULL | |  
| nickname | varchar(128) | YES | | NULL | |  
| birth | date | YES | | NULL | |  
+----------+--------------+------+-----+---------+-------+  

DESCRIBE problems;  
+------------+--------------+------+-----+---------+-------+  
| Field | Type | Null | Key | Default | Extra |  
+------------+--------------+------+-----+---------+-------+  
| problem_id | int | NO | PRI | NULL | |  
| difficulty | varchar(128) | YES | | NULL | |  
+------------+--------------+------+-----+---------+-------+  

DESCRIBE submissions;  
+------------+--------------+------+-----+---------+-------+  
| Field | Type | Null | Key | Default | Extra |  
+------------+--------------+------+-----+---------+-------+  
| user_id | int | YES | | NULL | |  
| problem_id | int | YES | | NULL | |  
| score | int | YES | | NULL | |  
| language | varchar(128) | YES | | NULL | |  
+------------+--------------+------+-----+---------+-------+  

