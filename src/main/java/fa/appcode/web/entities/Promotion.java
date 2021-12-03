package fa.appcode.web.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Table(name = "promotion",schema = "movie_theater")
public class Promotion {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "promotion_id")
	private Integer promotionId;
	
	@Column(name = "detail", columnDefinition = "NVARCHAR(255)")
	@NotEmpty(message = "{promotion.detail.empty}")
	private String detail;
	
	@Column(name = "discount_level")
	@NotEmpty(message = "{promotion.discountLevel.empty}")
	@Pattern(regexp = "\\d+", message = "{promotion.discountLevel.invalid}")
	private Integer discountLevel;
	
	@Column(name = "end_time", columnDefinition = "DATETIME")
	@NotEmpty(message = "{promotion.endTime.empty}")
	private Date endTime;
	
	@Column(name = "image", columnDefinition = "VARCHAR(255)")
	private String image;
	
	@Column(name = "start_time",  columnDefinition = "DATETIME")
	@NotEmpty(message = "{promotion.startTime.empty}")
	private Date startTime;
	
	@Column(name = "title", columnDefinition = "VARCHAR(255)")
	@NotEmpty(message = "{promotion.title.empty}")
	private String title;

}

