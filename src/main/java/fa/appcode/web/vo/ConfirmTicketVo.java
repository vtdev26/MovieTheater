package fa.appcode.web.vo;

import java.util.Arrays;
import java.util.Objects;

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

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ConfirmTicketVo other = (ConfirmTicketVo) obj;
		return Objects.equals(dateSelecting, other.dateSelecting)
				&& Arrays.equals(idSeatSelecting, other.idSeatSelecting) && Objects.equals(memberId, other.memberId)
				&& Objects.equals(movieId, other.movieId) && Objects.equals(scheduleId, other.scheduleId)
				&& Objects.equals(timeSelecting, other.timeSelecting) && Objects.equals(totalPrice, other.totalPrice)
				&& Objects.equals(useScore, other.useScore);
	}
}
