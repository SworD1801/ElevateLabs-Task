-- DATA INSERTION
INSERT INTO Authors (name) VALUES ('J.K. Rowling');
INSERT INTO Authors (name) VALUES ('George Orwell');
INSERT INTO Authors (name) VALUES ('Harper Lee');

INSERT INTO Books (title, publication_year, author_id) 
VALUES ('Harry Potter', 1997, 1),
       ('1984', 1949, 2),
       ('To Kill a Mockingbird', NULL, 3);

INSERT INTO Members (name, membership_date) 
VALUES ('Alice Johnson', '2024-01-15'),
       ('Bob Smith', NULL);

INSERT INTO Loans (book_id, member_id, loan_date, return_date) 
VALUES (1, 1, '2024-06-01', NULL);

-- UPDATES
UPDATE Loans
SET return_date = '2024-06-15'
WHERE loan_id = 1;

UPDATE Books
SET title = 'Harry Potter and the Philosopher\'s Stone'
WHERE book_id = 1;

-- DELETION
DELETE FROM Members
WHERE member_id = 2;

-- INSERT USING SELECT
INSERT INTO Books (title, publication_year, author_id)
SELECT 'Animal Farm', 1945, author_id FROM Authors WHERE name = 'George Orwell';