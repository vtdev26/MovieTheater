package fa.appcode.web.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name = "promotion",schema = "movie_theater")
public class Promotion {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "promotion_id")
	private int promotionId;
	
	@Column(name = "detail", columnDefinition = "NVARCHAR(255)")
	private String detail;
	
	@Column(name = "discount_level")
	private int discountLevel;
	
	@Column(name = "end_time", columnDefinition = "DATETIME")
	private Date endTime;
	
	@Column(name = "image", columnDefinition = "VARCHAR(255)")
	private String image;
	
	@Column(name = "start_time",  columnDefinition = "DATETIME")
	private Date startTime;
	
	@Column(name = "title", columnDefinition = "VARCHAR(255)")
	private String title;

}

