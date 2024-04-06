create database cuahang;
use cuahang;
create table account(
	acc_name varchar(255) primary key,
    acc_password varchar(255) NOT NULL,
    acc_email varchar(255) not null
);
create table user(
	u_id int primary key auto_increment,
    u_name varchar(255) references user(u_name),
    u_fullname varchar(255) not null,
    u_phone varchar(255) not null,
    u_addr varchar(255) not null,
    RegistrationDate TIMESTAMP DEFAULT current_timestamp
);
create table product(
	p_id varchar(255) primary key,
	p_name varchar(255),
	p_category varchar(255),
	p_quantify int(5),
	p_price decimal(11,2) check( p_price > 0),
	p_img varchar(255),
    p_decription text
);
create table cart(
	c_name varchar(255) references account(acc_name),
    c_id varchar(255) references product(p_id)
);
-- Order status
create table OrderInfor(
	order_id int primary key auto_increment,
    acc_name varchar(255) references account(acc_name),
	order_date timestamp default current_timestamp,
    order_totalAmount decimal(11,2) NOT NULL,
    order_status ENUM('Pending','Confirm','Shipped','Deliveried','Cancelled') DEFAULT 'Pending'
);
-- Table for storing order items
CREATE TABLE OrderItem(
    OrderItem_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_id INT REFERENCES OrderInfor(Order_id),
    P_id INT REFERENCES Product(p_id),
    OrderItem_Quantity INT NOT NULL,
    OrderItem_Price DECIMAL(11, 2) NOT NULL
);
