-- Create 'users' table
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INTEGER,
    registered_on DATE
);
-- Insert data into 'users' table
INSERT INTO users (name, email, age, registered_on) VALUES
('Rahul Sharma', 'rahul.sharma@email.com', 28, '2023-01-12'),
('Aditi Desai', 'aditi.desai@email.com', 34, '2022-11-10'),
('Vikram Singh', 'vikram.singh@email.com', 26, '2023-04-05'),
('Priya Patel', 'priya.patel@email.com', 30, '2022-09-21'),
('Siddharth Rao', 'siddharth.rao@email.com', 24, '2023-02-17'),
('Neha Gupta', 'neha.gupta@email.com', 29, '2021-07-12'),
('Manish Kumar', 'manish.kumar@email.com', 32, '2023-01-01'),
('Sneha Kapoor', 'sneha.kapoor@email.com', 25, '2023-05-15'),
('Ravi Mehra', 'ravi.mehra@email.com', 35, '2022-08-19'),
('Kavita Iyer', 'kavita.iyer@email.com', 28, '2022-11-03'),
('Ajay Bansal', 'ajay.bansal@email.com', 31, '2021-12-22'),
('Sanya Gupta', 'sanya.gupta@email.com', 27, '2023-03-10'),
('Ravi Kumar', 'ravi.kumar@email.com', 33, '2022-10-02'),
('Anjali Shah', 'anjali.shah@email.com', 29, '2023-04-19'),
('Shubham Thakur', 'shubham.thakur@email.com', 25, '2023-06-25'),
('Meera Joshi', 'meera.joshi@email.com', 31, '2022-06-13'),
('Harshad Rao', 'harshad.rao@email.com', 28, '2023-02-22'),
('Pooja Reddy', 'pooja.reddy@email.com', 32, '2023-07-10'),
('Vishal Verma', 'vishal.verma@email.com', 29, '2023-01-18'),
('Neeraj Agarwal', 'neeraj.agarwal@email.com', 33, '2022-05-05');


-- Create 'products' table
CREATE TABLE IF NOT EXISTS products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category TEXT,
    in_stock INTEGER NOT NULL
);
-- Insert data into 'products' table
INSERT INTO products (name, price, category, in_stock) VALUES
('Samsung Galaxy S23', 74999.99, 'Electronics', 120),
('Sony WH-1000XM5', 24990.50, 'Electronics', 80),
('Nike Air Zoom Pegasus', 4999.00, 'Footwear', 200),
('Adidas Ultraboost', 14999.00, 'Footwear', 150),
('Oppo F21 Pro', 24990.00, 'Electronics', 300),
('LG 43-inch LED TV', 21990.00, 'Electronics', 50),
('Apple MacBook Pro', 149999.00, 'Electronics', 60),
('Dell Inspiron 14', 54990.00, 'Electronics', 90),
('Kirana Store Rice', 80.00, 'Groceries', 500),
('Patanjali Ghee', 450.00, 'Groceries', 400),
('Tata Tea Gold', 120.00, 'Groceries', 600),
('Bajaj Pulsar 150', 109000.00, 'Vehicles', 30),
('Maruti Swift', 700000.00, 'Vehicles', 15),
('Tata Nexon', 1400000.00, 'Vehicles', 10),
('Voltas Air Conditioner', 34990.00, 'Appliances', 75),
('Philips Electric Kettle', 1899.00, 'Appliances', 200),
('Samsung Refrigerator', 24990.00, 'Appliances', 50),
('Bose SoundLink Speaker', 19990.00, 'Electronics', 120),
('Lenskart Eyewear', 2499.00, 'Fashion', 350);


-- Create 'orders' table
CREATE TABLE IF NOT EXISTS orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(product_id) REFERENCES products(id)
);
-- Insert data into 'order' table
INSERT INTO orders (user_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2023-01-15'),
(2, 3, 2, '2022-11-12'),
(3, 2, 1, '2023-04-06'),
(4, 6, 1, '2022-09-22'),
(5, 9, 3, '2023-02-18'),
(6, 10, 2, '2021-07-13'),
(7, 8, 1, '2023-01-03'),
(8, 4, 1, '2023-05-16'),
(9, 7, 1, '2022-08-20'),
(10, 5, 2, '2022-11-04'),
(11, 1, 1, '2021-12-23'),
(12, 2, 1, '2023-03-11'),
(13, 6, 1, '2022-10-03'),
(14, 4, 2, '2023-04-20'),
(15, 3, 1, '2023-06-26'),
(16, 11, 1, '2022-06-14'),
(17, 14, 1, '2023-02-23'),
(18, 12, 2, '2023-07-11'),
(19, 13, 1, '2023-01-19'),
(20, 15, 2, '2022-05-06');


-- Create 'employees' table
CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    position TEXT,
    salary REAL,
    hire_date DATE
);
-- Insert data into 'employees' table
INSERT INTO employees (name, position, salary, hire_date) VALUES
('Amit Kumar', 'Software Engineer', 50000, '2021-01-20'),
('Rita Sharma', 'HR Manager', 60000, '2022-03-05'),
('Sandeep Singh', 'Sales Executive', 35000, '2023-04-11'),
('Kiran Patel', 'Product Manager', 70000, '2020-11-10'),
('Rahul Verma', 'Software Engineer', 55000, '2021-07-14'),
('Snehal Yadav', 'Marketing Head', 75000, '2022-05-20'),
('Pradeep Gupta', 'Accountant', 40000, '2023-06-30'),
('Anjali Mehta', 'Business Analyst', 65000, '2022-08-15'),
('Harish Bhatia', 'Developer', 48000, '2023-02-03'),
('Neha Mishra', 'UX Designer', 55000, '2021-09-09'),
('Rajesh Kumar', 'Sales Manager', 60000, '2020-12-30'),
('Vandana Pandey', 'Finance Analyst', 45000, '2021-05-25'),
('Ravi Joshi', 'Customer Support', 35000, '2022-07-14'),
('Shreya Chauhan', 'Project Manager', 85000, '2021-02-17'),
('Ajay Mehta', 'HR Executive', 30000, '2020-09-05'),
('Pooja Sharma', 'Admin', 25000, '2023-01-22'),
('Manoj Tiwari', 'Software Architect', 95000, '2022-04-02'),
('Suman Verma', 'Marketing Executive', 40000, '2023-07-14'),
('Chandresh Bhatt', 'Legal Advisor', 70000, '2021-11-12'),
('Bharati Singh', 'Product Designer', 62000, '2022-01-10');


-- Create 'customers' table
CREATE TABLE IF NOT EXISTS customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    address TEXT
);
-- Insert data into 'customers' table
INSERT INTO customers (name, email, phone, address) VALUES
('Sunil Rao', 'sunil.rao@email.com', '9876543210', 'Mumbai, Maharashtra'),
('Manju Yadav', 'manju.yadav@email.com', '9876532100', 'Delhi, Delhi'),
('Asha Kumari', 'asha.kumari@email.com', '9876543211', 'Bengaluru, Karnataka'),
('Ajay Reddy', 'ajay.reddy@email.com', '9876523100', 'Hyderabad, Telangana'),
('Simran Kaur', 'simran.kaur@email.com', '9876512030', 'Chandigarh'),
('Ravi Tiwari', 'ravi.tiwari@email.com', '9876501234', 'Lucknow, UP'),
('Madhavi Gupta', 'madhavi.gupta@email.com', '9876498765', 'Patna, Bihar'),
('Deepika Shah', 'deepika.shah@email.com', '9876487654', 'Ahmedabad, Gujarat'),
('Rajendra Joshi', 'rajendra.joshi@email.com', '9876476543', 'Pune, Maharashtra'),
('Neelam Agarwal', 'neelam.agarwal@email.com', '9876465432', 'Jaipur, Rajasthan'),
('Sahil Mehra', 'sahil.mehra@email.com', '9876454321', 'Kolkata, West Bengal'),
('Anil Sharma', 'anil.sharma@email.com', '9876443210', 'Chennai, Tamil Nadu'),
('Priyanka Saini', 'priyanka.saini@email.com', '9876432100', 'Bhopal, Madhya Pradesh'),
('Sanjay Kumar', 'sanjay.kumar@email.com', '9876421098', 'Indore, MP'),
('Rita Dubey', 'rita.dubey@email.com', '9876410987', 'Nagpur, Maharashtra'),
('Vikash Verma', 'vikash.verma@email.com', '9876409876', 'Jaipur, Rajasthan'),
('Ashok Yadav', 'ashok.yadav@email.com', '9876398765', 'Noida, Uttar Pradesh'),
('Rani Joshi', 'rani.joshi@email.com', '9876387654', 'Varanasi, UP'),
('Manisha Thakur', 'manisha.thakur@email.com', '9876376543', 'Dehradun, Uttarakhand'),
('Gaurav Pandey', 'gaurav.pandey@email.com', '9876365432', 'Gurugram, Haryana');


-- Create 'transactions' table
CREATE TABLE IF NOT EXISTS transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    amount REAL NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id)
);
-- Insert data into 'transactions' table
INSERT INTO transactions (user_id, amount, transaction_date) VALUES
(1, 5000.00, '2023-01-15'),
(2, 7000.00, '2022-11-12'),
(3, 3500.50, '2023-04-06'),
(4, 12000.00, '2022-09-22'),
(5, 8000.00, '2023-02-18'),
(6, 2000.50, '2021-07-13'),
(7, 9500.00, '2023-01-03'),
(8, 4000.00, '2023-05-16'),
(9, 1500.75, '2022-08-20'),
(10, 2200.00, '2022-11-04'),
(11, 5000.00, '2021-12-23'),
(12, 7800.00, '2023-03-11'),
(13, 6600.00, '2022-10-03'),
(14, 4500.50, '2023-04-20'),
(15, 3200.00, '2023-06-26'),
(16, 2200.75, '2022-06-14'),
(17, 5400.00, '2023-02-23'),
(18, 1000.50, '2023-07-11'),
(19, 6500.00, '2023-01-19'),
(20, 3200.00, '2022-05-06');


-- Create 'inventory' table
CREATE TABLE IF NOT EXISTS inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id INTEGER NOT NULL,
    quantity_in_stock INTEGER NOT NULL,
    warehouse_location TEXT,
    FOREIGN KEY(product_id) REFERENCES products(id)
);
-- Insert data into 'inventory' table
INSERT INTO inventory (product_id, quantity_in_stock, warehouse_location) VALUES
(1, 100, 'Mumbai Warehouse'),
(2, 150, 'Delhi Warehouse'),
(3, 200, 'Bengaluru Warehouse'),
(4, 50, 'Hyderabad Warehouse'),
(5, 75, 'Chandigarh Warehouse'),
(6, 60, 'Patna Warehouse'),
(7, 120, 'Kolkata Warehouse'),
(8, 90, 'Pune Warehouse'),
(9, 300, 'Lucknow Warehouse'),
(10, 400, 'Indore Warehouse'),
(11, 500, 'Ahmedabad Warehouse'),
(12, 60, 'Chennai Warehouse'),
(13, 200, 'Bhopal Warehouse'),
(14, 100, 'Nagpur Warehouse'),
(15, 150, 'Jaipur Warehouse'),
(16, 75, 'Noida Warehouse'),
(17, 200, 'Varanasi Warehouse'),
(18, 300, 'Gurugram Warehouse'),
(19, 150, 'Dehradun Warehouse'),
(20, 250, 'Mumbai Warehouse');


-- Create 'reviews' table
CREATE TABLE IF NOT EXISTS reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    rating INTEGER CHECK(rating BETWEEN 1 AND 5),
    review_text TEXT,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(product_id) REFERENCES products(id)
);
-- Insert data into 'reviews' table
INSERT INTO reviews (user_id, product_id, rating, review_text) VALUES
(1, 1, 4, 'Great phone with excellent camera quality!'),
(2, 3, 5, 'Amazing shoes, very comfortable and stylish.'),
(3, 2, 3, 'Decent quality headphones, but not the best sound quality.'),
(4, 6, 5, 'Highly recommend this TV, amazing picture quality!'),
(5, 9, 4, 'Good quality rice, value for money.'),
(6, 10, 5, 'Patanjali ghee is top quality and tasty.'),
(7, 8, 4, 'Nice footwear, very comfortable for daily use.'),
(8, 4, 5, 'Oppo F21 is really smooth and quick.'),
(9, 7, 5, 'Apple MacBook Pro is a beast for work and entertainment!'),
(10, 5, 4, 'Decent laptop, great performance.'),
(11, 1, 5, 'Love this phone, performance and camera are fantastic.'),
(12, 2, 3, 'The headphones are good but could improve the noise cancellation.'),
(13, 6, 5, 'One of the best televisions I have used.'),
(14, 11, 4, 'Best electric kettle, boils water quickly.'),
(15, 13, 5, 'Philips AC is fantastic, great cooling.'),
(16, 12, 4, 'Nice refrigerator, keeps food fresh for long.'),
(17, 14, 4, 'Air conditioning works great in this hot weather.'),
(18, 15, 4, 'Great quality, sound is very clear.'),
(19, 16, 5, 'The speaker has amazing bass and sound quality.'),
(20, 17, 4, 'Comfortable, but a little tight for wide feet.');


-- Create 'suppliers' table
CREATE TABLE IF NOT EXISTS suppliers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    contact_email TEXT NOT NULL UNIQUE,
    phone TEXT,
    rating INTEGER CHECK(rating BETWEEN 1 AND 5)
);
-- Insert data into 'suppliers' table
INSERT INTO suppliers (name, contact_email, phone, rating) VALUES
('Tata Electronics', 'contact@tataelectronics.com', '9823456789', 5),
('Sony India', 'contact@sonyindia.com', '9845678901', 4),
('Nike India', 'nikeindia@nike.com', '9966778899', 4),
('Adidas India', 'contact@adidas.com', '9837345643', 5),
('Samsung Electronics', 'info@samsung.com', '9876765432', 5),
('Oppo India', 'support@oppo.com', '9801234567', 4),
('Dell India', 'dell.support@dell.com', '9988776655', 4),
('LG Electronics', 'info@lgelectronics.com', '9876543210', 5),
('Bajaj Auto', 'bajaj@bajajauto.com', '9933445566', 5),
('Voltas', 'support@voltas.com', '9607384632', 4),
('Philips India', 'philips.india@philips.com', '9834976373', 5),
('Tata Tea', 'support@tatatea.com', '9845674321', 5),
('Patanjali', 'info@patanjali.com', '9743246543', 4),
('Bose India', 'contact@boseindia.com', '9758473645', 5),
('Apple India', 'support@apple.com', '9887766655', 4),
('Havells India', 'havells@havells.com', '9934556778', 5),
('Kirana Suppliers', 'kiranasupplier@email.com', '9632587410', 3),
('Maruti Suzuki', 'support@marutisuzuki.com', '9988776655', 5),
('Volvo India', 'contact@volvo.com', '9725314685', 4);


-- Create 'payments' table
CREATE TABLE IF NOT EXISTS payments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    payment_method TEXT NOT NULL,
    payment_date DATE NOT NULL,
    amount_paid REAL NOT NULL,
    FOREIGN KEY(order_id) REFERENCES orders(id)
);
-- Insert data into 'payments' table
INSERT INTO payments (order_id, payment_method, payment_date, amount_paid) VALUES
(1, 'Credit Card', '2023-01-15', 5000.00),
(2, 'Debit Card', '2022-11-12', 7000.00),
(3, 'Net Banking', '2023-04-06', 3500.50),
(4, 'UPI', '2022-09-22', 12000.00),
(5, 'Credit Card', '2023-02-18', 8000.00),
(6, 'Debit Card', '2021-07-13', 2000.50),
(7, 'Net Banking', '2023-01-03', 9500.00),
(8, 'UPI', '2023-05-16', 4000.00),
(9, 'Credit Card', '2022-08-20', 1500.75),
(10, 'Debit Card', '2022-11-04', 2200.00),
(11, 'UPI', '2021-12-23', 5000.00),
(12, 'Net Banking', '2023-03-11', 7800.00),
(13, 'Credit Card', '2022-10-03', 6600.00),
(14, 'Debit Card', '2023-04-20', 4500.50),
(15, 'UPI', '2023-06-26', 3200.00),
(16, 'Credit Card', '2022-06-14', 2200.75),
(17, 'Debit Card', '2023-02-23', 5400.00),
(18, 'Net Banking', '2023-07-11', 1000.50),
(19, 'UPI', '2023-01-19', 6500.00),
(20, 'Credit Card', '2022-05-06', 3200.00);
