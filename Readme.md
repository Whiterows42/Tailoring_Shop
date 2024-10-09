Here's the corrected version of your documentation with spelling mistakes addressed:

---

# Tailor Shop Management System

## Overview
The Tailor Shop Management System is a web application designed to manage customer orders, including detailed measurements for shirts and pants, payments, and receipts. This application is built using Spring MVC, Spring JDBC, and integrates a MySQL database to handle data persistence. The project is designed to be modular and easily maintainable.

![Homepage](https://github.com/user-attachments/assets/1bff3a9b-55ed-4149-86c2-4de2c6152e71)

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
- [Database Schema](#database-schema)
- [Architecture](#architecture)
- [Workflow](#workflow)
- [Usage](#usage)
- [Contributing](#contributing)

## Features
- Customer management: Add, update, and view customer details.
- Order management: Record and view orders with detailed measurements.
- Payment tracking: Track payments, paid amounts, and pending amounts.
- Dashboard: Overview of customer count, order count, and monthly revenue.

![Admin Dashboard](https://github.com/user-attachments/assets/656f5117-429f-473a-a70a-1ab0ec4b5a3b)

## Project Structure
```plaintext
tailor-shop-management/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── tailor/
│   │   │           └── shop/
│   │   │               ├── controllers/
│   │   │               ├── models/
│   │   │               ├── repositories/
│   │   │               └── services/
│   │   └── resources/
│   │       └── application.properties
│   └── test/
├── pom.xml
└── README.md
```

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
    - Open a browser and navigate to `http://localhost:8080/customer`.

## Database Schema Diagram

![ER Diagram](https://github.com/user-attachments/assets/8c11deb2-7269-450c-b7a8-f62920466e4c)

## Database Schema
```sql
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `admin_email` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`admin_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `payment` int DEFAULT NULL,
  `payment_paid` int DEFAULT NULL,
  `payment_pending` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `kurta_pajama` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `kurta_size` varchar(50) DEFAULT NULL,
  `kurta_length` double DEFAULT NULL,
  `kurta_chest` double DEFAULT NULL,
  `kurta_sleeve_length` double DEFAULT NULL,
  `kurta_quantity` varchar(50) DEFAULT NULL,
  `kurta_shape` varchar(50) DEFAULT NULL,
  `kurta_neck` varchar(50) DEFAULT NULL,
  `kurta_fabric` varchar(100) DEFAULT NULL,
  `kurta_design` varchar(100) DEFAULT NULL,
  `kurta_pocket` varchar(50) DEFAULT NULL,
  `kurta_press` varchar(10) DEFAULT NULL,
  `kurta_type` varchar(50) DEFAULT NULL,
  `pajama_size` varchar(50) DEFAULT NULL,
  `pajama_length` double DEFAULT NULL,
  `pajama_waist` double DEFAULT NULL,
  `pajama_quantity` varchar(50) DEFAULT NULL,
  `pajama_shape` varchar(50) DEFAULT NULL,
  `pajama_fabric` varchar(100) DEFAULT NULL,
  `pajama_press` varchar(10) DEFAULT NULL,
  `pajama_type` varchar(50) DEFAULT NULL,
  `pajama_elastic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pant_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `pant_height` varchar(255) DEFAULT NULL,
  `pant_knee` varchar(255) DEFAULT NULL,
  `pant_legs_bottom` varchar(255) DEFAULT NULL,
  `pant_other` varchar(255) DEFAULT NULL,
  `pant_pocket` varchar(255) DEFAULT NULL,
  `pant_press` varchar(255) DEFAULT NULL,
  `pant_quantity` varchar(255) DEFAULT NULL,
  `pant_rate` float NOT NULL,
  `pant_seat` varchar(255) DEFAULT NULL,
  `pant_shape` varchar(255) DEFAULT NULL,
  `pant_thigh` varchar(255) DEFAULT NULL,
  `pant_tip` varchar(255) DEFAULT NULL,
  `pant_type` varchar(255) DEFAULT NULL,
  `pant_waist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `receipt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `curr_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `paid_amount` float DEFAULT NULL,
  `pending_amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `shirt_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `shirt_chest` varchar(255) DEFAULT NULL,
  `shirt_collar` varchar(255) DEFAULT NULL,
  `shirt_hand_loose` varchar(255) DEFAULT NULL,
  `shirt_height` varchar(255) DEFAULT NULL,
  `shirt_loose` varchar(255) DEFAULT NULL,
  `shirt_other` varchar(255) DEFAULT NULL,
  `shirt_press` varchar(255) DEFAULT NULL,
  `shirt_quantity` varchar(255) DEFAULT NULL,
  `shirt_rate` float NOT NULL,
  `shirt_shape` varchar(255) DEFAULT NULL,
  `shirt_shoulder` varchar(255) DEFAULT NULL,
  `shirt_sleeve` varchar(255) DEFAULT NULL,
  `shirt_sleeve_cup` varchar(255) DEFAULT NULL,
  `shirt_stomach` varchar(255) DEFAULT NULL,
  `shirt_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    
```

## Architecture
![Spring Internal Work](https://github.com/user-attachments/assets/883a6a35-f728-4c3f-bbc2-28620e76420e)

## Class Architecture

![Architecture 1](https://github.com/user-attachments/assets/3c2f49a6-a00c-4446-8798-54313c376bf6)

## Workflow

Landing Page
![Homepage](https://github.com/user-attachments/assets/fcbe742f-cf0c-4940-8950-505cdedffe0b)

Request URL: /customer  
Controller Method: sendToLandingPage(Model model)  
View: CustomerPage.jsp  
![Customer Page](https://github.com/user-attachments/assets/9edf6baa-09d7-4fc3-be7b-0e25099dbf02)

Description: Renders the customer landing page with a welcome message.

Add Customer Data  
Request URL: /getdata  
Controller Method: getData(@ModelAttribute Customer c, Model model)  
View: CustomerPage.jsp  
![Toast Message](https://github.com/user-attachments/assets/c4ebad4d-1a04-4fd6-8dcb-4c69a3b0270f)

Description: Inserts customer data into the database and updates the view with a success message.

Admin Dashboard  
Request URL: /dashboard  
Controller Method: adminDashboard(Model model)  
View: Dashboard.jsp  
![Admin Dashboard Page](https://github.com/user-attachments/assets/816a73de-ba97-4124-b3ee-2f79b9b8ef9b)

Description: Displays the admin dashboard with user count, order count, customer details, and monthly revenue.
![Order Details](https://github.com/user-attachments/assets/c175e312-0f5c-4a3b-9cef-afceb4c90a19)

## Usage
- Navigate to the customer page to add new customer details.
- View the admin dashboard for an overview of the shop's performance, including customer counts, order counts, and revenue.

## Contributing
Contributions are welcome! Please fork the repository and submit pull requests for any enhancements or bug fixes.

---

Feel free to reach out if you need any further modifications or assistance!
