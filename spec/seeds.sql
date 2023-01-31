TRUNCATE TABLE books RESTART IDENTITY;

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO books (title, author_name) VALUES ('Twilight', 'Stephanie Meyer');
INSERT INTO books (title, author_name) VALUES ('The Hunger Games', 'Suzanne Collins');
INSERT INTO books (title, author_name) VALUES ('Becoming', 'Michelle Obama');
