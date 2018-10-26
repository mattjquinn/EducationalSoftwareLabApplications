173	Orders Below 100k TSH	70	SELECT orders.id, orders.amount, wateja.name\r\nFROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE amount <= 100000\r\nORDER BY amount DESC;	Display the id of each order, the amount of the order, and the name of the person who placed it for <b>only those orders with amounts of 100,000 shillings or less</b>. Order them by highest to lowest amount of shillings.	wateja, orders	1em	f		
161	Join Wateja with Orders	62	SELECT * FROM wateja\r\nJOIN orders\r\nON wateja.id = orders.customer_id;	Join the <code>wateja</code> table to the <code>orders</code> table. You should select all columns. The columns from the <code>wateja</code> table must be on the <b>left</b>, and the columns from the <code>orders</code> table must be on the <b>right</b>.	wateja, orders	1em	f		
162	Join Orders with Wateja	62	SELECT * FROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id;	Join the <code>orders</code> table to the <code>wateja</code> table. You should select all columns. The columns from the <code>orders</code> table must be on the <b>left</b>, and the columns from the <code>wateja</code> table must be on the <b>right</b>.	wateja, orders	1em	f		
163	Count Fred's Orders	63	SELECT COUNT(*) FROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE name = 'Fred';	Count the number of orders placed by Fred.	wateja, orders	1em	f		
164	Count Hosiana's Orders	63	SELECT COUNT(*) FROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE name = 'Hosiana';	Count the number of orders placed by Hosiana.	wateja, orders	1em	f		
165	Total Amount Spent By Endesh	64	SELECT SUM(amount) FROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE name = 'Endesh';	Find the total amount of shillings Endesh spent on all of her orders.	wateja, orders	1em	f		
166	Total Amount Spent By Aubrien	64	SELECT SUM(amount) FROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE name = 'Aubrien';	Find the total amount of shillings Aubrien spent on all of his orders.	wateja, orders	1em	f		
167	Email Address of April 25th Order	65	SELECT email FROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE date = '04-25-2018';	Display the email address of the mteja who placed an order on April 25th, 2018.	wateja, orders	1em	f		
168	Street Address of 90,000 TSH Order	66	SELECT address FROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE amount = 90000;	Display the street address of the person who spent 90,000 TSH on his/her order.	wateja, orders	1em	f		
169	Count Orders Placed Before August 15	67	SELECT COUNT(*) FROM orders WHERE date < '08-15-2018';	Count the number of orders placed <b>before</b> August 15th, 2018.	wateja, orders	1em	f		
170	Total Value of All Orders Placed	68	SELECT SUM(amount) FROM orders;	Find the total amount of shillings spent on all orders.	wateja, orders	1em	f		
174	Average Shillings Spent on Arusha Orders	71	SELECT AVG(amount)\r\nFROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE city = 'Arusha';	Find the average amount of shillings spent on orders placed <b>in Arusha</b>.	wateja, orders	1em	f		
172	Ordered Orders	69	SELECT orders.id, orders.date, wateja.name\r\nFROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nORDER BY date ASC;	Display the id of each order, the date the order was placed, and the name of the person who placed it. Order them by oldest to most recent date.	wateja, orders	1em	f		
175	Lowest Amount of Shillings After June 1st in Karatu	72	SELECT MIN(amount)\r\nFROM orders\r\nJOIN wateja\r\nON wateja.id = orders.customer_id\r\nWHERE date > '06-01-2018' and city = 'Karatu';	Find the lowest amount of shillings spent on an order placed <b>after June 1st, 2018 in Karatu.</b>	wateja, orders	1em	f		
