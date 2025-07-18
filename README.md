# Population Management SQL Project

This project demonstrates how to manage population data using SQL Server with the help of multiple tables and triggers.

##  Tables Overview

- **population**: Stores all currently alive citizens with their name, NID, and date of birth.
- **birth_people**: Tracks newly born individuals. When a new record is inserted here, a trigger automatically adds that person to the `population` table.
- **dead_people**: Records individuals who have passed away. When a record is added here, a trigger removes the corresponding person from the `population` table.

##  Trigger Functionality

- **Birth Trigger**: Fires after a new baby is added to the `birth_people` table and inserts the same data into the `population` table.
- **Death Trigger**: Fires after a new record is added to `dead_people`, and deletes that person from the `population` table based on NID.

 

##  Sample Actions in Script

- A new baby is added to the `birth_people` table.
- Their info is automatically inserted into `population`.
- When a death is recorded in `dead_people`, that person is automatically removed from the `population`.

 
