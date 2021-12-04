package fa.appcode.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.appcode.common.utils.LibraryCustomize;
import fa.appcode.repositories.ScheduleSeatRepository;
import fa.appcode.services.ScheduleSeatService;
import fa.appcode.web.entities.ScheduleSeat;

@Service
public class ScheduleSeatServiceImpl implements ScheduleSeatService {

	@Autowired
	private ScheduleSeatRepository scheduleSeatRepository;
	
	@Override
	public List<ScheduleSeat> findByMovieIdAndScheduleId(String movieId, String scheduleId) {
		if(!LibraryCustomize.isNumber(scheduleId)) {
			return null;
		}
		return scheduleSeatRepository.findByMovieIdAndScheduleId(movieId, Integer.parseInt(scheduleId));
	}

}
