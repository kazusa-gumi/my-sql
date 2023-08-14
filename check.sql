/* List all the details of all vehicles from the vehicle table. */
SELECT * FROM m_vehicle;

/* List all the details of all white vehicles from the vehicle table */
SELECT * FROM m_vehicle WHERE color = 'white';

/* List the Registration number, Purchase Date, and Location of every white vehicle that has a
manual transmission. */
SELECT `Rego_no`, `Purchased`, `Location` FROM `m_vehicle` WHERE 1;

/* List the Registration Number, Branch Code, and Location of vehicles that have a registration
number starting with the letter ‘O’ */
SELECT `Rego_no`,`Branch_Code`,`Location` 
FROM `m_vehicle` WHERE `Rego_no`
/* ワイルドカード LIKE ''を使用する。 */ 
LIKE 'O%';

/* List the First Name, Last Name, and Customer Id (in that order) of all Customers */
SELECT `First_name`, `Last_name`, `Cust_id` FROM `m_customer`;

/* List all the details from the Fees table for vehicles where the hire rate is over $55.00 per day. */
SELECT * FROM `m_fees` WHERE `Daily_rate` > 55.00;

/* List the Vehicle type, Effective Date, and the Daily hire rate plus an additional 10% (heading to be
‘New_Rate’) for all rows in the Fees table */
SELECT `Vehicle_type`, `Effective_date`, `Daily_rate` * 1.10 AS 'New_Rate' FROM `m_fees`;
