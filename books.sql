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

ALTER TABLE books
ADD COLUMN publisher TEXT,
ADD COLUMN n_pages INTEGER;