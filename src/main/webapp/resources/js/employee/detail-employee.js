
$(document).ready(function () {
	$("body").on("click", "#btnSaveEmployee", function (e) {
		e.preventDefault();

		// var account = new Object();
		// account.userName = $('#account').val();
		// account.password = $('#password').val();
		// account.fullName = $('#fullName').val();
		// account.dateOfBirth = $('#dateOfBirth').val();

		// account.gender = ($('input[name=gender]:checked').val());
		// account.identityCard = $('#identityCard').val();
		// account.email = $('#email').val();
		// account.address = $('#address').val();
		// account.phoneNumber = $('#phoneNumber').val();

		// account.image = "img_test";

		var form = $('#formDetailEmployee')[0];
		var data = new FormData(form);


		data.set("image", "img_test")

		for (var pair of data.entries()) {
			console.log(pair[0] + ': ' + pair[1]);
		}
		// $.post({
		// 	async: false,
		// 	url: "/admin/employee/save-employee",
		// 	enctype: 'multipart/form-data',
		// 	dataType: 'JSON',
		// 	contentType: 'application/json',
		// 	data: data,
		// 	success: function (response) {
		// 		alert(JSON.stringify(response));
		// 	},
		// 	error: function (error) {
		// 		alert("Falied!" + error);
		// 	}
		// })
	});

});