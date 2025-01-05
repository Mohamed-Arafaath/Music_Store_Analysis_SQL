# Music Store Analysis Dataset

This folder contains datasets and files used for the **Music Store Analysis** project, which involves analyzing a fictional music store's operations using SQL. The datasets have been preprocessed to ensure compatibility with SQL-based analysis tools.

## Files and Descriptions

### CSV Files

#### Album-related Data
- **`album.csv`**: Contains information about albums sold in the store.
- **`album_cleaned.csv`**: A cleaned version of `album.csv` for better usability.

#### Artist Data
- **`artist.csv`**: Contains details about artists whose work is available in the store.

#### Customer Data
- **`customer.csv`**: Raw data about customers.
- **`customer_cleaned.csv`**: Cleaned customer data for easier analysis.

#### Employee Data
- **`employee.csv`**: Information about employees in the store.
- **`employee_cleaned.csv`**: Cleaned and reformatted employee data.

#### Genre Data
- **`genre.csv`**: Contains information about musical genres available in the store.

#### Invoice Data
- **`invoice.csv`**: Data on transactions made in the store.
- **`invoice_cleaned.csv`**: Cleaned invoice data.
- **`invoice_line.csv`**: Details about specific items in each invoice.

#### Media Type Data
- **`media_type.csv`**: Information about the type of media (e.g., MP3, CD).

#### Playlist Data
- **`playlist.csv`**: Details about playlists in the store's catalog.
- **`playlist_track.csv`**: Data mapping tracks to playlists.

#### Track Data
- **`track.csv`**: Information about individual tracks available in the store.
- **`track_cleaned.csv`**: A cleaned version of `track.csv`.

#### Schema Diagram
- **`schema_diagram.png`**: A visual representation of the database schema used in this project.

### Data Preprocessing

#### Text Data Cleaning
- All text fields were cleaned using:
  ```python
  .str.replace(r'^"|"$', '', regex=True)
  ```
  This ensures that any leading or trailing quotes in the text are removed.

#### Date Formatting
- Dates in the `employee.csv` file (e.g., BirthDate, HireDate) were reformatted to SQL Server-compatible format using the following code:
  ```python
  employee_data['birthdate'] = pd.to_datetime(employee_data['birthdate'], format='%d-%m-%Y %H:%M').dt.strftime('%Y-%m-%d %H:%M:%S')
  employee_data['hire_date'] = pd.to_datetime(employee_data['hire_date'], format='%d-%m-%Y %H:%M').dt.strftime('%Y-%m-%d %H:%M:%S')
  ```

### Usage

This dataset is designed for SQL-based analysis and supports operations such as:
- Joining tables to extract meaningful insights.
- Aggregating data for KPIs (e.g., total revenue, most popular genres).
- Querying data to understand customer and employee behavior.

### Notes
- Ensure all `*_cleaned.csv` files are used in SQL imports to avoid issues with data quality.
- Refer to `schema_diagram.png` for understanding the relationships between tables.

