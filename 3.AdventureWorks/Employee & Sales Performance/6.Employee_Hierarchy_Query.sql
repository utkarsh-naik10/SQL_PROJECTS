
/*Employee Hierarchy Query:
display a manager → employee hierarchical relationships within the Sales department.*/

SELECT
    DENSE_RANK () OVER (ORDER BY hre.OrganizationLevel) AS rank,
    hre.JobTitle,
    CONCAT(pp.FirstName,' ',pp.LastName) AS full_name
FROM HumanResources.Employee AS hre
JOIN HumanResources.EmployeeDepartmentHistory AS hedh
    ON hre.BusinessEntityID=hedh.BusinessEntityID
JOIN HumanResources.Department AS hrd 
    ON hedh.DepartmentID=hrd.DepartmentID
JOIN Person.Person AS pp 
    ON pp.BusinessEntityID=hre.BusinessEntityID
WHERE hrd.Name = 'Sales' 