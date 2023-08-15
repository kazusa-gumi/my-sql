/* List the Customer Id, First_Name, Last_Name of all customers who rented vehicles with a
Registration Number starting with “G” and include the registration numbers of the
vehicles they were allocated. Use table aliases in the query. Sort the output in
ascending order by registration Number. */
SELECT c.`Cust_id`, c.`First_name`, c.`Last_name`, r.`Rego_no` 
FROM `m_customer` AS c JOIN m_rental AS r ON c.Cust_id = r.Cust_id 
WHERE r.`Rego_no` LIKE 'G%' 
ORDER BY r.Rental_no ASC;