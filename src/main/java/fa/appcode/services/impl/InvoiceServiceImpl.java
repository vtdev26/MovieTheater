package fa.appcode.services.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.appcode.common.utils.Constants;
import fa.appcode.common.utils.DateUtils;
import fa.appcode.config.PageConfig;
import fa.appcode.repositories.InvoiceRepository;
import fa.appcode.services.InvoiceService;
import fa.appcode.services.MemberService;
import fa.appcode.services.MovieService;
import fa.appcode.services.SeatService;
import fa.appcode.services.TicketService;
import fa.appcode.web.entities.Invoice;
import fa.appcode.web.entities.Member;
import fa.appcode.web.entities.ScheduleSeat;
import fa.appcode.web.entities.Seat;
import fa.appcode.web.entities.Ticket;
import fa.appcode.web.vo.ConfirmTicketVo;

/**
 * The Class InvoiceServiceImpl.
 */
@Repository
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	private SeatService seatService;

	@Autowired
	private MemberService memberService;

	@Autowired
	private MovieService movieService;

	@Autowired
	private InvoiceRepository invoiceRepository;

	@Autowired
	private TicketService ticketService;

	@Autowired
	private PageConfig pageConfig;

	/**
	 * Save ticket, edit member score and save invoice
	 *
	 * @param confirmTicketVo the confirm ticket Vo.
	 * @return the boolean
	 */
	@Override
	@Transactional
	public Boolean save(ConfirmTicketVo confirmTicketVo) {
		if (confirmTicketVo == null) {
			return false;
		}

		List<Seat> seats = seatService.findAllBySeatId(confirmTicketVo.getIdSeatSelecting());
		Member member = saveMember(confirmTicketVo);
		if (member == null || (seats == null || seats.size() == 0)) {
			return false;
		}

		Invoice invoice = new Invoice();
		invoice.setAccount(member.getAccount());
		invoice.setBookingDate(DateUtils.convertToDate(LocalDate.now()));
		if (movieService.getById(confirmTicketVo.getMovieId()) != null) {
			invoice.setMovieName(movieService.getById(confirmTicketVo.getMovieId()).getMovieNameVn());
		} else {
			return false;
		}
		invoice.setScheduleShow(DateUtils.convertToDate(LocalDate.parse(confirmTicketVo.getDateSelecting())));
		invoice.setScheduleShowTime(confirmTicketVo.getTimeSelecting());
		invoice.setStatus(Constants.INVOICE_BOOKED);
		invoice.setUseScore(confirmTicketVo.getUseScore());
		invoice.setTotalMoney(confirmTicketVo.getTotalPrice());
		invoice.setAddScore(pageConfig.getScoreAdd());

		StringBuilder seatName = new StringBuilder();
		seats.forEach(s -> seatName.append(s.getSeatRow().toString() + s.getSeatColumn().toString() + " "));
		invoice.setSeat(seatName.toString());

		List<ScheduleSeat> scheduleSeats = new ArrayList<ScheduleSeat>();
		seats.forEach(s -> scheduleSeats.add(new ScheduleSeat(confirmTicketVo.getMovieId(),
				confirmTicketVo.getScheduleId(), s.getSeatId(), s.getStatus(), s.getSeatType())));
		invoice.setScheduleSeats(scheduleSeats);
		scheduleSeats.forEach(s -> s.setInvoice(invoice));
		invoiceRepository.save(invoice);

		List<Ticket> tickets = saveTicket(seats);
		if(tickets == null) {
			return false;
		}
		return true;
	}

	private Member saveMember(ConfirmTicketVo confirmTicketVo) {
		Member member = memberService.findByMemberIdOrIdendityCard(confirmTicketVo.getMemberId());

		if (member == null) {
			return null;
		}

		if (confirmTicketVo.getUseScore() == 0) {
			member.setScore(member.getScore() + pageConfig.getScoreAdd());
		} else {
			member.setScore(pageConfig.getScoreAdd() + (member.getScore() - confirmTicketVo.getUseScore()));
		}
		memberService.save(member);

		return member;
	}
	
	private List<Ticket> saveTicket(List<Seat> seats) {
		
		if(seats == null || seats.size() == 0) {
			return null;
		}
		
		List<Ticket> tickets = new ArrayList<Ticket>();
		seats.forEach(s -> tickets.add(new Ticket(s.getPrice(), s.getSeatType())));
		ticketService.saveAll(tickets);
		return tickets;
	}

}
