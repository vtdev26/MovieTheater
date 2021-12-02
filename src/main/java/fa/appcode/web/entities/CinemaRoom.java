package fa.appcode.web.entities;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
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
    private int cinemaRoomId;
    
    @Column(name = "cinema_room_name", columnDefinition = "NVARCHAR(255)")
    private String cinemaRoomName;
    
    @Column(name = "seat_quantity")
    private int seatQuantity;
    
    @Column(name = "cinema_image")
    private String image;
    
    @OneToMany(mappedBy = "cinemaRoom", cascade = CascadeType.ALL)
    private List<Seat> seats;
    
}
