REM   Script: DBMS PROJECT
REM   online food delivery database 

CREATE TABLE Admin(     
Admin_id number(8) primary key,     
Admin_name varchar(15) NOT NULL,     
Admin_password varchar(16) NOT NULL);

INSERT INTO Admin VALUES (01,'Team-GBH','GBH-@123');

select * from Admin;

CREATE TABLE customer(   
customer_id number(8) primary key,  
customer_firstname varchar(30) NOT NULL,    
customer_lastname varchar(30) NOT NULL,   
customer_password varchar(16) NOT NULL,   
customer_phoneno varchar(10) NOT NULL,    
customer_address varchar(50) NOT NULL,   
customer_email varchar(20) NOT NULL,    
Admin_id int references Admin(Admin_id));

INSERT INTO customer VALUES  
(02,'Jainam','Shah','Jainu$820',9924567892,'117, Examiner Road,  
Fort,Mumbai, Maharashtra','jainam33@gmail.com1',01);

INSERT INTO customer VALUES  
(02,'Jainam','Shah','Jainu$820',9924567892,'117, Examiner Road,  
Fort,Mumbai, Maharashtra','jainam33@gmail.com1',01);

INSERT INTO customer VALUES  
(01,'Harsh','Mehta','harsh#212',7435068222,'1st Cross,Rammurthy  
nagar,Bangalore' , 'mehta19@gmail.com',01);

INSERT INTO customer VALUES (02,'Jainam','Shah','Jainu$820',9924567892,'117, Examiner Road,  
Fort,Mumbai, Maharashtra','jainam33@gmail.com1',01);

INSERT INTO customer VALUES  
(03,'Ishaan','Dawra','bmw@765',9874578428,'1723,Opp. Clock Tower  
Ludhiana,Punjab','ishaan@gmail.com',01);

INSERT INTO customer VALUES  
(03,'Ishaan','Dawra','bmw@765',9874578428,'1723,Opp. Clock Tower  
Ludhiana,Punjab','ishaan@gmail.com',01);

INSERT INTO customer VALUES  
(04,'James','Heckins','Dodge@985',8902345789,'Bee H-138,  
Kodambakkam Road,Chennai, Karnataka','james23@gmail.com',01);

INSERT INTO customer VALUES  
(05,'Muskanpreet','Kaur','lovi@123',9934654319,'854,Guru Nanak Nagar  
Amritsar, Punjab','muskan@gmail.com',01);

INSERT INTO customer VALUES  
(06,'Karanpreet','Singh','rocket@123',7734688001,'Opp. Satsang  
Bhawan,Beas,Punjab','karan12@gmail.com',01);

INSERT INTO customer VALUES  
(07,'Divyanka','Kapoor','Cat@123',9867445890,'A/3, Alpha  
City,Mumbai,Maharashtra','div3421@gmail.com',01);

INSERT INTO customer VALUES  
(08,'Rustom','Pavri','Rustom&993',8839950081,'134,14,Nagarathpet  
Main  Road,Banglore,Karnataka','pavri44@gmail.com',01);

INSERT INTO customer VALUES  
(09,'Lovish','Singla','love@123',9891444976,' 754 Arjan Dev  
Nagar,Amritsar,Punjab','lovish50@gmail.com',01);

INSERT INTO customer VALUES  
(10,'Jogesh','Das','Jogesh@231',8870080010,'854 Gali No.1 Mujessar,Ram  
Colony,Haryana','dasjogesh5@gmail.com',01);

SELECT * FROM customer;

CREATE TABLE restaurant(     
Admin_id number(8) references Admin(Admin_id),   
restaurant_id number(8) primary key,   
restaurant_name varchar(20) NOT NULL,   
restaurant_address varchar(50) NOT NULL,   
restaurant_password varchar(16) NOT NULL,     
restaurant_phoneno varchar(10) NOT NULL     
);

INSERT INTO restaurant VALUES(01,111,'China  
Town','66,Residency,Bengaluru,Karnataka','ct@111',8066606969);

INSERT INTO restaurant VALUES(01,112,'Leaf Hatch','F 
30,Sampige,Chennai,Tamil Nadu','LHat@112',8762204545);

INSERT INTO restaurant VALUES(01,113,'Spicy Terrace','24,Ashok  
nagar,Ludhiana,Punjab','SpiT@113',8067189999);

INSERT INTO restaurant VALUES(01,114,'Yay Mumbaar','Raheja Tower,  
Mumbai,Maharashtra','YaM@l14',9458262800);

INSERT INTO restaurant VALUES(01,115,'Boombox','Sector-17  
Chandigarh,Punjab','Boom#115',9773818001);

INSERT INTO restaurant VALUES(01,115,'Boombox','Sector-17  
Chandigarh,Punjab','Boom#115',9773818001);

INSERT INTO restaurant VALUES(01,116,'Sowento','Level-8, Connaught  
Place, New Delhi, Delhi','Sow@l16',1141191040);

INSERT INTO restaurant VALUES(01,117,'Taj Hotel','154 Khan Market,  
India Gate, New Delhi','tajr@117',1166566162);

INSERT INTO restaurant VALUES(01,118,'Haveli','B-Block,Ranjit  
Avenue,Anritsar,Punjab','haveli@118',4428368333);

INSERT INTO restaurant VALUES(01,119,'Chauki Ghani','Jandiala  
Rd,Amritsar,Punjab','Cg@119',8054343839);

INSERT INTO restaurant VALUES(01,120,'Kobe sizzler','Main City  
centre,Gurgaon,Haryana','Kobe@120',8889323457);

INSERT INTO restaurant VALUES(01,120,'Kobe sizzler','Main City  
centre,Gurgaon,Haryana','Kobe@120',8889323457);

select * from restaurant;

CREATE TABLE category(   
category_id number(8) primary key,   
category_name varchar(15) NOT NULL,     
restaurant_id number(8) references restaurant(restaurant_id));

INSERT INTO category(category_id, category_name,restaurant_id number) 
VALUES  (201,'SOUTH-INDIAN','112'),  (202,'CHINESE','111');

INSERT INTO category(category_id, category_name,restaurant_id number) 
VALUES  (201,'SOUTH-INDIAN','112'), (202,'CHINESE','111');

INSERT INTO category(category_id, category_name,restaurant_id ) 
VALUES  (201,'SOUTH-INDIAN','112'), (202,'CHINESE','111');

INSERT INTO category(category_id, category_name,restaurant_id ) 
VALUES ( (201,'SOUTH-INDIAN','112'), (202,'CHINESE','111'));

INSERT INTO category(category_id, category_name,restaurant_id ) 
VALUES ((201,'SOUTH-INDIAN','112'), (202,'CHINESE','111'));

INSERT INTO category(category_id, category_name,restaurant_id ) 
VALUES (201,'SOUTH-INDIAN','112'), 
    (202,'CHINESE','111');

INSERT INTO category VALUES (201,'SOUTH-INDIAN','112');

INSERT INTO category VALUES (202,'CHINESE','111');

INSERT INTO category VALUES (203,'ALL','115');

INSERT INTO category VALUES (205,'KATHIAWADI','114');

 INSERT INTO category VALUES (205,'KATHIAWADI','114');

 INSERT INTO category VALUES (205,'KATHIAWADI','114');

select * from category  
;

INSERT INTO category VALUES (204,'INDONESIOAN','113');

 INSERT INTO category VALUES (206,'PUNJABI','118');

 INSERT INTO category VALUES (207,'RAJASTHANI','119');

INSERT INTO category VALUES (209,'NORTH-INDIAN ','116');

INSERT INTO category VALUES (208,'DESSERTS','120');

INSERT INTO category VALUES (209,'NORTH-INDIAN ','116');

INSERT INTO category VALUES (210,'CONTINENTAL','117');

SELECT * FROM category 
;

CREATE TABLE Menu_items(    
item_code number(8) primary key,   
item_name varchar(20) NOT NULL,   
Price number(8) NOT NULL,   
category_id number(8) references category(category_id)    
);

INSERT INTO Menu_items VALUES(302,'Alfredo Pasta',200,203);

 INSERT INTO Menu_items VALUES(302,'Alfredo Pasta',200,203);

 INSERT INTO Menu_items VALUES(302,'Alfredo Pasta',200,203);

select * from Menu_items;

 INSERT INTO Menu_items VALUES(303,'Tandoori pizza',400,203);

INSERT INTO Menu_items VALUES(301,'White Pasta',230,203);

 INSERT INTO Menu_items VALUES(303,'Tandoori pizza',400,203);

 INSERT INTO Menu_items VALUES(304,'Masala dosa',300,201);

 INSERT INTO Menu_items VALUES(305,'uttampam',115,201);

 INSERT INTO Menu_items VALUES(306,'idli-vada-sambhar',120,201);

 INSERT INTO Menu_items VALUES(308,'Paneer parantha',250,206);

 INSERT INTO Menu_items VALUES(308,'Paneer parantha',250,206);

 INSERT INTO Menu_items VALUES(307,'Amritsari Kulcha',120,206);

 INSERT INTO Menu_items VALUES(308,'Paneer parantha',250,206);

 INSERT INTO Menu_items VALUES(309,'Bhature Chole',100,209);

 INSERT INTO Menu_items VALUES(310,'Dry manchrian',200,202);

 INSERT INTO Menu_items VALUES(309,'Bhature Chole',100,209);

 INSERT INTO Menu_items VALUES(311,'CHINESE BHEL',150,202);

 INSERT INTO Menu_items VALUES(312,'Fried rice',210,202);

INSERT INTO Menu_items VALUES(313,'lasaniya bataka',250,210);

 INSERT INTO Menu_items VALUES(314,'rigan no olo',300,210);

 INSERT INTO Menu_items VALUES(315,'sev tameta nu shaak',220,205);

INSERT INTO Menu_items VALUES(316,'waffle',220,208);

 INSERT INTO Menu_items VALUES(317,'chocolate brownie',115,208);

 INSERT INTO Menu_items VALUES(318,'pancakes',120,208);

 INSERT INTO Menu_items VALUES(319,'burger',55,203);

 INSERT INTO Menu_items VALUES(320,'french fries',100,203);

 INSERT INTO Menu_items VALUES(321,'muskabun',25,209);

INSERT INTO Menu_items VALUES(322,'peach mojito ',180,207);

 INSERT INTO Menu_items VALUES(323,'hazlenut coffee',135,207);

 INSERT INTO Menu_items VALUES(324,'kewi juice',90,207);

 INSERT INTO Menu_items VALUES(327,'Steaks',335,210);

INSERT INTO Menu_items VALUES(325,'French toast',100,209);

 INSERT INTO Menu_items VALUES(326,'Pancakes ',180,208);

 INSERT INTO Menu_items VALUES(327,'Steaks',335,210);

select * from Menu_items;

CREATE TABLE Payment_details(    
payment_id number(8) primary key,   
payment_mode varchar(15) NOT NULL,     
payment_timestamp timestamp NOT NULL     
);

INSERT INTO Payment_details VALUES (502,'COD','11-NOV-2022  
-- 9:06:30');

INSERT INTO Payment_details VALUES (501,'PayTM',TO_TIMESTAMP('15-NOV-2022 11:12:33', 'DD-MON-YYYY HH24:MI:SS');

INSERT INTO Payment_details VALUES (501,'PayTM',TO_TIMESTAMP('15-NOV-2022 11:12:33', 'DD-MON-YYYY HH24:MI:SS');

INSERT INTO Payment_details VALUES (501,'PayTM',TO_TIMESTAMP('15-NOV-2022 11:12:33', 'DD-MON-YYYY HH24:MI:SS'));

 INSERT INTO Payment_details VALUES (502,'COD',TO_TIMESTAMP('11-NOV-2022 , 'DD-MON-YYYY HH24:MI:SS'));

 INSERT INTO Payment_details VALUES (502,'COD',TO_TIMESTAMP('11-NOV-2022' , 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (503, 'CARD', TO_TIMESTAMP('22-NOV-2022 01:10:22', 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (506, 'GPay', TO_TIMESTAMP('27-OCT-2021 01:13:13', 'DD-MON-YYYY HH24:MI:SS'));

 INSERT INTO Payment_details VALUES (506, 'GPay', TO_TIMESTAMP('27-OCT-2021 01:13:13', 'DD-MON-YYYY HH24:MI:SS'));

 INSERT INTO Payment_details VALUES (506, 'GPay', TO_TIMESTAMP('27-OCT-2021 01:13:13', 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (504, 'COD', TO_TIMESTAMP('02-NOV-2021 05:12:03', 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (508, 'COD', TO_TIMESTAMP('28-OCT-2021 10:07:53', 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (508, 'COD', TO_TIMESTAMP('28-OCT-2021 10:07:53', 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (509, 'PhonePe', TO_TIMESTAMP('05-NOV-2022 07:17:37', 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (507, 'CARD', TO_TIMESTAMP('09-NOV-2022 09:08:48', 'DD-MON-YYYY HH24:MI:SS'));

INSERT INTO Payment_details VALUES (509, 'PhonePe', TO_TIMESTAMP('05-NOV-2022 07:17:37', 'DD-MON-YYYY HH24:MI:SS'));

 INSERT INTO Payment_details VALUES (510, 'Mobkwik', TO_TIMESTAMP('16-NOV-2022 09:19:22', 'DD-MON-YYYY HH24:MI:SS'));

SELECT * FROM Payment_details;

CREATE TABLE delivery_details(  
delivery_id number(8) primary key,    
delivery_address varchar(50) NOT NULL,    
delivery_status varchar(30) NOT NULL    
);

INSERT INTO delivery_details VALUES (402,'Examiner  
-- Road,Mumbai','Delivered');

INSERT INTO delivery_details VALUES (402,'Examiner  
-- Road,Mumbai','Delivered');

 INSERT INTO delivery_details VALUES (402,'Examiner  
-- Road,Mumbai','Delivered');

 INSERT INTO delivery_details VALUES (402,'Examiner  
 Road,Mumbai','Delivered');

INSERT INTO delivery_details VALUES (401,'1st Rammurthy  
nagar,Bangalore','Delivered');

 INSERT INTO delivery_details VALUES (401,'1st Rammurthy nagar,Bangalore','Delivered');

 INSERT INTO delivery_details VALUES (402,'Examiner Road,Mumbai','Delivered');

 INSERT INTO delivery_details VALUES (403,'1723,Opp. Clock Tower,Ludhiana','Preparing');

 INSERT INTO delivery_details VALUES (404,'H-138, bakkam Road,Chennai','Pickedup');

 INSERT INTO delivery_details VALUES (405,'854,Guru Nanak Nagar, Amritsar','Delivered');

 INSERT INTO delivery_details VALUES (406,'Kaziranga, Meghalaya','preparing');

 INSERT INTO delivery_details VALUES (407,'A/3, Alpha City,Mumbai','Preparing');

INSERT INTO delivery_details VALUES (408,'134/135  Nagarathpet,Banglore,Karnataka','Delivered');

INSERT INTO delivery_details VALUES (409,'754 Arjan Dev Nagar,Amritsar','Picked-up');

 INSERT INTO delivery_details VALUES (410,'Main City centre,Gurgaon,Haryana','Pickedup');

SELECT * FROM delivery_details 
;

CREATE TABLE Rating(     
ratings number(8) NOT NULL,   
customer_id number(8) references customer(customer_id),     
restaurant_id number(8) references restaurant(restaurant_id)    
);

INSERT INTO Rating VALUES (4,02,114);

 INSERT INTO Rating VALUES (4,02,114);

INSERT INTO Rating VALUES (3,01,111);

 INSERT INTO Rating VALUES (4,02,114);

 INSERT INTO Rating VALUES (2,03,117);

 INSERT INTO Rating VALUES (3,06,115);

 INSERT INTO Rating VALUES (4,04,120);

INSERT INTO Rating VALUES (4,08,113);

 INSERT INTO Rating VALUES (3,09,112);

 INSERT INTO Rating VALUES (4,01,119);

INSERT INTO Rating VALUES (3,09,116);

select * from Rating ;

delete from rating where ratings=4 and customer_id=2;

 INSERT INTO Rating VALUES (4,02,114);

select * from Rating  
;

CREATE TABLE Order_details(     
Order_id number(8) primary key,     
Order_time timestamp,     
Order_amount number(8) NOT NULL,   
Order_status varchar(20) NOT NULL,     
customer_id number(8) references customer(customer_id),    
delivery_id number(8) references delivery_details(delivery_id),   
payment_id number(8) references Payment_details(payment_id),  
restaurant_id number(8) references restaurant(restaurant_id)    
);

CREATE TABLE Order_details(     
Order_id number(8) primary key,     
Order_time timestamp,     
Order_amount number(8) NOT NULL,   
Order_status varchar(20) NOT NULL,     
customer_id number(8) references customer(customer_id),    
delivery_id number(8) references delivery_details(delivery_id),   
payment_id number(8) references Payment_details(payment_id),  
restaurant_id number(8) references restaurant(restaurant_id)    
);

INSERT INTO Order_details VALUES (603, TO_TIMESTAMP('02-APR-2021 5:12:03', 'DD-MON-YYYY HH24:MI:SS'),'345', 'delivered',03,409,503,117);

 INSERT INTO Order_details VALUES (603, TO_TIMESTAMP('02-APR-2021 5:12:03', 'DD-MON-YYYY HH24:MI:SS'),'345', 'delivered',03,409,503,117);

INSERT INTO Order_details VALUES (601, TO_TIMESTAMP('11-FEB-2022 9:06:30', 'DD-MON-YYYY HH24:MI:SS'),'240','Preparing',01,401,501,111);

 INSERT INTO Order_details VALUES (604, TO_TIMESTAMP('27-JUL-2021 01:13:13', 'DD-MON-YYYY HH24:MI:SS'),'400', 'preparing', 04,404,504,112);

 INSERT INTO Order_details VALUES (605, TO_TIMESTAMP('09-MAY-2022 09:08:48', 'DD-MON-YYYY HH24:MI:SS'),'250', 'delivered',04,404,509,119);

 INSERT INTO Order_details VALUES (608, TO_TIMESTAMP('16-JAN-2022 9:19:22', 'DD-MON-YYYY HH24:MI:SS'),'50', 'preparing',09,410,508,120);

 INSERT INTO Order_details VALUES (606, TO_TIMESTAMP('28-DEC-2021 10:07:53', 'DD-MON-YYYY HH24:MI:SS'),'230', 'preparing', 06,406,506,114);

 INSERT INTO Order_details VALUES (607, TO_TIMESTAMP('05-MAR-2022 7:17:37', 'DD-MON-YYYY HH24:MI:SS'),'300', 'delivered',08 ,408 ,507, 113);

 INSERT INTO Order_details VALUES (608, TO_TIMESTAMP('16-JAN-2022 9:19:22', 'DD-MON-YYYY HH24:MI:SS'),'50', 'preparing',09,410,508,120);

select * from Order_details 
  
;

CREATE TABLE Orders(   
quantity number(8) NOT NULL,    
Order_id number(8) references Order_details(Order_id),     
item_code number(8) references Menu_items(item_code)    
);

INSERT INTO Orders VALUES (3,603,305);

INSERT INTO Orders VALUES (2,601,307);

INSERT INTO Orders VALUES (2,601,307);

 INSERT INTO Orders VALUES (3,603,305);

 INSERT INTO Orders VALUES(2,604,310);

 INSERT INTO Orders VALUES (1,605,313);

 INSERT INTO Orders VALUES(1,606,301);

 INSERT INTO Orders VALUES (3,607,306);

INSERT INTO Orders VALUES(2,608,321);

select * from Orders 
;

delete from Orders where quantity =3 and item_code=305 
--delete from Orders where quantity =2 and item_code=307 
;

 INSERT INTO Orders VALUES (3,603,305);

delete from Orders where quantity =2 and item_code=307 
;

select * from Orders 
 
;

INSERT INTO Orders VALUES (2,601,307);

select * from Orders 
 
;

Select * from restaurant where restaurant_id='117';

Select item_name, price, quantity, order_status, order_amount  
from Menu_items m, Orders o, Oredr_details od 
where m.item_code= o.item_code and o.order_id= od.order_id;

Select item_name, price, quantity, order_status, order_amount  
from Menu_items m, Orders o, Order_details od 
where m.item_code= o.item_code and o.order_id= od.order_id;

ALTER TABLE customer modify customer_address varchar(60);

SELECT * FROM Menu_items order by price;

SELECT COUNT(customer_firstname) from customer where customer_firstname like 'A%' or customer_firstname like 'a%';

SELECT customer_firstname from customer;

SELECT COUNT(customer_firstname) from customer where customer_firstname like 'J%' or customer_firstname like 'j%';

SELECT customer_firstname from customer;

SELECT Order_id, max(Order_amount) from Order_details group by Order_id having max(Order_amount)>300;

CREATE OR REPLACE TRIGGER display_price_changes 
BEFORE DELETE OR INSERT OR UPDATE ON Menu_items 
FOR EACH ROW  
	WHEN(NEW.Item_code>0) 
DECLARE 
	price_diff number; 
BEGIN 
	price_diff:= :NEW.price - :OLD.price; 
dbms_output.put_line('Old price:' || :OLD.price); 
dbms_output.put_line('New price:' || :NEW.price); 
dbms_output.put_line('Price Difference:' || price_diff); 
END; 
/

declare 
C_Id customer.customer_id%type; 
C_Fname customer.customer_firstname%type; 
C_Lname customer.customer_lastname%type; 
C_Pass customer.customer_password%type; 
C_Phone customer.customer_phoneno%type; 
C_Add customer.customer_address%type; 
C_Email customer.customer_email%type; 
Cursor x IS select customer_id,customer_firstname,customer_lastname, customer_password,customer_phoneno,customer_address, customer_email from customer 
BEGIN 
open x; 
loop 
fetch x into C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add C_Email; 
exit when x%NOT FOUND; 
dbms_output.put_line(C_Id||' '||C_Fname||' '|| C_Lname||' '|| C_Pass||' '|| C_Phone||' '|| C_Add||' '||C_Email) 
end loop; 
close x; 
end; 

/

declare 
C_Id customer.customer_id%type; 
C_Fname customer.customer_firstname%type; 
C_Lname customer.customer_lastname%type; 
C_Pass customer.customer_password%type; 
C_Phone customer.customer_phoneno%type; 
C_Add customer.customer_address%type; 
C_Email customer.customer_email%type; 
Cursor x IS select customer_id,customer_firstname,customer_lastname, customer_password,customer_phoneno,customer_address, customer_email from customer 
BEGIN 
open x; 
loop 
fetch x into C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add C_Email; 
exit when x%NOT FOUND; 
dbms_output.put_line(C_Id||' '||C_Fname||' '|| C_Lname||' '|| C_Pass||' '|| C_Phone||' '|| C_Add||' '||C_Email); 
end loop; 
close x; 
end; 

/

declare 
C_Id customer.customer_id%type; 
C_Fname customer.customer_firstname%type; 
C_Lname customer.customer_lastname%type; 
C_Pass customer.customer_password%type; 
C_Phone customer.customer_phoneno%type; 
C_Add customer.customer_address%type; 
C_Email customer.customer_email%type; 
Cursor x IS select customer_id,customer_firstname,customer_lastname, customer_password,customer_phoneno,customer_address, customer_email from customer; 
BEGIN 
open x; 
loop 
fetch x into C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add C_Email; 
exit when x%NOT FOUND; 
dbms_output.put_line(C_Id||' '||C_Fname||' '|| C_Lname||' '|| C_Pass||' '|| C_Phone||' '|| C_Add||' '||C_Email); 
end loop; 
close x; 
end; 

/

DECLARE 
    C_Id customer.customer_id%type; 
    C_Fname customer.customer_firstname%type; 
    C_Lname customer.customer_lastname%type; 
    C_Pass customer.customer_password%type; 
    C_Phone customer.customer_phoneno%type; 
    C_Add customer.customer_address%type; 
    C_Email customer.customer_email%type; 
    CURSOR x IS SELECT customer_id, customer_firstname, customer_lastname, customer_password, customer_phoneno, customer_address, customer_email FROM customer; 
BEGIN 
    OPEN x; 
    LOOP 
        FETCH x INTO C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add, C_Email; 
        EXIT WHEN x%NOTFOUND; 
        dbms_output.put_line(C_Id||' '||C_Fname||' '||C_Lname||' '||C_Pass||' '||C_Phone||' '||C_Add||' '||C_Email); 
    END LOOP; 
    CLOSE x; 
END; 
 

/

DECLARE 
    C_Id customer.customer_id%type; 
    C_Fname customer.customer_firstname%type; 
    C_Lname customer.customer_lastname%type; 
    C_Pass customer.customer_password%type; 
    C_Phone customer.customer_phoneno%type; 
    C_Add customer.customer_address%type; 
    C_Email customer.customer_email%type; 
    O_Amt Order_details.Order_amount%type; 
    CURSOR x IS SELECT customer_id, customer_firstname, customer_lastname, customer_password, customer_phoneno, customer_address, customer_email, O.Oredr_amount 
    FROM customer C, Order_details O where O.order_amount=300; 
BEGIN 
    OPEN x; 
    LOOP 
        FETCH x INTO C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add, C_Email, O_Amt; 
        EXIT WHEN x%NOTFOUND; 
        dbms_output.put_line(C_Id||' '||C_Fname||' '||C_Lname||' '||C_Pass||' '||C_Phone||' '||C_Add||' '||C_Email||' '||O_Amt); 
    END LOOP; 
    CLOSE x; 
END; 
 

/

DECLARE 
    C_Id customer.customer_id%type; 
    C_Fname customer.customer_firstname%type; 
    C_Lname customer.customer_lastname%type; 
    C_Pass customer.customer_password%type; 
    C_Phone customer.customer_phoneno%type; 
    C_Add customer.customer_address%type; 
    C_Email customer.customer_email%type; 
    O_Amt Order_details.Order_amount%type; 
    CURSOR x IS SELECT customer_id, customer_firstname, customer_lastname, customer_password, customer_phoneno, customer_address, customer_email, O.Order_amount 
    FROM customer C, Order_details O where O.order_amount=300; 
BEGIN 
    OPEN x; 
    LOOP 
        FETCH x INTO C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add, C_Email, O_Amt; 
        EXIT WHEN x%NOTFOUND; 
        dbms_output.put_line(C_Id||' '||C_Fname||' '||C_Lname||' '||C_Pass||' '||C_Phone||' '||C_Add||' '||C_Email||' '||O_Amt); 
    END LOOP; 
    CLOSE x; 
END; 
 

/

DECLARE 
    C_Id customer.customer_id%type; 
    C_Fname customer.customer_firstname%type; 
    C_Lname customer.customer_lastname%type; 
    C_Pass customer.customer_password%type; 
    C_Phone customer.customer_phoneno%type; 
    C_Add customer.customer_address%type; 
    C_Email customer.customer_email%type; 
    O_Amt Order_details.Order_amount%type; 
    CURSOR x IS SELECT C.customer_id, C.customer_firstname, C.customer_lastname, C.customer_password, C.customer_phoneno, C.customer_address, C.customer_email, O.Order_amount 
    FROM customer C, Order_details O where O.order_amount=300; 
BEGIN 
    OPEN x; 
    LOOP 
        FETCH x INTO C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add, C_Email, O_Amt; 
        EXIT WHEN x%NOTFOUND; 
        dbms_output.put_line(C_Id||' '||C_Fname||' '||C_Lname||' '||C_Pass||' '||C_Phone||' '||C_Add||' '||C_Email||' '||O_Amt); 
    END LOOP; 
    CLOSE x; 
END; 
 

/

DECLARE 
    C_Id customer.customer_id%type; 
    C_Fname customer.customer_firstname%type; 
    C_Lname customer.customer_lastname%type; 
    C_Pass customer.customer_password%type; 
    C_Phone customer.customer_phoneno%type; 
    C_Add customer.customer_address%type; 
    C_Email customer.customer_email%type; 
	R_Rat Rating.ratings%type; 
 
    CURSOR x IS SELECT C.customer_id, C.customer_firstname, C.customer_lastname, C.customer_password, C.customer_phoneno, C.customer_address, C.customer_email, R.ratings 
    FROM customer C, Rating R where R.ratings>3; 
BEGIN 
    OPEN x; 
    LOOP 
        FETCH x INTO C_Id, C_Fname, C_Lname, C_Pass, C_Phone, C_Add, C_Email, R_Rat; 
        EXIT WHEN x%NOTFOUND; 
        dbms_output.put_line(C_Id||' '||C_Fname||' '||C_Lname||' '||C_Pass||' '||C_Phone||' '||C_Add||' '||C_Email||' '||R_Rat); 
    END LOOP; 
    CLOSE x; 
END; 
 

/

DECLARE 
	temp varchar(20); 
BEGIN 
	SELECT payment_timestamp into temp from payment_details where payment_mode='PayTm'; 
EXCEPTION 
	WHEN no_data_found THEN 
		dbms_output.put_line('ERROR'); 
		dbms_output.put_line('There is no payment mode as PayTM in Payment details table'); 
end; 

/

