package fa.appcode.web.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "schedule_seat",schema = "movie_theater")
public class ScheduleSeat {
	
	@Id
	@Column(name = "cinema_room_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cinemaRoomId;
	
	@Column(name = "movie_id")
	private Integer movieId;
	
	@Column(name = "schedule_id")
	private Integer scheduleId;
	
	@Column(name = "seat_id")
	private Integer seatId;
	
    @Column(name = "seat_column", columnDefinition = "VARCHAR(255)")
    private String seatColumn;
    
    @Column(name = "seat_row")
    private Integer seatRow;
    
    @Column(name = "status")
    private Integer status;
    
    @Column(name = "seat_type")
    private Integer seatType;
}
