# 🎬 Cinemaniac – Online Movie Ticket Booking System

**WEBEL Web Application Project**  
_August 2024 – December 2024_

---

## 🛠 Tech Stack

- **Backend**: Java (J2EE), JSP, Servlets
- **Database**: Oracle 10g via JDBC
- **Frontend**: HTML, CSS, JavaScript
- **Server**: Apache Tomcat
- **IDE**: Eclipse

---

## 📋 Project Overview

Cinemaniac is a web-based application that simulates a real-world movie ticket booking experience. It allows users to explore movies, find theatres, book tickets, and manage profiles. It also includes an admin dashboard for managing movie data and user records.

---

## ✨ Key Features

### 👤 User Side
- Register and manage user profiles
- Browse movies and showtimes
- Live seat booking system with payment simulation
- Password update and recovery features

### 🛠 Admin Side
- Add, delete, and modify movies, theatres, and showtimes
- Clear old booking data
- Secure login and password change functionality

---

## 📸 Screenshots

### 🔌 Connection Code (`Connection.jsp`)
```jsp
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
    Connection con;
    Statement stmt;
    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "tiger");
    stmt = con.createStatement();
%>
🏠 Home Page

📝 Registration Page

✉️ Contact Us Page

🔐 Login Page

👤 User Profile

🔄 Change Password

🎥 Movie & Theatre Search

🧑‍💼 Admin Dashboard & Password Change

🧠 System Architecture
Follows MVC pattern:

Model: Oracle DB

View: JSP

Controller: Servlets

Deployed on Apache Tomcat for modular and scalable development

📌 How to Run
Import the project into Eclipse.

Setup Oracle 10g DB and run the required table creation scripts.

Configure Tomcat Server.

Run the project and access via browser at http://localhost:8080/Cinemaniac
🙌 Authors
Project built as part of B.Tech (CSE) curriculum at WEBEL.

Contributor: Anushka

![Home page](https://raw.githubusercontent.com/Anushka190903/online-movie-ticket/refs/heads/main/picture1.jpg)






