/* Test File - Reference tutorial from UDEMY for more details. */
/* https://www.udemy.com/course/introduction-to-databases-and-sql-querying/learn/lecture/3250974#overview */
/* This file covers the following topics:                   */
/* - Creating a Database                                    */
/* - Creating a Table                                       */
/* - Retrieving Data from the Table                         */
/* - Inserting Values into the Table                        */
/* This file will NOT go over how to install and set up the */
/* SQL server. This file assumes that has already been done,*/
/* and that SQL Mangement Studio is open.                   */


/*                  CREATING A DATABASE                     */
/* First let's create a database */
create database test_db

/* Use the 'execute' button above to create the databse, or */
/* press F5 to do the same! Alternatively, you can create   */
/* a database by right-clicking "Databases" in the Object   */
/* explorer, and creating the database using the provided   */
/* wizard / interface!                                      */


/*                  CREATING A TABLE                        */
/* Next, let's create a table! Use the create table command */
/* to create a table, providing the columns of the table    */
/* with the command. The column is formatted as:            */
/* < column name > < variable type >                        */
/* You can highlight what commands to run, and execute      */
/* chunks of code separately!                               */
/* You can also select which database to run the commands   */
/* under.                                                   */
create table test_table
(
    rollno      int,
    firstname   varchar( 50 ),
    lastname    varchar( 50 ),
)


/*                RETRIEVING FROM A TABLE                   */
/* Let's select some data from the table. Make sure to      */
/* define which database and table to use. Feel free to put */
/* data in the table ahead of time, but otherwise that will */
/* be covered later.                                        */
use test_db
select rollno, firstname, lastname from test_table

/*                 INSERTING INTO A TABLE                   */
/* To insert data into the table, use the following syntax: */
/* insert into < table name >( < column names > )           */
/* values( < data for column 1 >, < data for column 2>, etc)*/
insert into test_table( rollno, firstname, lastname )
values( 1, 'RONALD', 'MCDONALD' )
