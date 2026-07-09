Before opening and running our web project folder, please read the instructions below.

## How to Run the Project

First, download the ZIP file and extract it.

Open Eclipse and import the project: File → Import → Existing Projects into Workspace

Select the project folder:SWE306-WebProject

Then click Finish.

## Database Setup

Open MySQL Workbench and connect to your local MySQL server. Then open the SQL file from the project folder: database/database.sql

Copy all SQL code from this file, paste it into MySQL Workbench, and run the script.

This will create the database: food_ordering_db

It will also create the required tables: users, categories, menu, orders, order_items

The script will also insert sample users, categories, and menu items.

## Important Database Note

The MySQL database is not included automatically when downloading the ZIP file.

Before running the project, please open MySQL Workbench, copy all code from database/database.sql, and execute it.

If the database script is not executed first, login, menu, cart, admin dashboard, and order features may not work correctly.

## Check Database Connection Settings

The database connection file is located at: src/main/java/util/DBConnection.java

Default configuration:

private static final String URL = "jdbc:mysql://localhost:3306/food_ordering_db?useSSL=false&serverTimezone=UTC";
private static final String USER = "root";
private static final String PASSWORD = "root123";

If your MySQL password is different, update this line:

private static final String PASSWORD = "your_password_here";

If your MySQL username is different, update this line:

private static final String USER = "your_username_here";

## MySQL Connector

The project includes: mysql-connector-j-9.7.0.jar

If JDBC errors occur, make sure this JAR is included in the project build path or library folder.

## Configure Apache Tomcat

This project uses Apache Tomcat 10.1 because we use jakarta.servlet.

After setting up Tomcat, right-click index.jsp and run.

## Test Accounts

### Admin Account

Use this account to access the admin dashboard:

Email: admin@gmail.com  
Password: admin123

### Customer Account

Use this account to test customer ordering:

Email: test@gmail.com  
Password: test123

You can also create your own account using the registration page.