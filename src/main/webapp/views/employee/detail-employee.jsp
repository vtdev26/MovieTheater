<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 class="row justify-content-center font-weight-bold">${employeeVos == null ? 'Add Employee' : 'Edit Employee'}</h3>
<!-- <h5 class="text-danger">Save fail! Try again</h5> -->
<div>
	<hr>
	<form action="" method="post" name="formDetailEmployee"
		id="formDetailEmployee">

		<div class="form-group field">
			<label for="account">Account <span class="text-danger">(*)</span></label>
			<input type="text" class="form-control" id="account" name="account"
				placeholder="Account"> <span
				class="form-message text-danger"></span>

		</div>

		<div class="form-group">
			<label for="password">Password <span class="text-danger">(*)</span></label>
			<input type="password" class="form-control field" id="password"
				name="password" placeholder="Account"> <span
				class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="cfPassword">Password <span class="text-danger">(*)</span></label>
			<input type="password" class="form-control" id="cfPassword"
				name="cfPassword" placeholder="Confirm password"> <span
				class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="fullName">Full Name <span class="text-danger">(*)</span></label>
			<input type="text" class="form-control" id="fullName" name="fullName"
				placeholder="Full Name"> <span
				class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="dateOfBirth">Date of Birth <span
				class="text-danger">(*)</span></label> <input type="date"
				class="form-control" id="dateOfBirth" name="dateOfBirth"
				placeholder="Date of birth"> <span
				class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="exampleInputGender">Gender <span
				class="text-danger">(*)</span></label>
			<div>
				<input type="radio" class="flat" name="gender" id="genderFemale"
					value="M" checked /> Nam <input type="radio" class="flat ml-4"
					name="gender" id="genderMale" value="F" /> Nữ
			</div>
			<span class="form-message text-danger"></span>

		</div>

		<div class="form-group">
			<label for="identityCard">Identity card <span
				class="text-danger">(*)</span></label> <input type="text"
				class="form-control" id="identityCard" name="identityCard"
				placeholder="identityCard"> <span
				class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="email">Email <span class="text-danger">(*)</span></label>
			<input type="text" class="form-control" id="email" name="email"
				placeholder="Email"> <span class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="address">Address <span class="text-danger">(*)</span></label>
			<input type="text" class="form-control" id="address" name="address"
				placeholder="address"> <span
				class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="phoneNumber">Phone number <span
				class="text-danger">(*)</span></label> <input type="text"
				class="form-control" id="phoneNumber" name="phoneNumber"
				placeholder="Phone number"> <span
				class="form-message text-danger"></span>
		</div>

		<div class="form-group">
			<label for="phoneNumber">Image</label> <input type="file"
				class="form-control" id="image" name="image"
				style="line-height: 100%;">
		</div>

		<button id="btnSaveEmployee" type="submit" class="btn btn-primary">
			<i class="fas fa-check"></i> Save
		</button>

		<button id="btnBackEmployee" type="button" class="btn btn-primary">
			<i class="fas fa-times"></i> Back
		</button>

	</form>
</div>
<script src="/resources/js/employee/detail-employee.js"></script>

