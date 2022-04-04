package fa.appcode.web.entities;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Table(name = "cinema_room",schema = "movie_theater")
public class CinemaRoom {
	@Id
    @Column(name = "cinema_room_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cinemaRoomId;
    
    @Column(name = "cinema_room_name", columnDefinition = "NVARCHAR(255)")
    private String cinemaRoomName;
    
    @Column(name = "seat_quantity")
    private Integer seatQuantity;
    
    @Column(name = "cinema_image")
    private String image;
    
    @OneToMany(mappedBy = "cinemaRoom", fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<Seat> seats;
    
    @OneToMany(mappedBy = "cinemaRoom")
	private Set<Movie> movies;

	public CinemaRoom(Integer cinemaRoomId, String cinemaRoomName, Integer seatQuantity) {
		super();
		this.cinemaRoomId = cinemaRoomId;
		this.cinemaRoomName = cinemaRoomName;
		this.seatQuantity = seatQuantity;
	}
	

	public CinemaRoom(Integer cinemaRoomId, String cinemaRoomName, Integer seatQuantity, List<Seat> seats) {
		super();
		this.cinemaRoomId = cinemaRoomId;
		this.cinemaRoomName = cinemaRoomName;
		this.seatQuantity = seatQuantity;
		this.seats = seats;
	}
	public CinemaRoom(Integer cinemaRoomId, String cinemaRoomName) {
    super();
    this.cinemaRoomId = cinemaRoomId;
    this.cinemaRoomName = cinemaRoomName;
  }
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CinemaRoom other = (CinemaRoom) obj;
		return Objects.equals(cinemaRoomId, other.cinemaRoomId) && Objects.equals(cinemaRoomName, other.cinemaRoomName)
				&& Objects.equals(image, other.image) && Objects.equals(movies, other.movies)
				&& Objects.equals(seatQuantity, other.seatQuantity) && Objects.equals(seats, other.seats);
	}

}
