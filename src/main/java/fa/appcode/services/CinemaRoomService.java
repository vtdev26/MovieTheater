package fa.appcode.services;

import org.springframework.data.domain.Page;

import fa.appcode.web.entities.CinemaRoom;

public interface CinemaRoomService {
	Page<CinemaRoom> findAll(int pageIndex, int pageSize) throws Exception;
	
	Page<CinemaRoom> findAllBySearchKey(String roomName, int pageIndex, int pageSize) throws Exception;
	
	CinemaRoom findById(String roomId);
}
