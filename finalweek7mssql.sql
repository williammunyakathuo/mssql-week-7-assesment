--question one
--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

The STATION table is described as follows:

SELECT COUNT(*) - COUNT(DISTINCT CITY) AS Difference
FROM CITY;


--question two 
--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
-- Your result cannot contain duplicates

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiouAEIOU].*[^aeiouAEIOU]$';

--question three
--Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students
-- both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.


SELECT Name
FROM STUDENTS
WHERE Marks > specified_marks_value
ORDER BY RIGHT(Name, 3), ID ASC;


--question four
--Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 200 per month who have been employees for less than 10 months. 
--Sort your result by ascending employee_id.

SELECT name
FROM Employee
WHERE salary > 200 AND DATEDIFF(CURDATE(), join_date) < 300
ORDER BY employee_id ASC;


--question five
--Query all columns (attributes) for every row in the CITY table.


SELECT *
FROM CITY;
