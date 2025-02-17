<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login</title>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/bootstrap/bootstrap.css')}}" type="text/css">
    <link rel="stylesheet" href="{{ asset('css/style.css')}}" type="text/css">
    <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css')}}" type="text/css">

    <!-- Script -->
    <script src="{{ asset('js/jquery-3.5.1.min.js')}}"></script>
    <script src="{{ asset('js/general.js')}}"></script>
    <script src="{{ asset('js/popper.min.js')}}"></script>
    <script src="{{ asset('js/bootstrap.min.js')}}"></script>
    <script src="{{ asset ('plugin/jqueryvalidation/jquery.validate.js')}}"></script>
    <script src="{{ asset('plugin/jqueryvalidation/additional-methods.js')}}"></script>

    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #FEDBE9, #FF7FAF); /* Soft pink to purple gradient */
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .loginpage {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 40px 30px;
            width: 100%;
            max-width: 450px;
        }

        .title {
            font-weight: 700;
            color: #000000;
        }

        .form-group label {
            font-weight: 500;
            color: #000000;
        }

        .form-control {
            border-radius: 8px;
            padding: 12px;
            border: 1px solid #8232E9; /* Purple border */
        }

        .form-control:focus {
            border-color: #FA7DAC; /* Pink focus */
            box-shadow: 0 0 5px rgba(250, 125, 172, 0.5);
        }

        .btn-primary {
            background-color: #FA7DAC; /* Pink button */
            border: none;
            border-radius: 8px;
            padding: 12px 20px;
            font-weight: 700;
            color: #ffffff;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #8232E9; /* Change to purple on hover */
        }

        .panel-body {
            margin-top: 20px;
        }

        #messageerror {
            color: red;
            margin-top: 10px;
            display: none;
        }

        .text-center {
            color: #000000; /* Black text */
        }

        .logged {
            display: none;
        }

        .logo-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo-container img {
            max-width: 250px;
        }

        @media (max-width: 768px) {
            .loginpage {
                padding: 20px;
            }

            .title {
                font-size: 1.5rem;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="panel panel-default loginpage">
                    <div class="logo-container">
                        <img src="{{ asset('https://tagjen.chiragpawar.space/app/upload/logo-banner.png') }}" alt="Logo"> <!-- My Logo -->
                    </div>
                    <div class="header text-center mb-4">
                        <h3 class="title"><?php echo trans('lang.login'); ?></h3>
                        <p id="messageerror" class="display-none"></p>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" name="form-login" id="form-login" method="POST">
                            {{ csrf_field() }}

                            <div class="form-group">
                                <label><?php echo trans('lang.email'); ?></label>
                                <input name="email" type="email" id="email" class="form-control" value="" required placeholder="<?php echo trans('lang.email'); ?>" />
                            </div>

                            <div class="form-group">
                                <label><?php echo trans('lang.password'); ?></label>
                                <input name="password" type="password" id="password" class="form-control" value="" required placeholder="<?php echo trans('lang.password'); ?>" />
                            </div>

                            <div class="form-group">
                                <button id="login" type="submit" class="btn btn-primary btn-block">
                                    <?php echo trans('lang.login'); ?>
                                </button>
                                <span class="logged d-none"><?php echo trans('lang.please_wait'); ?> </span>
                                <span class="login-message d-none"><?php echo trans('lang.login'); ?> </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
        });

        $("#form-login").validate({
            submitHandler: function(form) {
                $.ajax({
                    method: "POST",
                    url: "{{ url('login')}}",
                    data: $("#form-login").serialize(),
                    dataType: "JSON",
                    beforeSend: function () {
                        $('#login').html($(".logged").html());
                        $('#login').prop("disabled", true);
                    },
                    success: function(data) {
                        if (data.success == 'success') {
                            window.setTimeout(function() {
                                location.href = 'home'
                            }, 1000)
                        } else if (data.success == 'failed') {
                            $("#messageerror").html(data.message);
                            $("#messageerror").css('display', 'block');
                            $('#login').html($(".login-message").html());
                            $('#login').prop("disabled", false);
                        } else {
                            $("#messageerror").html(data.message);
                            $("#messageerror").css('display', 'block');
                        }
                    }
                });
            }
        });
    </script>
</body>

</html>
