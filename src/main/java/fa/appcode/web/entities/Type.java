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
@Table(name = "type", schema = "movie_theater")
public class Type {
	@Id
	@Column(name = "type_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer typeId;

	@Column(name = "type_name", columnDefinition = "NVARCHAR(255)")
	private String typeName;

	@OneToMany(mappedBy = "type", cascade = CascadeType.ALL)
	private Set<MovieType> movieTypes;
}
