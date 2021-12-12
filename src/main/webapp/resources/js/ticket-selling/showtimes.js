$(document).ready(function () {
	var dateSelecting = '';
	var pageIndex = 0;
	var scheduleId = 0;
	var movieId = '';
	var seatQuantity = 0;
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

	$("body").on("click", "#btnBack", function () {
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
		seatQuantity = $("#seatQuantity").val();
		var seatSelectings = $(".pushable-selecting").length;
		if(seatQuantity > seatSelectings) {
			$(".messageInfor").html("Please select " + (seatQuantity - seatSelectings) + " seat more");
		}else if(seatQuantity < seatSelectings) {
			$(".messageInfor").html("Please select only " + seatQuantity + " seat");
		}else{
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
				},
				error: function (error) {
					alert("Falied!" + error);
				}
			});
		}
	});
});