# SQL (Structured Query Language)
Getting solid in SQL.

This repository documents my journey to building strong SQL fundamentals through practical queries and exercises. The focus is on understanding how to retrieve, manipulate, and analyze data efficiently using SQL while working with relational databases. All queries in this repository are written and tested using MySQL Workbench and VS Code with a MySQL extension for query execution.
The repository is structured around core SQL concepts, progressing from basic queries to more advanced techniques commonly used in real-world data analysis.

---

## Lessons Covered

### 1. Getting Started With SQL
Introduction to SQL and relational databases.

Topics include:
- What SQL is used for
- Basic database concepts
- Understanding relational databases
- Writing and executing queries

---

### 2. SELECT, FROM & WHERE
The foundation of most SQL queries.

Topics include:
- Selecting specific columns
- Querying tables
- Filtering rows with conditions
- Comparison operators and logical operators (`AND`, `OR`, `NOT`)

<p align="center">
<img src="pics/table.png" width="600"/>
</p>

#### SELECT ... FROM

The most basic SQL query selects a single column from a single table. To do this,

- specify the column you want after the word SELECT, and then
- specify the table after the word FROM.

For instance, to select the Name column (from the pets table in the pet_records database in the bigquery-public-data project), our query would appear as follows:

<p align="center">
<img src="pics/table2.png" width="600"/>
</p>

#### WHERE ...

We can return only the rows meeting specific conditions. Do this using the WHERE clause.

The query below returns the entries from the Name column that are in rows where the Animal column has the text 'Cat'.

<p align="center">
<img src="pics/table3.png" width="600"/>
</p>

---

### 3. GROUP BY, HAVING & COUNT
Using aggregation to summarize data and extract insights.

Topics include:
- Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
- Grouping data using `GROUP BY`
- Filtering aggregated results with `HAVING`

#### COUNT()

COUNT(), as you may have guessed from the name, returns a count of things. If you pass it the name of a column, it will return the number of entries in that column.

For instance, if we SELECT the COUNT() of the ID column in the pets table, it will return 4, because there are 4 ID's in the table.

<p align="center">
<img src="pics/table4.png" width="600"/>
</p>

**COUNT()** is an example of an aggregate function, which takes many values and returns one. (Other examples of aggregate functions include SUM(), AVG(), MIN(), and MAX().)

#### GROUP BY

GROUP BY takes the name of one or more columns, and treats all rows with the same value in that column as a single group when you apply aggregate functions like COUNT().

For example, say we want to know how many of each type of animal we have in the pets table. We can use GROUP BY to group together rows that have the same value in the Animal column, while using COUNT() to find out how many ID's we have in each group.

<p align="center">
<img src="pics/table5.png" width="600"/>
</p>

#### GROUP BY ... HAVING

HAVING is used in combination with GROUP BY to ignore groups that don't meet certain criteria.

So this query, for example, will only include groups that have more than one ID in them.

<p align="center">
<img src="pics/table6.png" width="600"/>
</p>

---

### 4. ORDER BY
Sorting query results to make data easier to interpret.

Topics include:
- Sorting results in ascending and descending order
- Ordering by multiple columns

<p align="center">
<img src="pics/table7.png" width="600"/>
</p>

#### ORDER BY

ORDER BY is usually the last clause in your query, and it sorts the results returned by the rest of your query.

Notice that the rows are not ordered by the ID column. We can quickly remedy this with the query below.


<p align="center">
<img src="pics/table8.png" width="600"/>
</p>

The ORDER BY clause also works for columns containing text, where the results show up in alphabetical order.


<p align="center">
<img src="pics/table9.png" width="600"/>
</p>


You can reverse the order using the DESC argument (short for 'descending'). The next query sorts the table by the Animal column, where the values that are last in alphabetic order are returned first.



<p align="center">
<img src="pics/table10.png" width="600"/>
</p>


#### Dates

Next, we'll talk about dates, because they come up very frequently in real-world databases. There are two ways that dates can be stored in BigQuery: as a DATE or as a DATETIME.

The DATE format has the year first, then the month, and then the day. It looks like this:

    YYYY-[M]M-[D]D

- YYYY: Four-digit year
- [M]M: One or two digit month
- [D]D: One or two digit day

So 2019-01-10 is interpreted as January 10, 2019.

The DATETIME format is like the date format ... but with time added at the end.

#### EXTRACT

Often you'll want to look at part of a date, like the year or the day. You can do this with EXTRACT. We'll illustrate this with a slightly different table, called pets_with_date.

<p align="center">
<img src="pics/table11.png" width="600"/>
</p>

The query below returns two columns, where column Day contains the day corresponding to each entry the Date column from the pets_with_date table:

<p align="center">
<img src="pics/table12.png" width="600"/>
</p>


SQL is very smart about dates, and we can ask for information beyond just extracting part of the cell. For example, this query returns one column with just the week in the year (between 1 and 53) for each date in the Date column:


<p align="center">
<img src="pics/table13.png" width="600"/>
</p>

---

### 5. AS & WITH
Improving query readability and structure.

Topics include:
- Column and table aliases using `AS`
- Common Table Expressions (CTEs) using `WITH`
- Writing cleaner and more maintainable queries

---

### 6. Joining Data
Combining information from multiple tables within relational databases.

Topics include:
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- Understanding relationships between tables

---

## Goals of This Repository

- Strengthen SQL fundamentals
- Practice working with relational databases
- Write efficient and readable queries
- Build a reference of commonly used SQL techniques

---

## Tools Used

- **MySQL**
- Relational databases
- SQL query editors / database clients
