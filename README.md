# PC Parts Picker

A web application that helps users choose compatible PC components based on their preferences and budget.

## Features

- Create a database of PC components with names, compatibility details, and prices.
- Users can select components for each part of a PC.
- Displays a summary page with selected components and their details.

---

## Getting Started

### Prerequisites

1. **Install Node.js**  
   Download and install Node.js from [Node.js official website](https://nodejs.org/).

2. **Install XAMPP**  
   Download and install XAMPP from [XAMPP official website](https://www.apachefriends.org/). Use it to run the MySQL service locally.

3. **Install MySQL**  
   Ensure MySQL is installed on your machine. If not, download it from [MySQL official website](https://www.mysql.com/).

---

### Steps to Run the Project

#### 1. Set Up the Database

1. Open XAMPP and start the MySQL service.  
2. Open MySQL and create a new database. Use the provided `pc.sql` file to set up your database.  
   To import the file, run the following command in your MySQL interface:  
   ```bash
   SOURCE path/to/pc.sql;

3. Save your database credentials in the project code (e.g., in a .env file or database configuration file). Update your credentials in the backend configuration if necessary.

#### 2. Install Dependencies
  1. Open a terminal and navigate to the project directory:
        cd /path/to/your/project
  2. Navigate to the backend directory:
        cd backend
  3. Install Node.js dependencies using npm:
        npm install
     
#### 3. Run the Project
  1. Start the backend server:
        npm start
  2. Run the scraper to scrape and populate the database:
        python scraper.py
  3. Open your browser and navigate to the URL provided by the backend server (e.g., http://localhost:3000).
  4. Use the interface to select PC components and view your build summary.
     
#### Project Structure
.
├── backend
│   ├── index.js          # Backend entry point
│   ├── routes
│   ├── models
│   └── config
├── frontend
│   ├── index.html        # Main frontend file
│   ├── scripts.js
│   └── styles.css
├── pc.sql                # Database schema and seed data
├── scraper.py            # Script to scrape and populate database
└── README.md             # Project documentation

#### Technologies Used
  - Frontend: HTML, CSS, JavaScript
  - Backend: Node.js, Express.js
  - Database: MySQL

#### Future Enhancements
  - Implement user authentication.
  - Add support for saving and sharing builds.
  - Include more advanced compatibility checks.

#### Troubleshooting
  1. Database Connection Errors:
      - Check your MySQL service is running through XAMPP.
      - Verify the database credentials in your configuration file.
  2. NPM Errors:
      - Run npm install again to ensure all dependencies are installed.
      - Check your Node.js version.
  3. Server Not Starting:
      - Ensure no other service is running on the same port.
      - Check for syntax errors in your code.
  4. Scraper Not Working:
      - Verify the scraper is pointing to the correct database.
      - Ensure all required Python dependencies are installed.
