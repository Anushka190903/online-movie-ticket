🎬 Cinemaniac - Online Movie Ticket Booking System
Cinemaniac is a Java-based web application built as a final year project to simulate an online movie ticket booking system. It allows users to register, log in, browse movies and theatres, and book tickets based on available showtimes. Admin users can manage theatres, movies, and bookings.

📌 Features
User Registration & Authentication

Browse movies and theatres

Real-time seat selection and booking

Admin panel to manage movie and theatre listings

Payment simulation and booking confirmation

Password recovery and profile management

🚀 Tech Stack
Frontend
HTML

CSS

JavaScript

Backend
Java (J2EE – JSP, Servlets)

JDBC

Database
Oracle 10g

Tools & Environment
Eclipse (Mars)

Apache Tomcat 8.0

Windows 10 OS

🛠 Setup & Installation
Clone the Repository

bash
Copy
Edit
git clone https://github.com/your-username/cinemaniac.git
Database Setup

Import the Oracle database schema from provided .sql files (not included here).

Ensure the Oracle DB is running and accessible.

Configure Database Connection

Modify Connection.jsp with your database credentials.

java
Copy
Edit
con = DriverManager.getConnection(
  "jdbc:oracle:thin:@localhost:1521:XE", "system", "tiger");
Deploy on Tomcat

Copy the project folder into Tomcat's webapps/ directory.

Start Tomcat server.

Run the Application
Open your browser and navigate to:

bash
Copy
Edit
http://localhost:8080/cinemaniac/
🧪 Testing
Manual and automated testing with Black-box, White-box, and Grey-box techniques.

Login validation, seat availability checks, and user registration tested using simulated inputs.

🔒 Security & QA
Basic validation and error-handling implemented

User-defined error messages for login and booking failures

QA processes for usability, maintainability, and testability followed

📈 Future Scope
Integration of real-time payment gateways

Enhanced seat arrangement visuals

Mobile-friendly UI and native app support

Integration at physical cinema counters

🙏 Acknowledgements
Special thanks to Mr. Amalendu Das from West Bengal Electronics Industry Development Corporation Limited for guidance and support.

👨‍💻 Authors
Anushka Bhattacharya

Interface
![Home](
