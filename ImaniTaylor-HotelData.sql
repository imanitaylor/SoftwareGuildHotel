use SoftwareGuildHotel;

INSERT INTO Guest (
    FirstName,
	LastName,
	Address,
	City,
    StateAbbr,
    PostalCode,
    PhoneNumber
) VALUES
('Imani','Taylor','1913 Washington Ave.','St.Petersburg','FL','33710','813-536-8888'),
('Mack','Simmer','379 Old Shore Street','Council Bluffs','IA','51501','291-553-0508'),
('Bettyann','Seery','750 Wintergreen Dr.','Wasilla','AK','99654','478-277-9632'),
('Duane','Cullison','9662 Foxrun Lane','HaGuestrlingen','TX','78552','308-494-0198'),
('Karie','Yang','9378 W. Augusta Ave.','West Deptford','NJ','08096','214-730-0298'),
('Aurore','Lipton','762 Wild Rose Street','Saginaw','MI','48601','377-507-097'),
('Zachery','Luechtefeld','7 Poplar Dr.','Arvada','CO','80003','814-485-2615'),
('Jeremiah','Pendergrass','70 Oakwood St.','Zion','IL','60099','279-491-0960'),
('Walter','Holaway','7556 Arrowhead St.','Cumberland','RI','02864','446-396-6785'),
('Wilfred','Vise','77 West Surrey Street','Oswego','NY','13126','834-727-1001'),
('Maritza','Tilton','939 Linda Rd.','Burke','VA','22015','446-351-6860'),
('Joleen','Tison','87 Queen St.','Drexel Hill','PA','19026','231-893-2755')
;



INSERT INTO RoomDescrip (
    RoomType,
    Amenities,
    ADAAccess,
	StandOccup,
    MaxOccup,
    BasePrice,
    ExtraPersonPrice
) VALUES
	('Single','Microwave, Refrigerator, Jacuzzi','0','2','2','174.99', null),
	('Single','Microwave, Refrigerator','1','2','2','149.99', null),
    ('Double','Microwave, Jacuzzi','0','2','4','199.99','10.00'),
    ('Double','Refrigerator','1','2','4','199.99','10.00'),
    ('Suite','Microwave, Refrigerator, Oven','1','3','8','399.99','20.00')
;

INSERT INTO Room (
    RoomNumber,
    RoomDescripId
    ) VALUES
    ('201','3'),
    ('202','4'),
    ('203','3'),
    ('204','4'),
    ('205','1'),
    ('206','2'),
    ('207','1'),
    ('208','2'),
    ('301','3'),
    ('302','4'),
    ('303','3'),
    ('304','4'),
    ('305','1'),
    ('306','2'),
    ('307','1'),
    ('308','2'),
    ('401','5'),
    ('402','5')
    ;
    
    
    INSERT INTO Reservation (
	StartDate,
    EndDate,
    TotalGuest,
    TotalRoomPrice,
    GuestId,
	RoomId
    ) VALUES
    ('2023-02-02','2023-02-04','1', '299.98','2','16'),
	('2023-02-05','2023-02-10','3','999.95','3','3'),
	('2023-02-22','2023-02-24','2','349.98','4','13'),
    ('2023-03-06','2023-03-07','4','199.99','5','1'),
	('2023-03-17','2023-03-20','2','524.97','1','15'),
	('2023-03-18','2023-03-23','3','924.95','6','10'),
    ('2023-03-29','2023-03-31','4','349.98','7','2'),
	('2023-03-31','2023-04-05','2','874.95','8','12'),
    ('2023-04-09','2023-04-13','1','799.96','9','9'),
    ('2023-04-23','2023-04-24','2','174.99','10','7'),
    ('2023-05-20','2023-06-02','6','1199.97','11','17'),
    ('2023-06-10','2023-06-14','2','599.96','12','6'),
    ('2023-06-10','2023-06-14','1','599.96','12','8'),
    ('2023-06-17','2023-06-18','3','184.99','6','12'),
    ('2023-06-28','2023-07-02','2','699.96','1','5'),
    ('2023-07-13','2023-07-14','4','184.99','9','4'),
    ('2023-07-18','2023-07-21','6','1259.97','10','17'),
    ('2023-07-28','2023-07-29','3','199.99','3','11'),
    ('2023-08-30','2023-09-01','1','349.98','3','13'),
    ('2023-09-16','2023-09-17','2','149.99','2','8'),
    ('2023-09-13','2023-09-15','4','399.98','5','3'),
    ('2023-11-22','2023-11-25','4','1199.97','4','17'),
    ('2023-11-22','2023-11-25','2','449.97','2','6'),
    ('2023-11-22','2023-11-25','4','599.97','2','9'),
    ('2023-12-24','2023-12-28','2','699.96','11','10')
  ;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Reservation
WHERE GuestId = 8;

DELETE FROM Guest
WHERE GuestId = 8;

SET SQL_SAFE_UPDATES = 1;