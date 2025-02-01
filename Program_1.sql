/*Database Creation, Deletion and Updation in SQL*/

CREATE DATABASE myDB;	/*Create New Database*/

SHOW DATABASES;		/*Displays all Databases*/

USE myDB;	/*Use Created Database*/

DROP DATABASE myDB;		/*Delete Database*/

ALTER DATABASE myDB READ ONLY=1;	/*Alter Database to Read Mode You can't modify or delete database*/

ALTER DATABASE myDB READ ONLY=0;	/*Alter Database to Read and Write Mode You can modify or delete database*/