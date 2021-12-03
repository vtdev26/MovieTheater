$(document).ready(function() {
	function Validator(options) {
		var selectorRules = {};

		var formElement = document.querySelector(options.form);
		// console.log(formElement)
		function validate(inputElement, rule) {
			var errorMessage;
			var errorElement = inputElement.parentElement.querySelector(options.errorSelector);

			var rules = selectorRules[rule.selector];
			for (var i = 0; i < rules.length; ++i) {
				errorMessage = rules[i](inputElement.value);
				if (errorMessage) break;
			}
			// console.log(errorMessage);
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
		console.log(selectorRules);
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
				return value.trim() ? undefined : message
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

	Validator({
		form: '#formDetailEmployee',
		errorSelector: '.form-message',
		rules: [
			Validator.isRequire('#account', 'The account is required'),
			Validator.isRequire('#password', 'The password is required'),
			// Validator.cfPassword('#rePassword', 'Not same with password'),
			Validator.isRequire('#fullName', 'The full name is required'),
			Validator.isRequire('#dateOfBirth', 'The date of birth is required'),
			Validator.isRequire('#identityCard', 'The identity card is required'),
			Validator.isRequire('#email', 'The email is required'),
			// Validator.isEmail('#email', 'Please input your correct email address'),
			Validator.isRequire('#address', 'The address is required'),
			Validator.isRequire('#phoneNumber', 'The phone number is required')
		]
	});

});