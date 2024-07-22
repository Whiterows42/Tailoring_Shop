# Tailor Shop Management System

## Overview
The Tailor Shop Management System is a web application designed to manage customer orders, including detailed measurements for shirts and pants, payments, and receipts. This application is built using Spring MVC, Spring JDBC, and integrates a MySQL database to handle data persistence. The project is designed to be modular and easily maintainable.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
- [Database Schema](#database-schema)
- [Architecture](#architecture)
- [Workflow](#workflow)
- [Usage](#usage)

## Features
- Customer management: Add, update, and view customer details.
- Order management: Record and view orders with detailed measurements.
- Payment tracking: Track payments, paid amounts, and pending amounts.
- Dashboard: Overview of customer count, order count, and monthly revenue.



## Setup Instructions
1. **Clone the Repository**
    ```bash
    git clone https://github.com/Whiterows42/Tailoring_Shop.git
    cd tailor-shop-management
    ```

2. **Configure the Database**
    - Create a MySQL database and update `application.properties` with your database credentials.
    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/tailor_shop
    spring.datasource.username=root
    spring.datasource.password=yourpassword
    spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
    
    ```

3. **Run the Application**
    ```bash
    mvn spring-boot:run
    ```

4. **Access the Application**
    - Open a browser and navigate to `http://localhost:8080/coustomer`.

## Database Schema
```sql
CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255),
    contact VARCHAR(20),
    name VARCHAR(100),
    payment FLOAT,
    payment_paid FLOAT,
    payment_pending FLOAT,
    status VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE pant_details (
    customer_id VARCHAR(100),
    pant_height VARCHAR(50),
    pant_knee VARCHAR(50),
    pant_legs_bottom VARCHAR(50),
    pant_other VARCHAR(255),
    pant_pocket VARCHAR(50),
    pant_press VARCHAR(50),
    pant_quantity VARCHAR(50),
    pant_rate FLOAT,
    pant_seat VARCHAR(50),
    pant_shape VARCHAR(50),
    pant_thigh VARCHAR(50),
    pant_tip VARCHAR(50),
    pant_type VARCHAR(50),
    pant_waist VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customer(email)
);

CREATE TABLE shirt_details (
    customer_id VARCHAR(100),
    shirt_chest VARCHAR(50),
    shirt_collar VARCHAR(50),
    shirt_hand_loose VARCHAR(50),
    shirt_height VARCHAR(50),
    shirt_loose VARCHAR(50),
    shirt_other VARCHAR(255),
    shirt_press VARCHAR(50),
    shirt_quantity VARCHAR(50),
    shirt_rate FLOAT,
    shirt_shape VARCHAR(50),
    shirt_shoulder VARCHAR(50),
    shirt_sleeve VARCHAR(50),
    shirt_sleeve_cup VARCHAR(50),
    shirt_stomach VARCHAR(50),
    shirt_type VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customer(email)
);

CREATE TABLE receipt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curr_date DATE,
    delivery_date DATE,
    customer VARCHAR(100),
    status VARCHAR(50),
    amount FLOAT,
    paid_amount FLOAT,
    pending_amount FLOAT,
    FOREIGN KEY (customer) REFERENCES customer(email)
);


Workflow
Landing Page
Request URL: /coustomer
Controller Method: sendToLandingPage(Model model)
View: CoustmerPage.jsp
Description: Renders the customer landing page with a welcome message.
Add Customer Data
Request URL: /getdata
Controller Method: getData(@ModelAttribute Coustmer c, Model model)
View: CoustmerPage.jsp
Description: Inserts customer data into the database and updates the view with a success message.
Admin Dashboard
Request URL: /dashboard
Controller Method: admindashboard(Model model)
View: Dashboard.jsp
Description: Displays the admin dashboard with user count, order count, customer details, and monthly revenue.
Usage
Navigate to the customer page to add new customer details.
View the admin dashboard for an overview of the shop's performance, including customer counts, order counts, and revenue.
Contributing
Contributions are welcome! Please fork the repository and submit pull requests for any enhancements or bug fixes.
![Spring_internal_Work](https://github.com/user-attachments/assets/799f738c-2393-41fd-9a63-ae2cbdd3e278)
![Classes_Workflow](https://github.com/user-attachments/assets/53bbd200-9ea1-447b-b923-31d6440bffa7)
![homepage](https://github.com/user-attachments/assets/1bff3a9b-55ed-4149-86c2-4de2c6152e71)


![coustmoer_page](https://github.com/user-attachments/assets/44dc7451-276d-4b57-b976-e6ab80ed3fd7)
![Admindashboard_page](https://github.com/user-attachments/assets/656f5117-429f-473a-a70a-1ab0ec4b5a3b)
![Order_Details](https://github.com/user-attachments/assets/bb856928-212c-492a-90a7-71a1dc943727)
