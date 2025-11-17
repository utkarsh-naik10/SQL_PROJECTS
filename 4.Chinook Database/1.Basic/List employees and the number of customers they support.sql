/*
List employees and the number of customers they support
*/

SELECT
    Employee.EmployeeId AS Emp_Id,
    CONCAT(Employee.FirstName,' ',Employee.LastName) AS Full_Name,
    COUNT(Customer.SupportRepId) AS Num_Of_Cust_handled    
FROM Employee 
LEFT JOIN Customer ON Employee.EmployeeId=Customer.SupportRepId
GROUP BY Full_Name,Emp_Id
HAVING COUNT(Customer.SupportRepId)>0
