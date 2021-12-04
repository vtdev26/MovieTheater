
function Validator(options) {
	var selectorRules = {};
	var formElement = document.querySelector(options.form);
	function validate(inputElement, rule) {
		var errorMessage;
		var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
		var rules = selectorRules[rule.selector];
		for (var i = 0; i < rules.length; ++i) {
			errorMessage = rules[i](inputElement.value);
			if (errorMessage) break;
		}
		if (errorMessage) {
			errorElement.innerText = errorMessage;

			inputElement.parentElement.classList.add('invalid');
		} else {
			errorElement.innerText = '';
			inputElement.parentElement.classList.remove('invalid');
		}
		return !errorMessage;
	}

	var formElement = document.querySelector(options.form);
	if (formElement) {
		formElement.onsubmit = function(e) {
			e.preventDefault();
			var isFormValid = true;
			options.rules.forEach(function(rule) {
				var inputElement = formElement.querySelector(rule.selector);
				var isValid = validate(inputElement, rule);
				if (!isValid) {
					isFormValid = false;
				}
			});

			if (isFormValid) {
				formElement.submit();
			}
		}
		options.rules.forEach(function(rule) {
			if (Array.isArray(selectorRules[rule.selector])) {
				selectorRules[rule.selector].push(rule.test);
			} else {
				selectorRules[rule.selector] = [rule.test];
			}
			var inputElement = formElement.querySelector(rule.selector);
			if (inputElement) {
				inputElement.onblur = function() {
					validate(inputElement, rule);
					inputElement.oninput = function() {
						var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
						errorElement.innerText = '';
						inputElement.parentElement.classList.remove('invalid');
					}
				}
			}
		});
	}
}
Validator.isRequire = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			return value.trim() ? undefined : message
		}
	};

}

Validator.cfPassword = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			return value === document.getElementById("password").value ? undefined : message
		}
	};

}

Validator.isEmail = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			return regex.test(value) ? undefined : message;
		}
	};
}

Validator.isPhone = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			var regex = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/;
			return regex.test(value) ? undefined : message;
		}
	};
}

Validator.maxDate = function(selector, message) {
	return {
		selector: selector,
		test: function(value) {
			var current = new Date();
			var date = new Date(value);
			return (current.getTime() > date.getTime()) ? undefined : message;
		}
	}
}

Validator({
	form: '#formDetailEmployee',
	errorSelector: '.form-message',
	rules: [
		Validator.isRequire('#account', 'The account is required'),
		Validator.isRequire('#password', 'The password is required'),
		Validator.cfPassword('#cfPassword', 'Not same with password'),
		Validator.isRequire('#fullName', 'The full name is required'),
		Validator.isRequire('#dateOfBirth',
			'The date of birth is required'),
		Validator.maxDate('#dateOfBirth',
			'The date of birth must be less than current date'),
		Validator.isRequire('#identityCard',
			'The identity card is required'),
		Validator.isRequire('#email', 'The email is required'),
		Validator.isEmail('#email',
			'The email is not in the correct format'),
		Validator.isRequire('#address', 'The address is required'),
		Validator.isRequire('#phoneNumber',
			'The phone number is required'),
		Validator.isPhone('#phoneNumber',
			'The phone number is not in the correct format')]
});
