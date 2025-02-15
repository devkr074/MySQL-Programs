/*Roll Up in SQL*/

/*Roll Up is used to add new roll with total of aggregate function also known as super-aggregate value.*/

SELECT SUM(amount), order_date FROM transactions GROUP BY order_date WITH ROLLUP;