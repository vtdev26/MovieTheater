/*
 * @author: ChuongHV1
 * @date: Nov 24, 2021
 */
package fa.appcode.web.entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Table(name = "account", schema = "movie_theater")
public class Account {

	@Id
	@GenericGenerator(name = "sequence_string_id", strategy = "fa.appcode.common.utils.StringGenerator")
	@GeneratedValue(generator = "sequence_string_id")
	@Column(name = "account_id", columnDefinition = "VARCHAR(10)")
	private String accountId;

	@Column(name = "address")
	private String address;

	@Column(name = "date_of_birth", columnDefinition = "DATETIME")
	private Date dateOfBirth;

	@Column(name = "email")
	private String email;

	@Column(name = "full_name")
	private String fullName;

	@Column(name = "gender")
	private String gender;

	@Column(name = "identity_card")
	private String identityCard;

	@Column(name = "image")
	private String image;

	@Column(name = "password")
	private String password;

	@Column(name = "phone_number")
	private String phoneNumber;

	@Column(name = "register_date", columnDefinition = "DATETIME")
	private Date registerDate;

	@Column(name = "status")
	private int status;

	@Column(name = "username")
	private String userName;

	@ManyToOne
	@JoinColumn(name = "role_id", referencedColumnName = "role_id")
	private Roles roles;

	@OneToMany(mappedBy = "account")
	private Set<Invoice> invoices;

}
