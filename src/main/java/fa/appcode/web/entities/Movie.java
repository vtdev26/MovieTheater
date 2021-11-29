package fa.appcode.web.entities;

import java.util.Date;
import java.util.Objects;
import java.util.Set;

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
@Table(name = "movie",schema = "movie_theater")
public class Movie {
	@Id
	@Column(name = "movie_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Integer movieId;
	@Column(name = "actor", columnDefinition = "NVARCHAR(255)")
	private String actor;

	
	@Column(name = "content", columnDefinition = "NVARCHAR(1000)")
	private String content;

	@Column(name = "director", columnDefinition = "NVARCHAR(255)")
	private String director;

	@Column(name = "duration")
	private int duration;

	@Column(name = "from_date", columnDefinition = "DATETIME")
	private Date fromDate;

	@Column(name = "movie_product_company", columnDefinition = "NVARCHAR(255)")
	private String movieProductCompany;

	@Column(name = "to_date",  columnDefinition = "DATETIME")
	private Date toDate;

	@Column(name = "version", columnDefinition = "NVARCHAR(255)")
	private String version;

	@Column(name = "movie_name_english", columnDefinition = "VARCHAR(255)")
	private String movieNameEnglish;

	@Column(name = "movie_name_vn", columnDefinition = "NVARCHAR(255)")
	private String movieNameVn;

	@Column(name = "large_image", columnDefinition = "VARCHAR(255)")
	private String largeImage;

	@Column(name = "small_image", columnDefinition = "VARCHAR(255)")
	private String smallImage;

	@OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
	private Set<MovieDate> movieDates;

	@OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
	private Set<MovieSchedule> movieSchedules;

	@OneToMany(mappedBy = "movie", cascade = CascadeType.ALL)
	private Set<MovieType> movieTypes;

	@Override
	public int hashCode() {
		return Objects.hash(movieId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Movie other = (Movie) obj;
		return Objects.equals(movieId, other.movieId);
	}
}
