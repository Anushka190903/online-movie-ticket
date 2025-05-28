# 🎬 Cinemaniac – Online Movie Ticket Booking System

**Academic Web Application Project**  
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

