

CREATE DATABASE geektext;

CREATE TABLE "User" (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(30),
    password VARCHAR(30),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
);

CREATE TABLE CreditCard (
    card_id SERIAL PRIMARY KEY,
    card_number VARCHAR(16),
    expiration_date VARCHAR(5),
	card_user_id Serial REFERENCES "User"(user_id) ON DELETE CASCADE
);

CREATE TABLE Book (
    ISBN INT PRIMARY KEY,
    authorID INT REFERENCES Author (authorKey),
    firstName VARCHAR,
    lastName VARCHAR,
    publisher VARCHAR,
    biography VARCHAR,
);

CREATE TABLE Author (
    authorKey INT PRIMARY KEY,
    bookName VARCHAR,
    bookDescription VARCHAR,
    bookPrice INT,
    bookGenre VARCHAR,
    bookPublisher VARCHAR,
    yearPublished INT
    copiesSold INT,
);

CREATE TABLE Wishlist (
    wishlist_id SERIAL PRIMARY KEY,
    user_id Serial REFERENCES "User"(user_id) NOT NULL,
    ISBN INT[] REFERENCES Book(ISBN) NOT NULL
)

