package fa.appcode.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.appcode.common.utils.LibraryCustomize;
import fa.appcode.repositories.SeatRepository;
import fa.appcode.services.SeatService;
import fa.appcode.web.entities.Seat;

@Service
public class SeatServiceImpl implements SeatService {
	
	@Autowired
	private SeatRepository seatRepository;

	@Override
	public List<Seat> findAllBySeatId(String[] seatIds) {
		List<Integer> listSeatIds = new ArrayList<Integer>();
		for (String s : seatIds) {
			if(!LibraryCustomize.isNumber(s)) {
				return null;
			}else {
				listSeatIds.add(Integer.parseInt(s));
			}
		}
		return seatRepository.findAllBySeatIdIn(listSeatIds);
	}

}
