League of Legends Lore Website

This project is a Node.js multi-page web application designed to showcase the lore behind characters from the popular game League of Legends. Utilizing Express.js for server-side routing and a SQL database for storing character information, this website provides fans with an interactive platform to explore character backgrounds, stories, and related content. Features include dynamic content rendering using a templating engine, and an intuitive navigation system that allows users to easily browse through different character lores. The project demonstrates a comprehensive use of web development technologies and database integration to enhance user engagement with game lore.

Setup Instructions
Prerequisites

Node.js and npm installed on your system
Access to a SQL database (installation and credentials)
Installation:


Clone the repository:
bash
Copy code
git clone <repository-url>
Navigate to the project directory:
bash
Copy code
cd nodejs-multi-page-site-demo
Install dependencies:
bash
Copy code
npm install
Set up your SQL database:
Ensure your SQL server is running.
Create a database and tables as per the schema provided in the database-schema.sql file (assuming there is one, otherwise provide details on the schema setup).
Configuration

Create a .env file in the root directory.
Add your database connection details:
env
Copy code
DB_HOST=localhost
DB_USER=your_username
DB_PASS=your_password
DB_NAME=league_lore
Running the Application

Start the server:
bash
Copy code
node server.js
Visit http://localhost:3000 in your browser to explore the League of Legends lore website.
