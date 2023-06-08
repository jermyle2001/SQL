/*                    WRITING SQL CODE                      */
/* This section details how to write basic SQL code with    */
/* some examples, using the Adventure Works Database.       */
/* Download the Adventure Works database from Microsoft's   */
/* Sample Databases. Add the database by downloading the    */
/* chosen backup (.bak) file from the website, and using    */
/* restore function ( right-click Databases ) in the device */
/* path. Reference Geek-For-Geeks for more information:     */
/* https://www.geeksforgeeks.org/how-to-download-and-install-adventureworks-database-in-sql/# */
/* This file utilizes the following tutorial from Udemy:    */
/* https://www.udemy.com/course/introduction-to-databases-and-sql-querying/learn/lecture/3250978#learning-tools */


/*                  QUERYING A DATABASE                     */
/* Make sure we're using the right database with the "use"  */
/* command.                                                 */
use [AdventureWorks2022]

/* Select some sample data using the SELECT FROM command.   */
/* The * typically indicates selecting all.                 */
SELECT * FROM [HumanResources].[Department]

/* Let's get all of the department names.                   */
SELECT NAME FROM [HumanResources].[Department]

/* What about Groups? Use the same idea...                  */
SELECT GROUPNAME FROM [HumanResources].[Department]

/* We can also filter how we want! For example:             */
/* Distinct Groupnames                                      */
SELECT DISTINCT GROUPNAME FROM [HumanResources].[Department]

/* Let's filter some more - get all of the Department Names */
/* that are a part of Manufacturing                         */
SELECT NAME, GROUPNAME FROM [HumanResources].[Department]
WHERE GROUPNAME LIKE 'MANUFACTURING'

/* Let's get all the Employees from the Employee Table...   */
SELECT * FROM [HumanResources].[Employee]

/* Let's get a list of all Employees who have an ORGLEVEL	*/
/* of 2.													*/
SELECT * FROM [HumanResources].[Employee] WHERE ORGANIZATIONLEVEL = 2

/* Let's get a list of all Employees who have an ORGLEVEL	*/
/* of 2 OR 3.												*/
SELECT * FROM [HumanResources].[Employee] WHERE ORGANIZATIONLEVEL IN ( 2, 3 )

/* Let's get a list of Employees who have the title			*/
/* FACILITIES MANAGER. We use the Text Manager keyword		*/
/* 'LIKE'. This is NOT Case Sensitive.						*/
SELECT * FROM [HumanResources].[Employee] WHERE JOBTITLE LIKE 'FACILITIES MANAGER'

/* Let's get all the Employees who have the word 'MANAGER'	*/
/* in their title.											*/
SELECT * FROM [HumanResources].[Employee] WHERE JOBTITLE LIKE 'Manager'
/* This actually gives us nothing, so we need to use a		*/
/* WILDCARD, which indicates that anything can be before the*/
/* given term, but NOT AFTER such.							*/

/* We can use the % sign to indicate whether we want		*/
/* the matching to occur before or after. The following		*/
/* allows BOTH to happen.									*/
SELECT * FROM [HumanResources].[Employee] WHERE JOBTITLE LIKE '%Control%'

/* Let's get all the Employees who were born AFTER Jan 1	*/
/* 1980. We can use regular logical operators like so:		*/
SELECT * FROM [HumanResources].[Employee] 
WHERE BirthDate > '1/1/1980'

/* But how about a defined range? We do as so:				*/
SELECT * FROM [HumanResources].[Employee] 
WHERE BirthDate > '1/1/1970' AND BirthDate < '1/1/1980'
/* OR we can use the BETWEEN keyword						*/
SELECT * FROM [HumanResources].[Employee] 
WHERE BirthDate BETWEEN '1/1/1970' AND '1/1/1980'