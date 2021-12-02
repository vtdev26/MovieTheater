$(document).ready(function() {
	var dateSelecting;
	$("body").on("click", ".content__time--label", function() {
		dateSelecting = $(this).attr("value");
		$.get({
			url: "/admin/showtimes",
			data: {
				dateSelecting: dateSelecting
			},
			success: function(response) {
				$(".container-fluid").html(response);
			},
			error: function(error) {
				alert("Falied!" + error);
			}
		});
	});
	$("body").on("click", "a.showtimes", function() {
		var pageIndex = $(this).attr("value");
		$.get({
			url: "/admin/showtimes",
			data: {
				pageIndex: pageIndex,
				dateSelecting: dateSelecting
			},
			success: function(response) {
				$(".container-fluid").html(response);
			},
			error: function(error) {
				alert("Falied!" + error);
			}
		});
	});

	$("body").on("click", ".time", function(){
		var timeId = $(this).data("time-id");
		var movieId = $(this).data("movie-id");
		var pageIndex = $(".pagination .active .showtimes").attr("value");
		$.get({
			url: "/admin/selecting-seat",
			data: {
				timeId: timeId,
				movieId: movieId,
				pageIndex: pageIndex,
				dateSelecting: dateSelecting
			},
			success: function (response){
				$(".container-fluid").html(response);
				$(".btnContinue").data("id-movie", movieId);
				$(".btnContinue").data("id-time", timeId);
				$(".btnBack").data("page", pageIndex);
				$(".btnBack").data("date", dateSelecting);
			},
			error: function(error) {
				alert("Falied!" + error);
			}
		});
	});
});