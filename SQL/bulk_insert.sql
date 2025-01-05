-- Bulk Insert for Artist Table
BULK INSERT Artist
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\artist.csv'
WITH (
    FIELDTERMINATOR = ',',  -- Field separator
    ROWTERMINATOR = '\n',   -- Row separator
    FIRSTROW = 2,            -- Skip the header row
	CODEPAGE = '65001'
);

-- Bulk Insert for Album Table
BULK INSERT Album
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\album2.csv'
WITH (
    FIELDTERMINATOR = ',',       -- Columns are separated by commas
    ROWTERMINATOR = '\n',        -- Rows are separated by newlines
    --FIELDQUOTE = '"',            -- Handle fields enclosed in double quotes
    FIRSTROW = 2                -- Skip the header row
    --CODEPAGE = '65001'           -- Handle UTF-8 encoding
);


-- Bulk Insert for Playlist Table
BULK INSERT Playlist
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\playlist.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

-- Bulk Insert for MediaType Table
BULK INSERT MediaType
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\media_type.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
	CODEPAGE = '65001'
);

-- Bulk Insert for Genre Table
BULK INSERT Genre
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\genre.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

-- Bulk Insert for Track Table
BULK INSERT Track
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\track_cleaned.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
    --ERRORFILE = 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\track_errors.txt'
);

-- Bulk Insert for PlaylistTrack Table
BULK INSERT PlaylistTrack
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\playlist_track.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

-- Bulk Insert for Employee Table
--delete from employee
BULK INSERT Employee
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\employee_cleaned.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
	CODEPAGE = '65001'        -- Handle UTF-8 encoding
    --DATAFILETYPE = 'char',     -- Treat data as character-based
    --ERRORFILE = 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\errors.txt'
);


-- Bulk Insert for Customer Table
--delete from customer
BULK INSERT Customer
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\customer_cleaned.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

-- Bulk Insert for Invoice Table
BULK INSERT Invoice
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\invoice.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
	ERRORFILE = 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\invoice_errors.txt'
);

-- Bulk Insert for InvoiceLine Table
BULK INSERT InvoiceLine
FROM 'C:\Users\LDS\OneDrive - University of Pisa\Data Analyst Interview Preparation\Projects\Music Store\Dataset\music store data\invoice_line.csv'
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);