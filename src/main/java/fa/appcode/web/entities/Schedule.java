package fa.appcode.web.entities;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name = "schedule",schema = "movie_theater")
public class Schedule {
	@Id
    @Column(name = "schedule_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer scheduleId;
    
    @Column(name = "schedule_time", columnDefinition = "VARCHAR(255)")
    private String scheduleTime;
    
    @OneToMany(mappedBy = "schedule", cascade = CascadeType.ALL)
    private Set<MovieSchedule> movieSchedules;
}
