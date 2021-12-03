$(document).ready(function () {
    $.validator.addMethod('maxDate', function (value, element) {
        var curDate = new Date();
        var inputDate = new Date(value);
        if (inputDate < curDate)
            return true;
        return false;
    }, "Please input your correct date of birth"
    )

    $.validator.addMethod(
        'emailValid', function (value, element) {
            value = value.replace(/\s+/g, '')
            return (
                this.optional(element) ||
                value.match(
                    /^\w+([-+.'][^\s]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
                )
            )
        },
        'Please input your correct email address'
    )

    $.validator.addMethod(
        'phoneValid',
        function (value, element) {
            value = value.replace(/\s+/g, '')
            return (
                this.optional(element) ||
                value.match(/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/)
            )
        },
        'Please input your correct phone number'
    )

    $('#formEmployee').validate({
        rules: {
            account: {
                required: true
            },
            password: {
                required: true
            },
            cfPassword: {
                required: true,
                equalTo: "#password"
            },
            fullName: {
                required: true
            },
            dateOfBirth: {
                required: true,
                maxDate: true
            },
            identityCard: {
                required: true
            },
            email: {
                required: true,
                emailValid: true
            },
            address: {
                required: true
            },
            phoneNumber: {
                required: true,
                phoneValid: true
            }
        },
        messages: {
            account: {
                required: 'The account is required'
            },
            password: {
                required: 'The password is required'
            },
            cfPassword: {
                required: 'The password confirm is required',
                equalTo: 'Not same with password'
            },
            fullName: {
                required: 'The full is required',
            },
            dateOfBirth: {
                required: 'The date of birth is required',
            },
            identityCard: {
                required: 'The identity card is required'
            },
            email: {
                required: 'The email is required',
            },
            address: {
                required: 'The address is required'
            },
            phoneNumber: {
                required: 'The phone number is required',
            }
        },


        submitHandler: function (form) {

        },

    })
    // $('#reset').click(function () {
    //     $('label.error').hide()
    //     $('.form-control').removeClass('is-invalid')
    //     $('#addContent').trigger('reset')
    // })
})
