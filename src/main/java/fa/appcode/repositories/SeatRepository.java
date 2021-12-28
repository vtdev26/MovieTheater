package fa.appcode.repositories;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fa.appcode.web.entities.Seat;

@Repository
@Transactional
public interface SeatRepository extends JpaRepository<Seat, Integer>{

	List<Seat> findAllBySeatIdIn(List<Integer> seatIds);
}
