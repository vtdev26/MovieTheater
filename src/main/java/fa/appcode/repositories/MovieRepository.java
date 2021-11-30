package fa.appcode.repositories;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import fa.appcode.web.entities.Movie;
@Repository
@Transactional
public interface MovieRepository extends JpaRepository<Movie, Integer> {
	
	@Query("SELECT m FROM Movie m WHERE m.movieNameEnglish LIKE :searchData "
			+ "OR m.movieNameVn LIKE :searchData "
			+ "OR function('convert',varchar, m.releaseDate, 103) LIKE :searchData "
			+ "OR m.movieProductCompany LIKE :searchData "
			+ "OR m.duration LIKE :searchData "
			+ "OR m.version LIKE :searchData ")
	Page<Movie> searchText(@Param("searchData") String searchData, Pageable pageable);
	
	@Query("SELECT m FROM Movie m WHERE m.releaseDate = :searchData")
	Page<Movie> searchDate(@Param("searchData") Date searchData, Pageable pageable);
}
