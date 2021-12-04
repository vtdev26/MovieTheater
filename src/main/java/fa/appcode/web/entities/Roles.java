/*
 * @author: ChuongHV1
 * @date: Nov 24, 2021
 */
package fa.appcode.web.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Table(name = "roles", schema = "movie_theater")
//@JsonIgnoreProperties({ "hibernateLazyInitializer" })
public class Roles {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "role_id")
	private Integer role_id;
	
	@Column(name = "role_name")
	private String roleName;
	
	@OneToMany(mappedBy = "roles")
	@JsonBackReference
	private Set<Account> accounts;

	
}
