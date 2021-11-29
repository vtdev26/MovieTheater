package fa.appcode.web.entities;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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

	@Override
	public int hashCode() {
		return Objects.hash(movie, showDates);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MovieDate other = (MovieDate) obj;
		return Objects.equals(movie, other.movie) && Objects.equals(showDates, other.showDates);
	}
}
