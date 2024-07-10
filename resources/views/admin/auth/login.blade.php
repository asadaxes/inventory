<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="POS - Bootstrap Admin Template">
    <meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
    <meta name="author" content="Dreamguys - Bootstrap Admin Template">
    <meta name="robots" content="noindex, nofollow">
    <title>Login - Pos admin template</title>

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

{{--    <!-- Bootstrap CSS -->--}}
{{--    <link rel="stylesheet" href="assets/css/bootstrap.min.css">--}}

{{--    <!-- Fontawesome CSS -->--}}
{{--    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">--}}
{{--    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">--}}

{{--    <!-- Main CSS -->--}}
{{--    <link rel="stylesheet" href="assets/css/style.css">--}}

    @include('admin.include.assets.css')

</head>
<body class="account-page">

<!-- Main Wrapper -->
<div class="main-wrapper">
    <div class="account-content">
        <div class="login-wrapper">
            <div class="login-content">
                <div class="login-userset">
                    <div class="login-logo logo-normal">
                        <img src="{{asset('/')}}admin/assets/img/logo.png" alt="img">
                    </div>
                    <a href="index.html" class="login-logo logo-white">
                        <img src="{{asset('/')}}admin/assets/img/logo-white.png"  alt="">
                    </a>
                    <div class="login-userheading">
                        <h3>Sign In</h3>
                        <h4>Please login to your account</h4>
                    </div>
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-login">
                            <label>Email</label>
                            <div class="form-addons">
                                <input type="text" placeholder="Enter your email address" name="email">
                                <img src="{{asset('/')}}admin/assets/img/icons/mail.svg" alt="img">
                            </div>
                        </div>
                        <div class="form-login">
                            <label>Password</label>
                            <div class="pass-group">
                                <input type="password" class="pass-input" name="password" placeholder="Enter your password">
                                <span class="fas toggle-password fa-eye-slash"></span>
                            </div>
                        </div>
                        <div class="form-login">
                            <div class="alreadyuser">
                                <h4><a href="{{ route('password.request') }}" class="hover-a">Forgot Password?</a></h4>
                            </div>
                        </div>
                        <div class="form-login">
                            <button class="btn btn-login" type="submit">Sign In</button>
{{--                            <a class="btn btn-login" href="index.html">Sign In</a>--}}
                        </div>
                    </form>
                    <div class="signinform text-center">
                        <h4>Don’t have an account? <a href="{{ route('register') }}" class="hover-a">Sign Up</a></h4>
                    </div>
                    <div class="form-setlogin">
                        <h4>Or sign up with</h4>
                    </div>
                    <div class="form-sociallink">
                        <ul>
                            <li>
                                <a href="javascript:void(0);">
                                    <img src="{{asset('/')}}admin/assets/img/icons/google.png" class="me-2" alt="google">
                                    Sign Up using Google
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <img src="{{asset('/')}}admin/assets/img/icons/facebook.png" class="me-2" alt="google">
                                    Sign Up using Facebook
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="login-img">
                <img src="{{asset('/')}}admin/assets/img/login.jpg" alt="img">
            </div>
        </div>
    </div>
</div>
<!-- /Main Wrapper -->

{{--<!-- jQuery -->--}}
{{--<script src="assets/js/jquery-3.6.0.min.js"></script>--}}

{{--<!-- Feather Icon JS -->--}}
{{--<script src="assets/js/feather.min.js"></script>--}}

{{--<!-- Bootstrap Core JS -->--}}
{{--<script src="assets/js/bootstrap.bundle.min.js"></script>--}}

{{--<!-- Custom JS -->--}}
{{--<script src="assets/js/script.js"></script>--}}

@include('admin.include.assets.js')
</body>
</html>
