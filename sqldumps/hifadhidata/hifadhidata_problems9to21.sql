74	Add 1 Book To the Vitabu Table	9	-- These are applied against ONLY the solution table\r\n\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);	Add the following books to the vitabu table:\r\n<ul>\r\n  <li><i>Damu na Machozi</i>: 30 copies available at Kase. Its ID is 2.</li>\r\n</ul>	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);
75	Books with 15 Copies or Less Available	10	SELECT id, title FROM vitabu$STUDENTID$ WHERE available_copies <= 15;	Display the ID and title of all books with 15 or less copies available.	vitabu$STUDENTID$	1em	f		
81	Books with 50 Copies Available at Book Point	16	SELECT title FROM vitabu$STUDENTID$ WHERE available_copies = 50 and store = 'Book Point';	Display <b>only the title</b> of all books available at Book Point with exactly 50 copies available.	vitabu$STUDENTID$	1em	f		
76	Add 2 Books To the Vitabu Table	11	-- These are applied against ONLY the solution table\r\n\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (3, 'Kifo ni Haki Yangu', 'Kase', 18);\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (4, 'Vuta Nkuvute', 'Book Point', 44);	Add the following books to the vitabu table:\r\n<ul>\r\n  <li><i>Kifo ni Haki Yangu</i>: 18 copies available at Kase. Its ID is 3.</li>\r\n  <li><i>Vuta Nkuvute</i>: 44 copies available at Book Point. Its ID is 4.</li>\r\n</ul>	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);
77	Books Available At Book Point	12	SELECT id, title FROM vitabu$STUDENTID$ WHERE store = 'Book Point';	Display the ID and title of all books available at Book Point.	vitabu$STUDENTID$	1em	f		
78	Add 3 Books to the Vitabu Table	13	-- These are applied against ONLY the solution table\r\n\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (5, 'Mifupa 206', 'Book Point', 50);\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (6, 'Ufukwe wa Madagascar', 'Kase', 23);\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (7, 'Tai Kwenye Mzoga', 'Kase', 17);	Add the following books to the vitabu table:\r\n<ul>\r\n  <li><i>Mifupa 206</i>: 50 copies available at Book Point. Its ID is 5.</li>\r\n  <li><i>Ufukwe wa Madagascar</i>: 23 copies available at Kase. Its ID is 6.</li>\r\n  <li><i>Tai Kwenye Mzoga</i>: 17 copies available at Kase. Its ID is 7.</li>\r\n</ul>	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (3, 'Kifo ni Haki Yangu', 'Kase', 18);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (4, 'Vuta Nkuvute', 'Book Point', 44);
79	Books with Between 10 to 30 Copies Available	14	SELECT title, available_copies FROM vitabu$STUDENTID$ WHERE available_copies BETWEEN 10 and 30;	Display the title <b>and</b> available copies of all books that have between 10 to 30 copies available.	vitabu$STUDENTID$	1em	f		
82	Delete Book with ID 5	17	-- These are applied against ONLY the solution table\r\n\r\nDELETE FROM vitabu$STUDENTID$_solution WHERE id = 5;	Delete the book with an ID of 2.	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (3, 'Kifo ni Haki Yangu', 'Kase', 18);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (4, 'Vuta Nkuvute', 'Book Point', 44);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (5, 'Mifupa 206', 'Book Point', 50);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (6, 'Ufukwe wa Madagascar', 'Kase', 23);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (7, 'Tai Kwenye Mzoga', 'Kase', 17);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (8, 'Vipande Vya Maisha Vilivyopotea', 'Book Point', 45);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (9, 'Endless Love', 'Book Point', 80);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (10, 'Kolonia Santita', 'Kase', 12);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (11, 'Osale Otango', 'Book Point', 50);
80	Add 4 Books to the Vitabu Table	15	-- These are applied against ONLY the solution table\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (8, 'Vipande Vya Maisha Vilivyopotea', 'Book Point', 45);\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (9, 'Endless Love', 'Book Point', 80);\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (10, 'Kolonia Santita', 'Kase', 12);\r\nINSERT INTO vitabu$STUDENTID$_solution (id, title, store, available_copies)\r\nVALUES (11, 'Osale Otango', 'Book Point', 50);	Add the following books to the vitabu table:\r\n<ul>\r\n  <li><i>Vipande Vya Maisha Vilivyopotea</i>: 45 copies available at Book Point. Its ID is 8</li>\r\n  <li><i>Endless Love</i>: 80 copies available at Book Point. Its ID is 9.</li>\r\n  <li><i>Kolonia Santita</i>: 12 copies available at Kase. Its ID is 10.</li>\r\n  <li><i>Osale Otango</i>: 50 copies available at Book Point. Its ID is 11.</li>\r\n</ul>	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (3, 'Kifo ni Haki Yangu', 'Kase', 18);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (4, 'Vuta Nkuvute', 'Book Point', 44);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (5, 'Mifupa 206', 'Book Point', 50);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (6, 'Ufukwe wa Madagascar', 'Kase', 23);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (7, 'Tai Kwenye Mzoga', 'Kase', 17);
83	Delete Books with IDs 3 and 10	18	-- These are applied against ONLY the solution table\r\n\r\nDELETE FROM vitabu$STUDENTID$_solution WHERE id = 3 or id = 10;	Delete the books with IDs 3 and 10.	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (3, 'Kifo ni Haki Yangu', 'Kase', 18);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (4, 'Vuta Nkuvute', 'Book Point', 44);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (6, 'Ufukwe wa Madagascar', 'Kase', 23);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (7, 'Tai Kwenye Mzoga', 'Kase', 17);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (8, 'Vipande Vya Maisha Vilivyopotea', 'Book Point', 45);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (9, 'Endless Love', 'Book Point', 80);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (10, 'Kolonia Santita', 'Kase', 12);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (11, 'Osale Otango', 'Book Point', 50);
84	Delete Books with More than 70 Copies Available	19	-- These are applied against ONLY the solution table\r\n\r\nDELETE FROM vitabu$STUDENTID$_solution WHERE available_copies > 70;	Delete all books with more than 70 copies available.	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (4, 'Vuta Nkuvute', 'Book Point', 44);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (6, 'Ufukwe wa Madagascar', 'Kase', 23);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (7, 'Tai Kwenye Mzoga', 'Kase', 17);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (8, 'Vipande Vya Maisha Vilivyopotea', 'Book Point', 45);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (9, 'Endless Love', 'Book Point', 80);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (11, 'Osale Otango', 'Book Point', 50);
85	Delete All Books Available at Book Point	20	-- These are applied against ONLY the solution table\r\n\r\nDELETE FROM vitabu$STUDENTID$_solution WHERE store = 'Book Point';	Delete all books that are available at Book Point.	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (4, 'Vuta Nkuvute', 'Book Point', 44);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (6, 'Ufukwe wa Madagascar', 'Kase', 23);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (7, 'Tai Kwenye Mzoga', 'Kase', 17);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (8, 'Vipande Vya Maisha Vilivyopotea', 'Book Point', 45);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (11, 'Osale Otango', 'Book Point', 50);
86	Delete All Books From The Vitabu Table	21	-- These are applied against ONLY the solution table\r\n\r\nDELETE FROM vitabu$STUDENTID$_solution;	Delete all books from the vitabu table.	vitabu$STUDENTID$, vitabu$STUDENTID$_solution	1em	t	-- These are created for BOTH the student's table AND the solution table\r\n\r\nCREATE TABLE vitabu$STUDENTID$ (\r\n  id integer PRIMARY KEY,\r\n  title varchar(200),\r\n  store varchar(100),\r\n  available_copies integer\r\n);	-- These are applied against BOTH the student's table AND the solution table\r\n\r\nTRUNCATE TABLE vitabu$STUDENTID$;\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (1, 'Rais Anampenda Mke Wangu', 'Kase', 14);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (2, 'Damu na Machozi', 'Kase', 30);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (6, 'Ufukwe wa Madagascar', 'Kase', 23);\r\nINSERT INTO vitabu$STUDENTID$ (id, title, store, available_copies)\r\nVALUES (7, 'Tai Kwenye Mzoga', 'Kase', 17);
