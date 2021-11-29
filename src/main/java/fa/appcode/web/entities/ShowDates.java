package fa.appcode.web.entities;

import java.util.Date;
import java.util.Set;

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
@Table(name = "show_dates", schema = "movie_theater")
public class ShowDates {
	@Id
	@Column(name = "show_date_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer showDateId;

	@Column(name = "show_date",  columnDefinition = "DATETIME")
	private Date showDate;

	@Column(name = "date_name", columnDefinition = "NVARCHAR(255)")
	private String dateName;
	
	@OneToMany(mappedBy = "showDates")
	Set<MovieDate> movieDates;

}
