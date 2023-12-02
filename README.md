# Background 

It’s been two weeks since I was Hypothetically hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

## This project is divided into three parts: data modeling, data engineering, and data analysis.

For this project, I designed the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, I performed data modeling, data engineering, and data analysis, respectively.


## Data Modeling
I inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables.

![ERD Tables ](https://github.com/samcandia/SQL-Challenge/assets/145384304/01a568c9-cb4c-47f4-8cc5-08513dc1aec5)


## Data Engineering

I used the provided information to create a table schema for each of the six CSV files, specified the data types - primary keys, foreign keys, and other constraints, created the tables in the correct order to handle foreign keys. Then imported each CSV file into its corresponding SQL table.

## Data Analysis

* List the employee number, last name, first name, sex, and salary of each employee.

* List the first name, last name, and hire date for the employees who were hired in 1986.

* List the manager of each department along with their department number, department name, employee number, last name, and first name.

* List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

* List each employee in the Sales department, including their employee number, last name, and first name.

* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
