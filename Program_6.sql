/*Commit, Autocommit, Rollback in SQL*/

SET AUTOCOMMIT = OFF;		/*Now changes will not save automatically Default value of autocommit is ON*/

ROLLBACK;		/*Undo Transaction or changes on a table if autocommit is off*/

COMMIT;		/*Manual option to save transactions or changes*/