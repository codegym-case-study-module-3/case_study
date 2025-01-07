(function() {
    'use strict';
    $(document).on('click', '#btn_login', function () {
        setDataInitialize();
        $.ajax({
            url: "/login", // URL Servlet
            type: "post", // Phương thức
            data: $('#form_login').serialize(), // Gửi tham số (nếu cần)
            success: function (response) {
                if (response.status == "error") {
                    $('.error-message').text(response.message);
                } else {
                    location.reload();
                }
            },
            error: function (xhr, status, error) {
                console.error("AJAX Error: ", error);
            }
        });
    });

    $(document).on('click', '#btn_register', function () {
        setDataInitialize();
        var formId = '#form_register';
        $.ajax({
            url: "/register", // URL Servlet
            type: "post", // Phương thức
            data: $(formId).serialize(), // Gửi tham số (nếu cần)
            success: function (response) {
                // console.log(response)
                if (response.status == "validator") {
                    var validator = JSON.parse(response.validate);
                    $.each(validator, function (key, value) {
                        var element = 'input';
                        var input = formId + ' ' + element + '[name="' + key + '"]';
                        $(input).addClass('is-invalid');
                        $(input + '+span strong').text(value);
                    });
                } else {
                    // location.reload();
                    alert("Đăng ký tài khoản thành công!!!");
                    window.location.href = "/";
                }
            },
            error: function (xhr, status, error) {
                console.error("AJAX Error: ", error);
            }
        });
    });

}) ();

function setDataInitialize() {
    $('.invalid-feedback strong').text('');
    $('.text-danger strong').text('');
    $('.error-message').text('');
    $('input').removeClass('is-invalid');
    $('textarea').removeClass('is-invalid');
}