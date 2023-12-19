CREATE TABLE books (
  book_id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  author TEXT NOT NULL,
  genre TEXT NOT NULL,
  published_year INTEGER,
  isbn VARCHAR(13) UNIQUE,
  price DECIMAL(10, 2),
  rating DECIMAL(1, 1),
  stock_count INTEGER
)
ALTER TABLE
  books
ADD
  COLUMN publisher TEXT,
ADD
  COLUMN n_pages INTEGER;

INSERT INTO
  books (
    title,
    author,
    genre,
    published_year,
    isbn,
    price,
    rating,
    stock_count,
    publisher,
    n_pages
  )
VALUES
  (
    'A Journey to the Center',
    'Jules Verne',
    'Adventure',
    1864,
    '1234567890123',
    12.99,
    4.5,
    10,
    'Verne Publishing',
    350
  ),
  (
    'War and Peace',
    'Leo Tolstoy',
    'Historical',
    1869,
    '1234567890124',
    14.99,
    4.8,
    5,
    'Tolstoy Prints',
    1200
  ),
  (
    'Whispers of the Wind',
    'Amelia Blackburn',
    'Romance',
    1982,
    '1234567890125',
    9.99,
    4.2,
    20,
    'Blackburn House',
    275
  ),
  (
    'The Galactic Odyssey',
    'Orion Starfield',
    'Science Fiction',
    2005,
    '1234567890126',
    19.99,
    4.9,
    15,
    'Nebula Press',
    450
  );

UPDATE books
SET price = 15.99
    stock_count = stock_count - 1
WHERE title = 'War and Peace'; 


GRANT SELECT, UPDATE ON books TO 'martin'@'localhost';

REVOKE DELETE ON books FROM 'martin'@'localhost';
