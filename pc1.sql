USE pc;
ALTER TABLE Users
DROP COLUMN Username;

-- Step 2: Ensure Email and Password fields exist with appropriate constraints
ALTER TABLE Users
MODIFY COLUMN Email VARCHAR(255) NOT NULL UNIQUE,
MODIFY COLUMN PasswordHash VARCHAR(255) NOT NULL;