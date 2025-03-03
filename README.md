### SQL Challenge Bootcamp UofT Data Analytics 

# Pewlett Hackard Employee Data Analysis

## Project Overview

This project is based on the task assigned to a newly hired data engineer at Pewlett Hackard, a fictional company. 
The objective is to analyze and model employee data from the 1980s and 1990s, which is provided in the form 
of six CSV files. The task involves three main phases: Data Modeling, Data Engineering, and Data Analysis.

In the Data Modeling phase, tables will be designed to store the data. The Data Engineering phase involves 
importing the data from the CSV files into a SQL database and ensuring it is structured properly. Finally, 
in the Data Analysis phase, various queries will be written to answer specific questions about the data, 
such as employee details, department information, and frequency analysis.

## Table of Contents
### 1. Project Overview
### 2. Technologies Used
### 3. Setup Instructions
### 4. Database Tables
### 5. Data Analysis
### 6. Folder Structure
### 7. References

## Technologies Used
* SQL: Structured Query Language for database design and querying.
* PostgreSQL: Database Management System.
* GitHub: For version control.
* Quick Data Base (https://www.quickdatabasediagrams.com/): For ERD creation.

## Setup Instructions
1. Clone the repository:

`git clone https://github.com/yourusername/pewlett-hackard-data-analysis.git`
`cd pewlett-hackard-data-analysis`

2. Create the database and import data:
    * Create the database pewlett_hackard;
    * Import data from each CSV file into the tables following the queries order.  

3. Run analysis queries

## Database Tables
This section describes the Tables in the database:

* departments.csv - Contains dept_no and dept_name.
* titles.csv - Contains title_id and title.
* employees.csv - Contains emp_no, emp_title_id, birth_date, first_name, last_name, sex and hire_date.
* dept_emp.csv - Contains emp_no and dept_no.
* dept_manager.csv - Contains dept_no and emp_no.
* salaries.csv - Contains emp_no and salary.

## Data Analysis
Here are the analysis tasks that were performed on the dataset:

* Employee Information: List the details of all employees, including their sex and salary.
* Employees Hired in 1986: Identify employees hired in 1986.
* Sales and Development Department Employees: Extract employees working in specific departments such as Sales and 
Development. Additionally, aggregate functions were used to analyze last name frequencies and other insights.

## Folder Structure
This is the structure of the Git repository and its contents:

## /project-root

- **/LICENSE.txt**
- **/README.md**

- **/ERD**
  - **ERD_image.png**: Image showing the Entity Relationship Diagram for the database schema.
  - **ERD.sql**: SQL script used to create the tables and relationships shown in the ERD.

- **/EmployeeSQL**
  - **pewlett_hackard_db**: SQL file containing the schema for creating tables in the database and queries for data analysis.
  - **/data**
    - **departments.csv**: Contains data on departments.
    - **titles.csv**: Contains data on job titles.
    - **employees.csv**: Contains data on employees.
    - **dept_emp.csv**: Contains data on the department and employee assignments.
    - **dept_manager.csv**: Contains data on department managers.
    - **salaries.csv**: Contains salary data for employees.

## References

* PostgreSQL Documentation. SQL Commands and Syntax. PostgreSQL. Accessed at: https://www.postgresql.org/docs/current/sql.html

* Microsoft Docs. Primary and Foreign Key Constraints. Microsoft. Accessed at: https://learn.microsoft.com/en-us/sql/relational-databases/tables/primary-and-foreign-key-constraints?view=sql-server-ver16

* W3Schools. SQL Quick Reference. W3Schools. Accessed at: https://www.w3schools.com/sql/sql_quickref.asp

* ChatGPT. ChatGPT for SQL and Data Analytics. OpenAI. Accessed at: https://chat.openai.com






