show databases;
create database B22;
use B22;

CREATE TABLE products (
    pid INT AUTO_INCREMENT PRIMARY KEY,
    pname VARCHAR(30),
    category ENUM('winter wear', 'stationary', 'accessories'),
    price DECIMAL(10, 2)
);

CREATE TABLE locations (
    locid INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE times (
    timeid INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    week NUMERIC(2,0),
    month NUMERIC(2,0),
    quarter NUMERIC(2,0),
    year NUMERIC(4,0),
    holiday_flag BOOLEAN,
    CONSTRAINT year_range CHECK (year BETWEEN 2015 AND 2020)
);

CREATE TABLE sales (
    pid INT,
    locid INT,
    timeid INT,
    sales INT,
    PRIMARY KEY (pid, locid, timeid),
    FOREIGN KEY (pid) REFERENCES products(pid),
    FOREIGN KEY (locid) REFERENCES locations(locid),
    FOREIGN KEY (timeid) REFERENCES times(timeid)
);

INSERT INTO products (pname, category, price) VALUES
('Woolen Sweater', 'winter wear', 1800.00),
('Thermal Wear', 'winter wear', 800.50),
('Winter Gloves', 'winter wear', 350.75),
('Notebook', 'stationary', 40.99),
('Gel Pen Pack', 'stationary', 25.99),
('Pencil Box', 'stationary', 15.49),
('Leather Wallet', 'accessories', 1200.00),
('Handbag', 'accessories', 2400.00),
('Sunglasses', 'accessories', 1500.00),
('Shawl', 'winter wear', 1200.00),
('Woolen Socks', 'winter wear', 500.00),
('Scarf', 'winter wear', 800.00),
('Desk Organizer', 'stationary', 450.00),
('Pencil Set', 'stationary', 25.00),
('Post-it Notes', 'stationary', 100.00),
('Portable Power Bank', 'accessories', 1200.00),
('Bluetooth Headphones', 'accessories', 3500.00),
('Mobile Case', 'accessories', 800.00),
('Laptop Sleeve', 'accessories', 1400.00),
('Coffee Mug', 'accessories', 350.00);

INSERT INTO locations (city, state, country) VALUES
('New Delhi', 'Delhi', 'India'),
('Mumbai', 'Maharashtra', 'India'),
('Bangalore', 'Karnataka', 'India'),
('Chennai', 'Tamil Nadu', 'India'),
('Kolkata', 'West Bengal', 'India'),
('Hyderabad', 'Telangana', 'India'),
('Pune', 'Maharashtra', 'India'),
('Ahmedabad', 'Gujarat', 'India'),
('Jaipur', 'Rajasthan', 'India'),
('Chandigarh', 'Punjab', 'India');

INSERT INTO times (date, week, month, quarter, year, holiday_flag) VALUES
('2015-01-26', 4, 1, 1, 2015, TRUE),    -- Republic Day
('2015-02-14', 7, 2, 1, 2015, FALSE),
('2015-03-08', 10, 3, 1, 2015, TRUE),   -- International Women's Day
('2015-04-14', 15, 4, 2, 2015, TRUE),   -- Ambedkar Jayanti
('2015-05-01', 18, 5, 2, 2015, TRUE),   -- Labour Day
('2015-06-15', 25, 6, 2, 2015, FALSE),
('2015-07-04', 27, 7, 3, 2015, FALSE),
('2015-08-15', 32, 8, 3, 2015, TRUE),   -- Independence Day
('2015-09-27', 39, 9, 3, 2015, FALSE),
('2015-10-02', 40, 10, 4, 2015, TRUE),  -- Mahatma Gandhi Jayanti
('2015-11-14', 46, 11, 4, 2015, TRUE),  -- Diwali
('2015-12-25', 52, 12, 4, 2015, TRUE),  -- Christmas
('2016-01-26', 4, 1, 1, 2016, TRUE),    -- Republic Day
('2016-03-08', 10, 3, 1, 2016, FALSE),
('2016-04-14', 15, 4, 2, 2016, TRUE),   -- Ambedkar Jayanti
('2016-05-01', 18, 5, 2, 2016, TRUE),   -- Labour Day
('2016-06-15', 25, 6, 2, 2016, FALSE),
('2016-07-04', 27, 7, 3, 2016, FALSE),
('2016-08-15', 32, 8, 3, 2016, TRUE),   -- Independence Day
('2016-09-27', 39, 9, 3, 2016, FALSE),
('2016-10-02', 40, 10, 4, 2016, TRUE),  -- Mahatma Gandhi Jayanti
('2016-11-14', 46, 11, 4, 2016, TRUE),  -- Diwali
('2016-12-25', 52, 12, 4, 2016, FALSE),
('2017-01-26', 4, 1, 1, 2017, TRUE),    -- Republic Day
('2017-02-14', 7, 2, 1, 2017, FALSE),
('2017-03-08', 10, 3, 1, 2017, TRUE),   -- International Women's Day
('2017-04-14', 15, 4, 2, 2017, TRUE),   -- Ambedkar Jayanti
('2017-05-01', 18, 5, 2, 2017, TRUE),   -- Labour Day
('2017-06-15', 25, 6, 2, 2017, FALSE),
('2017-07-04', 27, 7, 3, 2017, FALSE),
('2017-08-15', 32, 8, 3, 2017, TRUE),   -- Independence Day
('2017-09-27', 39, 9, 3, 2017, FALSE),
('2017-10-02', 40, 10, 4, 2017, TRUE),  -- Mahatma Gandhi Jayanti
('2017-11-14', 46, 11, 4, 2017, TRUE),  -- Diwali
('2017-12-25', 52, 12, 4, 2017, FALSE),
('2018-01-26', 4, 1, 1, 2018, TRUE),    -- Republic Day
('2018-02-14', 7, 2, 1, 2018, FALSE),
('2018-03-08', 10, 3, 1, 2018, TRUE),   -- International Women's Day
('2018-04-14', 15, 4, 2, 2018, TRUE),   -- Ambedkar Jayanti
('2018-05-01', 18, 5, 2, 2018, TRUE),   -- Labour Day
('2018-06-15', 25, 6, 2, 2018, FALSE),
('2018-07-04', 27, 7, 3, 2018, FALSE),
('2018-08-15', 32, 8, 3, 2018, TRUE),   -- Independence Day
('2018-09-27', 39, 9, 3, 2018, FALSE),
('2018-09-28', 39, 9, 3, 2018, FALSE),
('2018-09-29', 39, 9, 3, 2018, FALSE),
('2018-09-30', 39, 9, 3, 2018, FALSE),
('2018-10-02', 40, 10, 4, 2018, TRUE),  -- Mahatma Gandhi Jayanti
('2018-11-14', 46, 11, 4, 2018, TRUE),  -- Diwali
('2018-12-25', 52, 12, 4, 2018, FALSE);


INSERT INTO sales (pid, locid, timeid, sales) VALUES
(1, 1, 24, 500),
(2, 2, 25, 250),
(3, 3, 26, 400),
(4, 4, 27, 150),
(5, 5, 28, 300),
(6, 6, 29, 600),
(7, 7, 30, 800),
(8, 8, 31, 650),
(9, 9, 32, 700),
(10, 10, 33, 550),
(11, 1, 34, 200),
(12, 2, 35, 120),
(13, 3, 36, 300),
(14, 4, 37, 450),
(15, 5, 38, 350),
(16, 6, 39, 400),
(17, 7, 40, 250),
(18, 8, 41, 500),
(19, 9, 42, 150),
(20, 10, 43, 600),
(1, 3, 44, 400),
(2, 4, 45, 350),
(3, 5, 46, 100),
(4, 6, 47, 450),
(5, 7, 48, 150),
(6, 8, 49, 350),
(7, 9, 50, 500),
(8, 10, 51, 600),
(9, 1, 52, 400),
(10, 2, 53, 350),
(11, 3, 54, 250),
(12, 4, 55, 100),
(13, 5, 56, 300),
(14, 6, 57, 450),
(15, 7, 58, 600),
(16, 8, 59, 400),
(17, 9, 60, 350),
(18, 10, 61, 500),
(19, 1, 62, 250),
(20, 2, 63, 550),
(1, 3, 64, 150),
(2, 4, 65, 200),
(3, 5, 66, 100),
(4, 6, 67, 350),
(5, 7, 68, 450),
(6, 8, 69, 400),
(7, 9, 70, 600),
(8, 10, 71, 500),
(9, 1, 72, 350),
(10, 2, 73, 600);
-- Q.Find total sales according to year.
select sum(sales) as Total_Sales ,year from sales natural join times group by year;

-- Q.Find total sales according to state.
select sum(sales) as Total_Sales ,state from sales natural join locations group by state;



















