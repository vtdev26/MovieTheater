package fa.appcode.web.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name = "movie_date", schema = "movie_theater")
public class MovieDate implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@ManyToOne
	@JoinColumn(name = "movie_id", referencedColumnName = "movie_id")
	private Movie movie;

	@Id
	@ManyToOne
	@JoinColumn(name = "show_date_id", referencedColumnName = "show_date_id")
	private ShowDates showDates;

}
