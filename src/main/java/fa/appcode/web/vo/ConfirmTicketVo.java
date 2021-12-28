package fa.appcode.web.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class ConfirmTicketVo {
	
		private String dateSelecting;
		private String timeSelecting;
		private String[] idSeatSelecting;
		private String movieId;
		private Integer scheduleId;
		private Double useScore;
		private String memberId;
		private Double totalPrice;
}
