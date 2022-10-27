# SQL Employee Datahandling
Welcome to my repository that's designed to showcase my PostgreSQL skills. In this exercise, I worked with employee data to create muliple tables relating to employee information.

![Screen Shot 2022-10-26 at 8 26 38 PM](https://user-images.githubusercontent.com/37047605/198207567-5c5924e2-dc8e-4f3b-a0e1-a4c5de54fb81.png)

I then ingested data from CSV files into a new database to populate each table. Using the employee ID as the primary record, I performed a series of joins to select data that will aid in answering specific business questions. 

![Screen Shot 2022-10-26 at 8 30 35 PM](https://user-images.githubusercontent.com/37047605/198208210-93a4bc42-c8f9-477c-8df5-939ecd05f586.png)

I then created an ERD to show the mapping of key columns to each table.

![EmployeeERD](https://user-images.githubusercontent.com/37047605/198207361-efd3d648-2b13-4f29-8117-5968ef03db51.png)

Finally, I used SQL Alchemy to create an engine. I created a SQL query that joined 3 relevant tables to review the data. I plotted both a histogram that binned salary ranges into categories, then I created a bar graph to visualize employee title against average salary. 

![Screen Shot 2022-10-27 at 12 14 25 PM](https://user-images.githubusercontent.com/37047605/198408144-f8781eab-f1a6-43af-8066-4fb722c0ecec.png)

Through this review, I found some suspicious trends, such as the fact that the salary for an employee with the title "assistant engineer" was higher than that of an "engineer."

I suspect that this dataset is either fake, or that the company really needs a compensation analyst to improve operations and pay ranges.
