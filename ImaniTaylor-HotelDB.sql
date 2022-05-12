DROP DATABASE IF EXISTS SoftwareGuildHotel;

CREATE DATABASE SoftwareGuildHotel;

USE SoftwareGuildHotel;

CREATE TABLE IF NOT EXISTS Guest (
    GuestId INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Address VARCHAR(100) NULL,
	City VARCHAR(100) NULL,
    StateAbbr CHAR(2) NULL,
    PostalCode VARCHAR(10) NULL,
    PhoneNumber VARCHAR(12) NOT NULL
    );
    
    CREATE TABLE IF NOT EXISTS RoomDescrip (
    RoomDescripId INT PRIMARY KEY AUTO_INCREMENT,
    RoomType CHAR(25) NOT NULL,
    Amenities TEXT,
    ADAAccess BOOLEAN NOT NULL,
	StandOccup INT NOT NULL,
    MaxOccup INT NOT NULL,
    BasePrice DECIMAL(10,2) NOT NULL,
    ExtraPersonPrice DECIMAL(10,2)
    );
    
    CREATE TABLE IF NOT EXISTS Room (
    RoomId INT PRIMARY KEY AUTO_INCREMENT,
    RoomNumber INT NOT NULL,
    RoomDescripId INT NOT NULL,
    FOREIGN KEY fk_Room_RoomDescrip (RoomDescripId)
        REFERENCES RoomDescrip(RoomDescripId)
    );
    
    CREATE TABLE IF NOT EXISTS Reservation (
    ReservationId INT PRIMARY KEY AUTO_INCREMENT,
	StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalGuest INT NOT NULL,
    TotalRoomPrice DECIMAL(10,2) NOT NULL,
    GuestId INT NOT NULL,
	RoomId INT  NOT NULL,
    FOREIGN KEY fk_Reservation_GuestId (GuestId)
        REFERENCES Guest(GuestId),
	FOREIGN KEY fk_Reservation_RoomId (RoomId)
        REFERENCES Room(RoomId)
    );

    

    
    
    
    
    
    
    
    
    
    