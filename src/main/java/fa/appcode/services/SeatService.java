package fa.appcode.services;

import java.util.List;

import fa.appcode.web.entities.Seat;

public interface SeatService {
	
	List<Seat> findAllBySeatId(String[] seatIds);
}
