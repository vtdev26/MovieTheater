package fa.appcode.services.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.repositories.CinemaRoomRepository;
import fa.appcode.services.CinemaRoomService;
import fa.appcode.web.entities.CinemaRoom;


@Service("cinemaRoomService")
public class CinemaRoomServiceImpl implements CinemaRoomService{

	@Autowired
	private CinemaRoomRepository cinemaRoomRepository;

	@Override
	public Page<CinemaRoom> findAll(int pageIndex, int pageSize) {
		Pageable pageable = PageRequest.of(pageIndex - 1, pageSize);
		Page<CinemaRoom> rs = cinemaRoomRepository.findAll(pageable);
		LogUtils.getLogger().info("CinemaRoom list found size: " + rs.toList().size());
		return rs;
	}

	@Override
	public Page<CinemaRoom> findAllBySearchKey(String roomName, int pageIndex, int pageSize) throws Exception {
		LogUtils.getLogger().info("Room name search key: " + roomName);
		if (roomName == null || roomName.isEmpty()) {
			return null;
		}
		Sort sort = Sort.by("cinemaRoomName");
		Pageable pageable = PageRequest.of(pageIndex - 1, pageSize, sort);
		Page<CinemaRoom> rs = cinemaRoomRepository.findAllByCinemaRoomNameContaining(roomName, pageable);
		LogUtils.getLogger().info("Room list found size: " + rs.toList().size());
		return rs;
	}
	
	
	@Override
	public CinemaRoom findById(String roomId) {
		int roomIdVal = Integer.parseInt(roomId);
		return cinemaRoomRepository.findById(roomIdVal).orElse(null);
	}

	@Override
	public CinemaRoom findByMovieId(String movieId) {
		return cinemaRoomRepository.findRoomByMovieId(movieId);
	}
	
}
