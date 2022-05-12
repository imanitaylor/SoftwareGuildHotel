USE SoftwareGuildHotel;

/* #1 
Write a query that returns a list of reservations that end in July 2023, 
including the name of the guest, the room number(s), and the reservation dates.

Expected Results 4 rows */

SELECT
	CONCAT(g.FirstName,' ',g.LastName) AS "GuestName", 
	rm.RoomNumber, 
    CONCAT(r.StartDate,' - ',r.EndDate) AS "ReservationDate"
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestId = g.GuestId
INNER JOIN Room rm
	ON r.RoomId = rm.RoomId
WHERE r.EndDate LIKE '2023-07%';

/* #2
Write a query that returns a list of all reservations for rooms with a jacuzzi, 
displaying the guest's name, the room number, and the dates of the reservation.
​
Expected Results 11 rows*/
SELECT
	CONCAT(g.FirstName,' ',g.LastName) AS "GuestName", 
	rm.RoomNumber, 
    CONCAT(r.StartDate,' - ',r.EndDate) AS "ReservationDate"
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestId = g.GuestId
INNER JOIN Room rm
	ON r.RoomId = rm.RoomId
INNER JOIN RoomDescrip rmd
	ON rm.RoomDescripId = rmd.RoomDescripId
WHERE rmd.Amenities LIKE '%jacuzzi%';

/* # 3
Write a query that returns all the rooms reserved for a specific guest, 
including the guest's name, the room(s) reserved, the starting date of the reservation, 
and how many people were included in the reservation. 
(Choose a guest's name from the existing data.)
​
Expected Results 4 rows */
SELECT
	CONCAT(g.FirstName,' ',g.LastName) AS "GuestName", 
	rm.RoomNumber, 
    r.StartDate,
    r.TotalGuest
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestId = g.GuestId
INNER JOIN Room rm
	ON r.RoomId = rm.RoomId
WHERE g.FirstName = 'Mack';


/* #4
Write a query that returns a list of rooms, reservation ID, and per-room 
cost for each reservation. The results should include all rooms, 
whether or not there is a reservation associated with the room.
​
Expected Results 26 Rows */
SELECT
	rm.RoomNumber, 
    r.ReservationId,
    r.TotalRoomPrice
FROM Reservation r
RIGHT OUTER JOIN Room rm
	ON r.RoomId = rm.RoomId;
    

/* #5
Write a query that returns all the rooms accommodating at least 
three guests and that are reserved on any date in April 2023.
​
Expected Results: Write your response on why */
SELECT
	rm.RoomNumber
FROM Reservation r
INNER JOIN Room rm
	ON r.RoomId = rm.RoomId
INNER JOIN RoomDescrip rmd
	ON rm.RoomDescripId = rmd.RoomDescripId
WHERE rmd.StandOccup >= 3
AND r.EndDate LIKE '2023-04%';
/* Explanation: Query doesn't return anything because of the two avaliable rooms that are able to accomdate 3 people, 
neither of those two rooms are reserved in April 2023 */


/* #6
Write a query that returns a list of all guest names and the 
number of reservations per guest, sorted starting with the guest 
with the most reservations and then by the guest's last name.
​
Expected Results 11 rows */
SELECT
    g.FirstName,
    g.LastName,
    COUNT(r.GuestId) NumOfReservs
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestId = g.GuestId
GROUP BY g.FirstName, g.LastName
ORDER BY NumOfReservs DESC, g.LastName;


SELECT
	CONCAT(g.FirstName,' ',g.LastName) AS "GuestName", 
    COUNT(r.GuestId) NumOfReservs
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestId = g.GuestId
GROUP BY CONCAT(g.FirstName,' ',g.LastName)
ORDER BY NumOfReservs, g.LastName;


/* #7
Write a query that displays the name, address, and phone number of a 
guest based on their phone number. (Choose a phone number from the existing data.)
​
Expected Results 1 row */
SELECT
	CONCAT(FirstName,' ',LastName) AS "GuestName", 
    CONCAT(Address,', ',City,', ',StateAbbr,', ',PostalCode) AS "Address",
    PhoneNumber
FROM Guest
WHERE PhoneNumber = '814-485-2615';
