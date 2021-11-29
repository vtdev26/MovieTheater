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
@Table(name = "movie_type",schema = "movie_theater")
public class MovieType implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@ManyToOne
	@JoinColumn(name = "movie_id", referencedColumnName = "movie_id")
	private Movie movie;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "type_id", referencedColumnName = "type_id")
	private Type type;

	@Override
	public int hashCode() {
		return Objects.hash(movie, type);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MovieType other = (MovieType) obj;
		return Objects.equals(movie, other.movie) && Objects.equals(type, other.type);
	}
}
