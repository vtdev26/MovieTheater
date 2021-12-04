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
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import org.hibernate.annotations.GenericGenerator;

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
@Table(name = "account", schema = "movie_theater")
//@JsonIgnoreProperties({ "hibernateLazyInitializer" })
public class Account {

	@Id
	@GenericGenerator(name = "sequence_string_id", strategy = "fa.appcode.common.utils.StringGenerator")
	@GeneratedValue(generator = "sequence_string_id")
	@Column(name = "account_id", columnDefinition = "VARCHAR(10)")
	private String accountId;

	@Column(name = "address")
	@NotEmpty(message = "{account.address.empty}")
	private String address;

	@Column(name = "date_of_birth", columnDefinition = "DATETIME")
	@NotEmpty(message = "{account.dateOfBirth.empty}")
	private Date dateOfBirth;

	@Column(name = "email")
	@NotEmpty(message = "{account.email.empty}")
	private String email;

	@Column(name = "full_name")
	@NotEmpty(message = "{account.fullName.empty}")
	private String fullName;

	@Column(name = "gender")
	@NotEmpty(message = "{account.gender.empty}")
	@Pattern(regexp = "M|F", flags = Pattern.Flag.CASE_INSENSITIVE)
	private String gender;

	@Column(name = "identity_card")
	@NotEmpty(message = "{account.identityCard.empty}")
	private String identityCard;

	@Column(name = "image")
	private String image;

	@Column(name = "password")
	@NotEmpty(message = "{account.password.empty}")
	private String password;

	@Column(name = "phone_number")
	@NotEmpty(message = "{account.phoneNumber.empty}")
	private String phoneNumber;

	@Column(name = "register_date", columnDefinition = "DATETIME")
	private Date registerDate;

	@Column(name = "status")
	private Integer status;

	@Column(name = "username")
	@NotEmpty(message = "{account.userName.empty}")
	private String userName;

	@ManyToOne
	@JoinColumn(name = "role_id", referencedColumnName = "role_id")
	private Roles roles;

	@OneToMany(mappedBy = "account")
	@JsonBackReference // no query on api
	private Set<Invoice> invoices;

}
