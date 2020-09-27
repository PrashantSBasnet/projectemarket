Drop table User1 cascade constraints;
/*Drop table Customer cascade constraints;*/
/*Drop table Admin cascade constraints;
Drop table Trader cascade constraints;*/

/*Drop table Invoice cascade constraints;*/
/*Drop table Review cascade constraints;*/
Drop table Cart cascade constraints; 
/*Drop table Stock cascade constraints;*/
Drop table Shop cascade constraints;
Drop table Discount cascade constraints;
Drop table Product cascade constraints;
Drop table Payment cascade constraints;
Drop table Order1 cascade constraints;
/*Drop table Collection_Slot cascade constraints;*/
/*Drop table Category cascade constraints;*/


CREATE TABLE  User1 (
    User_ID            INTEGER NOT NULL,
    Name            VARCHAR(50),
    Email           VARCHAR(50),
    Contact_no      INTEGER,
    Address         VARCHAR(50),
    Gender          VARCHAR(50),
    Image            VARCHAR(4000),
    Role            VARCHAR(50),
    Password        VARCHAR(50), 
    vkey            VARCHAR (60),
    CONSTRAINT        User1 PRIMARY KEY (User_ID)
);

/*
CREATE TABLE  Customer (
    Customer_ID            INTEGER NOT NULL,
    Customer_Name      VARCHAR(50),
    User_ID                       INTEGER NOT NULL REFERENCES User1 (User_ID),
    CONSTRAINT    Customer PRIMARY KEY (Customer_ID)
);

CREATE TABLE  Admin (
    Admin_ID                        INTEGER NOT NULL,
    Admin_Name                     VARCHAR(50),
                    User_ID                          INTEGER NOT NULL REFERENCES User1 (User_ID),
       CONSTRAINT            Admin PRIMARY KEY (Admin_ID)
);

CREATE TABLE  Trader (
    Trader_ID       INTEGER NOT NULL,
    Trader_Name                     VARCHAR(50),
    User_ID                          INTEGER NOT NULL REFERENCES User1 (User_ID),
    CONSTRAINT           Trader PRIMARY KEY (Trader_ID)
);
*/



/*
CREATE TABLE  Invoice (
    Invoice_ID      INTEGER NOT NULL,
    User_ID                   INTEGER NOT NULL REFERENCES User1 (User_ID),
        Payment_ID                INTEGER NOT NULL REFERENCES Payment (Payment_ID),
     
    CONSTRAINT           Invoice PRIMARY KEY (Invoice_ID)
);
*/
/*
CREATE TABLE  Review (
    Review_ID          INTEGER NOT NULL,
    Customer_ID    INTEGER NOT NULL REFERENCES Customer (Customer_ID),
    Review    VARCHAR(100),
    CONSTRAINT    Review PRIMARY KEY (Review_ID)
);
*/

/*

CREATE TABLE  Stock (
    Stock_ID            INTEGER NOT NULL ,
    Total_Stock         INTEGER ,
     User_ID          INTEGER NOT NULL REFERENCES User1 (User_ID),
    CONSTRAINT          Stock PRIMARY KEY (Stock_ID)
);

*/

CREATE TABLE Shop (
    Shop_ID                        INTEGER NOT NULL,
    Shop_Name        VARCHAR(50),
        Shop_Type                   VARCHAR(50),
    User_ID    INTEGER NOT NULL REFERENCES User1 (User_ID)  ,
    CONSTRAINT      Shop PRIMARY KEY (SHOP_NAME)
            
);



CREATE TABLE Discount (
    Discount_ID    INTEGER NOT NULL ,
    Disocunt_Rate    INTEGER,
    Start_Date    DATE,
    End_Date      DATE,
    User_ID    INTEGER NOT NULL REFERENCES User1 (User_ID),
    CONSTRAINT    Discount PRIMARY KEY (Discount_ID)
);

CREATE TABLE Product (
    Product_ID     INTEGER NOT NULL ,
    Product_Name     VARCHAR(50),
    
    Shop_Name    VARCHAR(50) NOT NULL REFERENCES Shop (SHOP_NAME),
    Price        INTEGER ,
    Discount_ID    INTEGER,
    Stock    INTEGER ,
    Information    VARCHAR(100),
    Review    VARCHAR(100),
    Category             VARCHAR(200),
    Allergy_Info     VARCHAR(50),    
    Image         VARCHAR(200), 
    Entered_by VARCHAR2(100),
    CONSTRAINT Product PRIMARY KEY (Product_ID)
);


CREATE TABLE  Cart (
    Cart_ID                    INTEGER NOT NULL,
    User_ID                 INTEGER NOT NULL REFERENCES User1 (User_ID),
    Product_ID              INTEGER NOT NULL REFERENCES Product (Product_ID),              
    Qty INTEGER NOT NULL,
    CONSTRAINT           Cart PRIMARY KEY (Cart_ID)
);


CREATE TABLE Payment (
    Payment_ID          INTEGER NOT NULL,
    User_ID           INTEGER NOT NULL REFERENCES User1(User_ID),
  /*  Product_ID        INTEGER NOT NULL REFERENCES Product (Product_ID), */
    Payment_Time          DATE,
    CONSTRAINT Payment PRIMARY KEY (Payment_ID)
);


/*
CREATE TABLE Collection_Slot (
    Collection_Slot_ID    INTEGER NOT NULL,
    Payment_ID    INTEGER NOT NULL REFERENCES Payment (Payment_ID),
    Shop_ID    INTEGER NOT NULL REFERENCES Shop (Shop_ID),
    Slot_Time        TIMESTAMP,    
    Delivery_Date    DATE,
    Delivery_Day    VARCHAR(50),
    CONSTRAINT    Collection_Slot PRIMARY KEY (Collection_Slot_ID)
);
*/


CREATE TABLE Order1 (
    Order_ID     INTEGER NOT NULL,
  /*  Cart_ID INTEGER REFERENCES Cart (Cart_ID),        */  
    Total_Orders    INTEGER NOT NULL,
    Product_ID    INTEGER NOT NULL REFERENCES Product (Product_ID),
    Payment_Status   VARCHAR2(10),
    Order_Time    DATE,
    COLLECTION_SLOT NUMBER(10,0),
    Deliver_Status VARCHAR2(10),
    CONSTRAINT    Order1 PRIMARY KEY (Order_ID)
);


INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (1, 'Emily', 'emily@gmail.com', 4785595, 'Cleckhuddersfax', 'Female ','./images/person_6.jpg', 'Customer','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (2, 'Emma','emma@gmail.com', 4788895, 'Cleckhuddersfax', 'Female ','./images/person_6.jpg', 'Customer','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (3, 'Johnny','johnny@gmail.com', 4785595, 'Cleckhuddersfax', 'Male ','./images/person_6.jpg', 'Customer','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (4, 'Derrick','derrick@gmail.com', 49876978, 'Cleckhuddersfax', 'Male ','./images/person_6.jpg', 'Customer','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (5, 'jane','jane@gmail.com', 465463433, 'Cleckhuddersfax', 'Female ','./images/person_6.jpg', 'Customer','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (6, 'Ram','harry@gmail.com', 45674534, 'Cleckhuddersfax', 'Male ','./images/person_6.jpg', 'Trader','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (7, 'Shyam','john@gmail.com', 4785595, 'Cleckhuddersfax', 'Male ','./images/person_6.jpg', 'Trader','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (8, 'Hari','kate@gmail.com', 45674534, 'Cleckhuddersfax', 'Female ','./images/person_6.jpg', 'Trader','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (9, 'Krishna','rita@gmail.com', 45674534, 'Cleckhuddersfax', 'Female ','./images/person_6.jpg', 'Trader','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (10, 'Sita','jake@gmail.com', 45674534, 'Cleckhuddersfax', 'Male ','./images/person_6.jpg', 'Trader','password');
INSERT INTO   User1 (User_ID, Name, Email, Contact_No, Address, Gender, Image, Role,Password) VALUES (11, 'Prashant','prashant@gmail.com', 4785595, 'Cleckhuddersfax', 'Male ','./images/person_6.jpg', 'Admin','password');

/*
INSERT INTO   Customer (Customer_ID, Customer_Name, User_ID) VALUES (1, 'Emily', 1);
INSERT INTO   Customer (Customer_ID, Customer_Name, User_ID) VALUES (2, 'Emma', 2);
INSERT INTO   Customer (Customer_ID, Customer_Name, User_ID) VALUES (3, 'Johnny', 3);
INSERT INTO   Customer (Customer_ID, Customer_Name, User_ID) VALUES (4, 'Derrick', 4);
INSERT INTO   Customer (Customer_ID, Customer_Name, User_ID) VALUES (5, 'jane', 5);


INSERT INTO   Admin (Admin_ID, Admin_Name, User_ID) VALUES (1, 'Spencer', 11);


INSERT INTO  Trader (Trader_ID, Trader_Name, User_ID) VALUES (1, 'Harry', 6);
INSERT INTO  Trader (Trader_ID, Trader_Name, User_ID) VALUES (2, 'John', 7);
INSERT INTO  Trader (Trader_ID, Trader_Name, User_ID) VALUES (3, 'Kate', 8);
INSERT INTO  Trader (Trader_ID, Trader_Name, User_ID) VALUES (4, 'Rita', 9);
INSERT INTO  Trader (Trader_ID, Trader_Name, User_ID) VALUES (5, 'Jake', 10);
*/

/*
INSERT INTO  Review (Review_ID, Customer_ID, Review) VALUES (1, 1, 'I personally highly recommend it');
INSERT INTO  Review (Review_ID, Customer_ID, Review) VALUES (2, 2, 'The taste was really good');
INSERT INTO  Review (Review_ID, Customer_ID, Review) VALUES (3, 3, 'It was very juicy');
*/

INSERT INTO Shop (Shop_ID, Shop_Name , Shop_Type, User_ID) VALUES (1, 'Fresh Mart','Vegetables and Fruits', 6); 
INSERT INTO Shop (Shop_ID, Shop_Name , Shop_Type, User_ID) VALUES (2, 'Fresh Meat', 'Meat Products', 7); 
INSERT INTO Shop (Shop_ID, Shop_Name , Shop_Type, User_ID) VALUES (3, 'Fresh Bakery', 'Bakery items', 8); 
INSERT INTO Shop (Shop_ID, Shop_Name , Shop_Type, User_ID) VALUES (4, 'Fish Shop', 'Fish and Seafood', 9); 
INSERT INTO Shop (Shop_ID, Shop_Name , Shop_Type, User_ID) VALUES (5, 'Fresh Deli', 'Delicatessen', 10); 

/*
INSERT INTO  Stock (Stock_ID, Total_Stock, User_ID) VALUES (1, 10, 6);
INSERT INTO  Stock (Stock_ID, Total_Stock, User_ID) VALUES (2, 20, 7);
INSERT INTO  Stock (Stock_ID, Total_Stock, User_ID) VALUES (3, 5, 8);
INSERT INTO  Stock (Stock_ID, Total_Stock, User_ID) VALUES (4, 15, 9);
INSERT INTO  Stock (Stock_ID, Total_Stock, User_ID) VALUES (5, 20, 10);
*/
/*
INSERT INTO Discount (Discount_ID, Disocunt_Rate, Start_Date, End_Date , User_ID) VALUES (1, 5, '1/23/2020','2/23/2020', 6);
*/

/*INSERT INTO Product (Product_ID, Product_Name, Shop_Name, Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (1, 'Green Onion', 'Fresh Mart', 5, 10, 76 , 'Very Fresh', 'I recommend', 'Vegetable' ,'Some Groups allergic to Raw Onion','uploads/veg3.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name, Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (2, 'Green Onion', 'Fresh Mart', 5, 10, 51 , 'Very Fresh', 'I recommend', 'Vegetable' ,'Some Groups allergic to Raw Onion','uploads/veg3.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name, Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (3, 'Green Onion', 'Fresh Mart', 5, 10, 41 , 'Very Fresh', 'I recommend', 'Vegetable' ,'Some Groups allergic to Raw Onion','uploads/veg3.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name, Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (4, 'Green Onion', 'Fresh Mart', 5, 10, 71 , 'Very Fresh', 'I recommend', 'Vegetable' ,'Some Groups allergic to Raw Onion','uploads/veg3.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name, Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (5, 'Green Onion', 'Fresh Mart', 5, 10, 31 , 'Very Fresh', 'I recommend', 'Vegetable' ,'Some Groups allergic to Raw Onion','uploads/veg3.jpg','Ram' ); 
*/
INSERT INTO Product (Product_ID, Product_Name, Shop_Name, Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (1, 'Green Onion', 'Fresh Mart', 5, 10, 51 , 'Very Fresh', 'I recommend', 'Vegetable' ,'Some Groups allergic to Raw Onion','uploads/veg3.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name, Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (2, 'Potato', 'Fresh Mart', 6, 20 ,51, 'Very Fresh',  'It is good', 'Vegetable' ,'Rhinitis to some group','uploads/veg3.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (3, 'Pork Belly', 'Fresh Meat', 10, 30 ,82, 'High Qualty',  'Fresh and hygienic', 'Meat','People Allergic to Cat is likey to develop allergy','uploads/porkbelly.jpg','Shyam' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (4, 'Kiwi', 'Fish Shop', 10, 20 ,39 , 'Very Fresh', 'Very Tasty', 'Fruits', 'Mild prickly symptoms to some','uploads/fruit2.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (5, 'Apple','Fresh Bakery', 5, 15 ,53 , 'Very Fresh', 'Apple a day keeps the doctor away', 'Fruits', 'Sensitive groups develop symptoms','uploads/fruit3.jpg','Ram' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (6, 'Chicken Breast','Fresh Meat', 500, 15 ,52 , 'Very Fresh', 'Protein Diet', 'Meat', 'Good for meat lovers','uploads/chickenbreast.jpg','Shyam' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (7, 'Cake','Fresh Bakery', 1500, 150 ,63 , 'Very Fresh', 'Sweet', 'Bakery', 'Good for bakery lovers','uploads/cake1.jpg','Hari' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (9, 'Pastery','Fresh Bakery', 500, 15 ,63 , 'Very Fresh', 'Protein Diet', 'Bakery', 'Good for bakery lovers','uploads/pastry.jpg','Hari' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (10, 'Tuna','Fish Shop', 500, 15 ,54 , 'Protein', 'Protein Supplement', 'Fish and Seafood', 'Good source of protein','uploads/tuna.jpg','Krishna' ); 
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (11, 'Rohu','Fish Shop', 600, 15 ,64 , 'Protein', 'Protein Supplement', 'Fish and Seafood', 'Good source of protein','uploads/rohu.jpg','Krishna' );
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (12, 'Coffee','Fresh Bakery', 600, 15 ,65, 'Essentials', 'Breakfast', 'Delicateseen', 'Essential','uploads/coffee.jpg','Sita' );
INSERT INTO Product (Product_ID, Product_Name, Shop_Name,  Price, Discount_ID, Stock, Information, Review, Category, Allergy_Info, Image, Entered_by) VALUES (13, 'Fine Green Tea','Fresh Bakery', 600, 15 ,55 , 'Essentials', 'Always good', 'Delicateseen', 'Delicateseen','uploads/green.jpg','Sita' );





INSERT INTO Payment (Payment_ID, User_ID, Payment_Time ) VALUES (1,1,'01/01/2020');
INSERT INTO Payment (Payment_ID, User_ID, Payment_Time) VALUES (2,2, '');
INSERT INTO Payment (Payment_ID, User_ID, Payment_Time) VALUES (3,3, '');
INSERT INTO Payment (Payment_ID, User_ID,  Payment_Time) VALUES (4,4, '');
INSERT INTO Payment (Payment_ID, User_ID,  Payment_Time) VALUES (5,5, '');


INSERT INTO Order1(Order_ID,  Total_Orders, Product_ID, Payment_STATUS, Order_Time, Collection_Slot, DELIVER_STATUS) VALUES (1,   10, 1, 'Y','01/01/2020','', 'Y');
INSERT INTO Order1(Order_ID,  Total_Orders, Product_ID, Payment_STATUS, Order_Time, Collection_Slot, DELIVER_STATUS) VALUES (2,   9, 2, 'Y','02/02/2020','',  'N');
INSERT INTO Order1(Order_ID,   Total_Orders, Product_ID, Payment_STATUS, Order_Time, Collection_Slot, DELIVER_STATUS) VALUES (3,  8, 3, 'Y','05/20/2020','', 'Y');
INSERT INTO Order1(Order_ID,  Total_Orders, Product_ID, Payment_STATUS, Order_Time, Collection_Slot, DELIVER_STATUS) VALUES (4,  7, 4, 'Y','05/14/2020','', 'Y');
INSERT INTO Order1(Order_ID,   Total_Orders, Product_ID, Payment_STATUS, Order_Time, Collection_Slot, DELIVER_STATUS) VALUES (5,   6, 5, 'Y','05/04/2020','', 'Y');




​