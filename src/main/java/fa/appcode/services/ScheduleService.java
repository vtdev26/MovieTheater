package fa.appcode.services;

import java.util.List;
import java.util.Optional;

import fa.appcode.web.entities.Schedule;
import fa.appcode.web.entities.Type;

public interface ScheduleService {
	List<Schedule> findAll();
	Schedule getById(Integer scheduleId);
}
