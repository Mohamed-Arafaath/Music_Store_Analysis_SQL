# 🎵 Music Store Analysis Using SQL

This project demonstrates an end-to-end data analysis pipeline for a fictional music store. It involves cleaning raw datasets using Python, designing and populating a relational database, and conducting SQL-based analysis to answer key business questions. The analysis spans customer behavior, sales trends, and music preferences, enabling data-driven decision-making.

---

## 📁 Repository Structure

```plaintext
Music_Store_Analysis_SQL/
├── Dataset/                              # Contains raw and cleaned datasets
│   ├── album.csv                         # Raw data for albums
│   ├── album_cleaned.csv                 # Cleaned data for albums
│   ├── artist.csv                        # Artist details
│   ├── customer.csv                      # Raw customer data
│   ├── customer_cleaned.csv              # Cleaned customer data
│   ├── ... (other files for employees, invoices, tracks, etc.)
│   ├── schema_diagram.png                # Database schema diagram
│   ├── readme.md                         # Dataset folder documentation
├── SQL/                                  # Contains SQL scripts and queries
│   ├── bulk_insert.sql                   # SQL script to populate database
│   ├── Question_Set1_Soln.sql            # Solutions for easy business questions
│   ├── Question_Set2_Soln.sql            # Solutions for moderate business questions
│   ├── Question_Set3_Soln.sql            # Solutions for difficult business questions
│   ├── readme.md                         # SQL folder documentation
├── Business_Questions.pdf                # Document listing all business questions
├── schema_diagram.png                    # Visual representation of database schema
├── README.md                             # Main project documentation
```

---

## 🎯 Project Objectives

1. **Data Cleaning**:
   - Use Python to clean raw datasets and prepare them for database insertion.
   - Ensure data consistency, accuracy, and integrity.

2. **Database Creation**:
   - Design and populate a relational database (`MusicStoreDB`) using SQL.
   - Create relationships between entities such as albums, artists, customers, and invoices.

3. **SQL Analysis**:
   - Answer critical business questions to derive insights into customer behavior, sales performance, and music trends.
   - Provide actionable recommendations based on the analysis.

---

## 🔧 Tools and Technologies

- **Python**: For cleaning and preprocessing raw datasets.
- **SQL**: For database creation and querying.
- **PostgreSQL/MySQL**: Relational database management system.
- **Visual Studio Code/SQL Workbench**: Development environments.

---

## 📊 Key Components

### 1. **Dataset**
The `Dataset` folder contains raw and cleaned datasets covering:
- Albums, artists, customers, employees, invoices, and tracks.
- Cleaned datasets were created using Python scripts to ensure SQL compatibility.

📂 **Refer to the [Dataset README](./Dataset/readme.md) for more details.**

---

### 2. **Database Schema**
The `MusicStoreDB` database schema was designed to handle the relationships between various entities in the music store. The schema includes:
- **Albums**, **Artists**, **Tracks**, **Genres**: Details about the music collection.
- **Customers**, **Invoices**, **Invoice Lines**: Customer transactions and purchase details.
- **Employees**: Information about store employees.

![Database Schema](./Dataset/schema_diagram.png)

---

### 3. **SQL Analysis**
The `SQL` folder contains:
- **Database Creation**: SQL script (`bulk_insert.sql`) to create and populate the database.
- **Business Queries**:
  - Easy: Solutions in `Question_Set1_Soln.sql`.
  - Moderate: Solutions in `Question_Set2_Soln.sql`.
  - Difficult: Solutions in `Question_Set3_Soln.sql`.

📂 **Refer to the [SQL README](./SQL/readme.md) for query details.**

---

## 🔍 Business Questions Addressed

The project answers business questions across three difficulty levels:

1. **Easy**:
   - Identify the best customers and most profitable cities.
   - List top-selling artists and genres.

2. **Moderate**:
   - Analyze customer purchases by genre and track length.
   - Find albums with tracks in multiple genres.

3. **Difficult**:
   - Determine revenue contributions by media type and genre.
   - Find customers who spent the most in each country.

📄 **Refer to [Business_Questions.pdf](./Business_Questions.pdf) for the full list of questions.**

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/Mohamed-Arafaath/Music_Store_Analysis_SQL.git
cd Music_Store_Analysis_SQL
```

### 2. Set Up the Database
- Ensure PostgreSQL or MySQL is installed.
- Use `bulk_insert.sql` to create and populate the database.

### 3. Analyze the Data
- Run the queries in the SQL folder to answer the business questions.
- Review the insights derived from the analysis.

---

## 📈 Insights from the Analysis

- **Top Genres**: Rock and Jazz dominate customer purchases.
- **Best Customers**: Identified customers with the highest lifetime value.
- **Geographic Insights**: Determined top cities and countries for music sales.
- **Revenue Trends**: Analyzed media type contributions to total revenue.

---

## 📧 Contact

For any questions or feedback, feel free to reach out:

- **Author**: [Mohamed Arafaath](https://www.linkedin.com/in/mohamed-arafaath/)
- **Email**: mohamed_arafaath@outlook.com

