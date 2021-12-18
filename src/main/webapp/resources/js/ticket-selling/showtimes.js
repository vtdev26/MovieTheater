$(document).ready(function () {
	var dateSelecting = '';
	var pageIndex = 0;
	var scheduleId = 0;
	var movieId = '';
	var seatQuantity = 0;
	var timeName = '';
	var listSelectedSeat = [];

	$("body").on("click", ".content__time--label", function () {
		dateSelecting = $(this).attr("value");
		$.get({
			url: "/admin/showtimes",
			data: {
				dateSelecting: dateSelecting
			},
			success: function (response) {
				$(".container-fluid").html(response);
			},
			error: function (error) {
				alert("Falied!" + error);
			}
		});
	});
	$("body").on("click", "a.showtimes", function () {
		pageIndex = $(this).attr("value");
		$.get({
			url: "/admin/showtimes",
			data: {
				pageIndex: pageIndex,
				dateSelecting: dateSelecting
			},
			success: function (response) {
				$(".container-fluid").html(response);
			},
			error: function (error) {
				alert("Falied!" + error);
			}
		});
	});

	$("body").on("click", ".time", function () {
		scheduleId = $(this).data("schedule-id");
		movieId = $(this).data("movie-id");
		pageIndex = $(".pagination .active .showtimes").attr("value");
		timeName = $(this).data("time-name");
		dateSelecting = $("#btn_checked").attr("value");
		$.get({
			url: "/admin/selecting-seat",
			data: {
				movieId: movieId,
				scheduleId: scheduleId
			},
			success: function (response) {
				$(".container-fluid").html(response);
			},
			error: function (error) {
				alert("Falied!" + error);
			}
		});
	});

	$("body").on("click", ".pushable", function () {
		$(".messageInfor").html("");
		if ($(this).hasClass("pushable-sold")) {
			$(".messageInfor").html("Sorry, this seat is sold. Please choose another seat.");
		} else if ($(this).hasClass("pushable-vip")) {
			$(this).removeClass("pushable-vip");
			$(this).addClass("pushable-selecting");
		} else if ($(this).hasClass("pushable-selecting")) {
			$(this).removeClass("pushable-selecting");
			if ($(this).data("type") == "vip") {
				$(this).addClass("pushable-vip");
			}
		} else {
			$(this).addClass("pushable-selecting");
		}
	});

	$("body").on("click", "#btn_Back_To_Showtime", function () {
		$.get({
			url: "/admin/showtimes",
			data: {
				pageIndex: pageIndex,
				dateSelecting: dateSelecting
			},
			success: function (response) {
				$(".container-fluid").html(response);
			},
			error: function (error) {
				alert("Falied!" + error);
			}
		});
	});

	$("body").on("click", "#btnContinue", function () {
		listSelectedSeat = [];
		seatQuantity = $("#seatQuantity").val();
		var seatSelectings = $(".pushable-selecting").length;
		if (seatQuantity > seatSelectings) {
			$(".messageInfor").html("Please select " + (seatQuantity - seatSelectings) + " seat more");
		} else if (seatQuantity < seatSelectings) {
			$(".messageInfor").html("Please select only " + seatQuantity + " seat");
		} else {
			$(".pushable-selecting").each(function () {
				listSelectedSeat.push($(this).data("seat-id"));
			});
			$.get({
				url: "/admin/confirm-ticket",
				traditional: true,
				data: {
					listSelectedSeat: listSelectedSeat,
					movieId: movieId
				},
				success: function (response) {
					$(".container-fluid").html(response);
					$("#dateConfirm").html(dateSelecting);
					$("#timeConfirm").html(timeName);
				},
				error: function (error) {
					alert("Falied!" + error);
				}
			});
		}
	});

	$("body").on("click", "#btn_Back_To_SelectingSeat", function () {
		$.get({
			url: "/admin/selecting-seat",
			data: {
				movieId: movieId,
				scheduleId: scheduleId
			},
			success: function (response) {
				$(".container-fluid").html(response);
			},
			error: function (error) {
				alert("Falied!" + error);
			}
		});
	});

	$("body").on("click", "#btnSearchIdMember", function () {
		var memberInfor = $("#memberInfor").val();
		$.get({
			url: "/admin/confirm-ticket/" + memberInfor,
			dataType: "json",
			success: function (response) {
				$(".member-information").html("");
				$("#messageConfirm").html("");
				$(".member-information").append(`
				<tr>
				<th scope="row">Member ID:</th>
				<td>${response.memberId}</td>
			</tr>
			<tr>
				<th scope="row">Identity Card:</th>
				<td>${response.account.identityCard}</td>
			</tr>
			<tr>
				<th scope="row">Full Name:</th>
				<td>${response.account.fullName}</td>
			</tr>
			<tr>
				<th scope="row">Phone:</th>
				<td>${response.account.phoneNumber}</td>
			</tr>
			<tr  id="scoreColumn">
				<th scope="row">Score:</th>
				<td class="text-success font-weight-bold" id="memberScore" data-score="${response.score}">
					${response.score}
                </td>
			</tr>
			<tr id="convertColumn">
				<th scope="row">Convert to ticket:*</th>
				<td>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="exampleRadios"
							value="option1" id="radAgree">
						<label class="form-check-label" for="exampleRadios1">
							Agree
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="exampleRadios"
							id="radDisagree" value="option2">
						<label class="form-check-label" for="exampleRadios2">
							Disagree
						</label>
					</div>
				</td>
			</tr>
				`);
			},
			error: function (error) {
				$(".member-information").html("");
				$("#messageConfirm").html("");
				$("#messageConfirm").html("No member has found!");
			}
		});
	});

	$("body").on("change", "#radAgree", function () {
		if ($(this).prop('checked')) {
			var score = $("#memberScore").data("score");
			var totalPrice = $(".totalPriceTicket").data("total-price");
			if(score < totalPrice){
				$("#messageConfirm").html("Member score is not enough to convert into ticket");
				$(this).prop('checked', false); 
			}else{
				if(confirm("Confirm if you want to convert score!") == true){
					$("#scoreColumn").remove();
					$("#convertColumn").remove();
				}
			}
		}
	});
});