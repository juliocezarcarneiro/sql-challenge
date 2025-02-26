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

## Technologies Used
* SQL: Structured Query Language for database design and querying.
* PostgreSQL: Database Management System.
* GitHub: For version control.

## Setup Instructions
1. Clone the repository:

`git clone https://github.com/yourusername/pewlett-hackard-data-analysis.git`
`cd pewlett-hackard-data-analysis`

2. Create the database and import data:
    * Create the database pewlett_hackard;
    * Import the CSV files into the tables. 

3. Run analysis queries

## Database Tables
This section describes the Tables in the database:

* departments.csv - Contains dept_no and dept_name.
* titles.csv - Contains title_id and title.
* employees.csv - Contains emp_no, emp_title_id, birth_date, first_name, last_name, sex and hire_date.
* dept_emp.csv - Contains emp_no and dept_no.
* dept_manager.csv - Contains dept_no and emp_no.
* salaries.csv - Contains emp_no and salary.

## Data Analysis Tasks
Here are the analysis tasks that were performed on the dataset:

* Employee Information: List the details of all employees, including their sex and salary.
* Employees Hired in 1986: Identify employees hired in 1986.
* Sales and Development Department Employees: Extract employees working in specific departments such as Sales and 
Development. Additionally, aggregate functions were used to analyze last name frequencies and other insights.

## Folder Structure
This is the structure of the Git repository and its contents:

- **sql-challenge/**
  - `README.md` - Project overview and instructions
  - **ERD/** - Folder for Entity Relationship Diagram
    - `erd_image.png`
  - **sql/** - Folder for SQL-related files
    - `create_tables.sql` - SQL file with table schema
    - `queries.sql` - SQL file with queries for analysis
  - **data/** - Folder for the CSV files
    - `departments.csv` - CSV file for departments data
    - `titles.csv` - CSV file for titles data
    - `employees.csv` - CSV file for employees data
    - `dept_emp.csv` - CSV file for dept_emp data
    - `dept_manager.csv` - CSV file for dept_manager data
    - `salaries.csv` - CSV file for salaries data
