65	Average Amount of Shillings Sent by All People	7	SELECT AVG(shillings) FROM bank_txns_2018;	Find the average number of shillings sent by all people.	bank_txns_2018	1em
66	Average TSH Sent by Anitha or Hosiana	7	SELECT AVG(shillings) FROM bank_txns_2018\r\nWHERE sender = 'Anitha' or sender = 'Hosiana';	Find the average number of shillings sent by Anitha and Hosiana.	bank_txns_2018	1em
67	Average TSH Sent from an ATM	7	SELECT AVG(shillings) FROM bank_txns_2018\r\nWHERE method = 'MPESA';	Find the average number of shillings sent from an ATM.	bank_txns_2018	1em
68	Average TSH and Number of Txns Sent from Arusha	7	SELECT AVG(shillings), COUNT(*)\r\nFROM bank_txns_2018\r\nWHERE location = 'Arusha';	Display <b>both</b> the average shillings <b>and</b> count the number of transactions sent from Arusha.	bank_txns_2018	1em
69	Sum of TSH Sent by All People	7	SELECT SUM(shillings)\r\nFROM bank_txns_2018;	Find the <b>total</b> number of shillings sent by all people.	bank_txns_2018	1em
70	Sum of TSH Received by Christiner	7	SELECT SUM(shillings)\r\nFROM bank_txns_2018\r\nWHERE recipient = 'Christiner';	Find the total number of shillings Christiner received.	bank_txns_2018	1em
71	Sum of TSH Sent in Three Txns	7	SELECT SUM(shillings)\r\nFROM bank_txns_2018\r\nWHERE txnid = 8435539 OR txnid = 8435807 OR txnid = 8435576;	Find the total number of shillings sent by the transactions with the following IDs:\r\n<ul>\r\n<li>8435539</li>\r\n<li>8435807</li>\r\n<li>8435576</li>\r\n</ul>	bank_txns_2018	1em
72	Average TSH Sent In January	8	SELECT AVG(shillings)\r\nFROM bank_txns_2018\r\nWHERE datetime_sent < '2018-02-01';	Find the average amount of shillings sent by all people in the month of January.	bank_txns_2018	1em
73	Total TSH Sent in January	8	SELECT SUM(shillings) FROM bank_txns_2018\r\nWHERE datetime_sent < '2018-02-01';	Find the total number of shillings sent by everyone in the month of January.	bank_txns_2018	1em
