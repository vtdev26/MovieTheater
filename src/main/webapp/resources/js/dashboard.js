$(document).ready(function() {
	$("#ticket_selling").click(function() {
		$.get({
			url: "/admin/showtimes",
			success: function(response) {
				$(".container-fluid").html(response);
			},
			error: function(error) {
				alert("Falied!" + error);
			}
		});
	});


	$("#promotion").click(function() {
		$.get({
			url: "/admin/promotion/list",
			success: function(response) {
				$(".container-fluid").html(response);
			},
			error: function(error) {
				alert("Falied!" + error);
			}
		});
	});


	// chuonghv99
	$("body").on("click", "#employee, #btnBackEmoployee", function(e) {
		e.preventDefault();
		document.title = $(this).text();
		$.ajax({
			url: "/admin/employee/list-employee",
			success: function(response) {
				$("#content-page").html(response);
				pageIndex = $('ul.pagination').attr('pageIndex');
				var numOfPages = $('ul.pagination').attr('numOfPages');
				$('li.page-item').eq(pageIndex).addClass("active");
				if (pageIndex == 1) {
					$("a#previous").css("opacity", "0.4");
					$("a#previous").prop("disabled", true);
				}
				if (pageIndex == numOfPages) {
					$("a#next").css("opacity", "0.4");
					$("a#next").prop("disabled", true);
				}
			},

		});
	});
	//khanhdd7
	$("#movie").click(function() {
		$.get({
			url: "/admin/movie/list",
			success: function(response) {
				$(".container-fluid").html(response);
			},
			error: function(error) {
				alert("Falied!" + error);
			}
		});
	});

	//ThangNT26
	$("#cinema_room").click(function() {
		$.get({
			url: "/room/list-room",
			success: function(response) {
				$(".container-fluid").html(response);
			},
			error: function(error) {
				alert("Falied!" + error);
			}
		});
	});





	// ChuongHV1
	$("body").on("click", "#addEmployee", function(e) {
		e.preventDefault();
		$.get({
			url: "/admin/employee/add-employee",
			async: false,
			success: function(response) {
				$("#content-page").html(response);
			},
		})

	});

	// Click change select	
	$("body").on('change', '#selectPageSize', function(e) {
		var dataSearch = $("#inputSearch").val();
		var pageSize = $("#selectPageSize").val();
		var pageIndex = 1;
		$.get({
			url: "/admin/employee/list-employee/filter",
			async: false,
			data: {
				pageIndex: pageIndex,
				pageSize: pageSize,
				dataSearch: dataSearch,
			},
			success: function(response) {
				$("#content-table").html(response);
				$("#inputSearch").val(dataSearch);
				$("#selectPageSize").val(pageSize);

				pageIndex = $('ul.pagination').attr('pageIndex');
				var numOfPages = $('ul.pagination').attr('numOfPages');
				$('li.page-item').eq(pageIndex).addClass("active");
				if (pageIndex == 1) {
					$("a#previous").css("opacity", "0.4");
					$("a#previous").prop("disabled", true);
				}
				if (pageIndex == numOfPages) {
					$("a#next").css("opacity", "0.4");
					$("a#next").prop("disabled", true);
				}
			},
		})
	});

	// search
	$('body').on("input", '#inputSearch', function(e) {
		e.preventDefault();
		var dataSearch = $("#inputSearch").val();
		var pageIndex = 1;
		var pageSize = $("#selectPageSize").val();
		$.ajax({
			url: "/admin/employee/list-employee/filter",
			data: {
				pageIndex: pageIndex,
				pageSize: pageSize,
				dataSearch: dataSearch
			},
			success: function(response) {
				$("#content-table").html(response);
				$("#inputSearch").val(dataSearch);
				$("#selectPageSize").val(pageSize);

				pageIndex = $('ul.pagination').attr('pageIndex');
				var numOfPages = $('ul.pagination').attr('numOfPages');
				$('li.page-item').eq(pageIndex).addClass("active");
				if (pageIndex == 1) {
					$("a#previous").css("opacity", "0.4");
					$("a#previous").prop("disabled", true);
				}
				if (pageIndex == numOfPages) {
					$("a#next").css("opacity", "0.4");
					$("a#next").prop("disabled", true);
				}
			},
			error: function(response) {

			}
		});
	});

	// Click previous button 
	$("body").on("click", "a#previous", function(e) {
		e.preventDefault();
		var pageIndex = $('ul.pagination').attr('pageIndex');
		var dataSearch = $("#inputSearch").val();
		pageIndex = (pageIndex == 1) ? 1 : pageIndex - 1;
		var dataSearch = $("#inputSearch").val();
		var pageSize = $("#selectPageSize").val();

		$.get({
			url: "/admin/employee/list-employee/filter",
			async: false,
			data: {
				dataSearch: dataSearch,
				pageIndex: pageIndex,
				pageSize: pageSize,
			},
			success: function(response) {
				$("#content-table").html(response);
				$("#inputSearch").val(dataSearch);
				$("#selectPageSize").val(pageSize);

				pageIndex = $('ul.pagination').attr('pageIndex');
				var numOfPages = $('ul.pagination').attr('numOfPages');
				$('li.page-item').eq(pageIndex).addClass("active");
				if (pageIndex == 1) {
					$("a#previous").css("opacity", "0.4");
					$("a#previous").prop("disabled", true);
				}
				if (pageIndex == numOfPages) {
					$("a#next").css("opacity", "0.4");
					$("a#next").prop("disabled", true);
				}

			},
		})

	});

	// Click page index 
	$("body").on("click", "a#pageIndex", function(e) {
		e.preventDefault();
		var dataSearch = $("#inputSearch").val();
		var pageIndex = $(this).attr("value");

		var pageSize = $("#selectPageSize").val();
		$.get({
			url: "/admin/employee/list-employee/filter",
			async: false,
			data: {
				dataSearch: dataSearch,
				pageIndex: pageIndex,
				pageSize: pageSize,
			},
			success: function(response) {
				$("#content-table").html(response);
				$("#inputSearch").val(dataSearch);
				$("#selectPageSize").val(pageSize);

				pageIndex = $('ul.pagination').attr('pageIndex');
				var numOfPages = $('ul.pagination').attr('numOfPages');
				$('li.page-item').eq(pageIndex).addClass("active");
				if (pageIndex == 1) {
					$("a#previous").css("opacity", "0.4");
					$("a#previous").prop("disabled", true);
				}
				if (pageIndex == numOfPages) {
					$("a#next").css("opacity", "0.4");
					$("a#next").prop("disabled", true);
				}
			},

		})

	});

	// Click next button 
	$("body").on("click", "a#next", function(e) {
		e.preventDefault();
		var pageIndex = $('ul.pagination').attr('pageIndex');
		
		pageIndex = pageIndex - (-1);
		var dataSearch = $("#inputSearch").val();
		var pageSize = $("#selectPageSize").val();
		
		$.get({
			url: "/admin/employee/list-employee/filter",
			async: false,
			data: {
				dataSearch: dataSearch,
				pageIndex: pageIndex,
				pageSize: pageSize,
			},
			success: function(response) {
				$("#content-table").html(response);
				$("#inputSearch").val(dataSearch);
				$("#selectPageSize").val(pageSize);

				pageIndex = $('ul.pagination').attr('pageIndex');
				var numOfPages = $('ul.pagination').attr('numOfPages');
				$('li.page-item').eq(pageIndex).addClass("active");
				if (pageIndex == 1) {
					$("a#previous").css("opacity", "0.4");
					$("a#previous").prop("disabled", true);
				}
				if (pageIndex == numOfPages) {
					$("a#next").css("opacity", "0.4");
					$("a#next").prop("disabled", true);
				}
			},
		})

	});

});

