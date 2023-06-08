/*                DEEP DIVE INTO SQL QUERYING               */
/* This file utilizes the following tutorial from Udemy:    */
/* https://www.udemy.com/course/introduction-to-databases-and-sql-querying/learn/lecture/3250980#learning-tools */

/*                  CALCULATED COLUMNS                      */
/* A calculated column is a column whose value is computed  */
/* from other values in the table. The expression is not    */
/* physically stored, but is instead evaluated when the     */
/* column is queried.                                       */
/* Let's create a calculated column using the previous      */
/* Adventure Works database.                                */
SELECT NAME LISTPRICE FROM [Production].[Product]

/* Add the desired calculation, and create a colum name for */
/* your new column.											*/
SELECT NAME LISTPRICE, LISTPRICE + 10 AS ADJUSTED_LIST_PRICE 
FROM [Production].[Product]

/* We can use the INTO clause to place the calculated		*/
/* column into the specified table.							*/
SELECT NAME LISTPRICE, LISTPRICE + 10 AS ADJUSTED_LIST_PRICE 
INTO [Production].[Product_2] FROM [Production].[Product]
/* View the changed table...								*/
SELECT * FROM [Production].[Product_2]

/* Note: the table we just created is actually a permanent	*/
/* table, meaning that our database actively stores it.		*/
/* We can create temporary tables using the # identifier	*/
/* instead of creating many tables from our calculations	*/
/* in our database. Temporary tables are only visible to	*/
/* the creator, whereas permanent tables are visible to		*/
/* anyone who connects to the database.						*/
/* The Temporary Table is deleted once your instance or		*/
/* Management Studio is closed.								*/
SELECT NAME LISTPRICE, LISTPRICE + 10 AS ADJUSTED_LIST_PRICE 
INTO #temp_tb FROM [Production].[Product]
/* View the Temporary Table...								*/
SELECT * FROM #temp_tb

/* Now let's delete data from the table! The same			*/
/* identifiers as searching also applies for deletion.		*/
/* Here, we're using an exact match deletion.				*/
/* Note: somewhere along the line the table messed up, so	*/
/* the column LISTPRICE now contains all the names. The		*/
/* column is SUPPOSED to be called NAME.					*/
DELETE FROM [Production].[Product_2] 
WHERE LISTPRICE LIKE 'Bearing Ball'
/* View changes...											*/
SELECT * FROM [Production].[Product_2] 

/* The Update statement updates something about a given		*/
/* statement or row. Here we are changing wherever we have	*/
/* 'BLADE' into 'BLADE_NEW'.								*/
UPDATE [Production].[Product_2]
SET LISTPRICE = 'BLADE_NEW'
WHERE LISTPRICE LIKE 'BLADE'

SELECT * FROM [Production].[Product_2]