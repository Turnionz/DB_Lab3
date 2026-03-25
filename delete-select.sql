DELETE FROM Ticket WHERE seat_number = 16;

SELECT
	t.ticket_id,
	t.first_name || ' ' || t.last_name AS passenger, 
	t.trip_number,
	t.departing_station,
	t.arrival_station,
	tr.trip_number,
	tr.train_id
FROM Ticket t
INNER JOIN Trip tr ON t.trip_number = tr.trip_number
WHERE t.seat_number >= 2