$(document).ready(function() {

	$("body").on("click", "a#page", function() {
		var pageIndex = $(this).attr("value");
		var searchData = $("#searchInput").val();
		console.log(pageIndex);
		$.get({
			url: "/promotion/search",
			data: {
				pageIndex: pageIndex,
				searchData: searchData,
			},
			success: function(response) {
				$("div#table-promotion").html(response);
			},
			error: function(responseError) {
				alert(JSON.stringify(responseError));
			}
		});
	});

	$("body").on("click", "a#pre", function() {
		var pageIndex = $(this).attr("value");
		var searchData = $("#searchInput").val();
		$.get({
			url: "/promotion/search",
			data: {
				pageIndex: pageIndex,
				searchData: searchData,
			},
			success: function(response) {
				$("div#table-promotion").html(response);
			},
			error: function(responseError) {
				alert(JSON.stringify(responseError));
			}
		});
	});

	$("body").on("click", "a#next", function() {
		var pageIndex = $(this).attr("value");
		var searchData = $("#searchInput").val();
		$.get({
			url: "/promotion/search",
			data: {
				pageIndex: pageIndex,
				searchData: searchData,
			},
			success: function(response) {
				$("div#table-promotion").html(response);
			},
			error: function(responseError) {
				alert(JSON.stringify(responseError));
			}
		});
	});

	$("body").on("input", "input#searchInput", function() {
		var searchData = $("#searchInput").val();
		$.get({
			url: "/promotion/search",
			data: {
				searchData: searchData,
			},
			success: function(response) {
				$("div#table-promotion").html(response);
			},
			error: function(responseError) {
				alert(JSON.stringify(responseError));
			}
		});
	});

});