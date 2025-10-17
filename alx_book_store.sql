   CREATE DATABASE alx_book_store;
   USE alx_book_store;
    CREATE TABLE AUTHORS (
         author_id INT PRIMARY KEY,
         author_name VARCHAR(215)
    );
    CREATE TABLE BOOKS (
         book_id INT PRIMARY KEY,
         title VARCHAR(130),
         author_id INT,
         FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id),
         price DOUBLE ,
         publication_date DATE 
    );

    CREATE TABLE CUSTOMERS (
         customer_id INT PRIMARY KEY,
         customer_name VARCHAR(215),
         email VARCHAR(215),
         address TEXT
    );

    CREATE TABLE ORDERS (
            order_id INT PRIMARY KEY,
            customer_id INT,
            FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id),
            order_date DATE
    );

    CREATE TABLE ORDER_DETAILS (
        orderdetailid INT PRIMARY KEY,
        order_id INT,
        book_id INT,
        FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
        FOREIGN KEY (book_id) REFERENCES BOOKS(book_id),
        quantity DOUBLE
    );
