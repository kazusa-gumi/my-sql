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


/* exercise02 */
/* List all the details from the vehicle table for vehicles that have a Vehicle Type of ‘M1’ or
where the vehicle is based in Hobart. */
SELECT * FROM `m_vehicle` WHERE `Vehicle_Type` = "M1" OR `Location`= "Hobart";

/* List the Registration Number, Vehicle Type, Color and Location of all vehicles which have
registration numbers not starting with the letter “O” */
SELECT `Rego_no`, `Vehicle_Type`, `Color`, `Location` FROM `m_vehicle` WHERE `Rego_no` LIKE 'O%';

/* Develop two queries that use different methods of selecting all details associated with
“Ford” and “Holden” vehicles from the Type table */
SELECT `Make`, `Model` FROM `m_type` WHERE `Make` = 'Ford' OR `Model` = 'Holden';

/* Display the Vehicle Type, Make, Model, and Engine Capacity of vehicles with an engine
capacity of between 2600 and 3800 */

SELECT `Vehicle_type`, `Make`, `Model`, `Engine_cap` 
FROM `m_type` 
WHERE `Engine_cap` 
/* 間の数値を出すときはBETWEEN  */
BETWEEN 2600 AND 3800;

/* Display the Rental Number, Customer Id, Registration Number, Start and Return dates of
all vehicle rentals. Sorted the output by Registration Number. */

/* List the Payment No, Payment Date, Payment Type and Amount for all payments paid by
Credit Card where the amount exceeds $400 or where the payment number is between
1020 and 1030. */
