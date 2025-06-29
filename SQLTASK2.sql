1. Use the Database
USE LibraryDB;
2. INSERT Statements
Insert into Author table:
INSERT INTO Author (name, bio)
VALUES 
('J.K. Rowling', 'British author known for the Harry Potter series.'),
('George Orwell', 'English novelist and essayist.');
Insert into Book table:
INSERT INTO Book (title, category, available_copies, author_id)
VALUES
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 5, 1),
('1984', 'Dystopian', 3, 2),
('Animal Farm', 'Satire', NULL, 2);  -- Handling NULL for available_copies
Insert into Student table:
INSERT INTO Student (name, email, phone)
VALUES
('Alice Johnson', 'alice.j@gmail.com', '9876543210'),
('Bob Smith', NULL, NULL);  -- Handling NULL for missing info
Insert into Loan table:
INSERT INTO Loan (student_id, book_id, issue_date, return_date)
VALUES
(1, 1, '2025-06-01', '2025-06-15'),
(1, 2, '2025-06-16', NULL),   -- Book not returned yet
(2, 3, '2025-06-10', NULL);   -- Bob's loan
Insert into Librarian table:
INSERT INTO Librarian (name, email, phone)
VALUES
('Mr. Thomas', 'thomas.library@univ.edu', '9123456780');
3. UPDATE Statements
Update available book copies after issue:
UPDATE Book
SET available_copies = available_copies - 1
WHERE book_id IN (1, 2);
Update Bob’s email and phone later:
UPDATE Student
SET email = 'bob.smith@gmail.com', phone = '9000000001'
WHERE name = 'Bob Smith';
4. DELETE Statement
Delete a loan record:
DELETE FROM Loan
WHERE loan_id = 1;
5. INSERT Partial Columns
Insert student with only name (others are NULL):
INSERT INTO Student (name)
VALUES ('Charlie Brown');
6. SELECT Rows with NULL values (for checking)
SELECT * FROM Student
WHERE email IS NULL;
