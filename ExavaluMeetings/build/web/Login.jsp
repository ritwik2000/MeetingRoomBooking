<%-- 
    Document   : Login
    Created on : 17 Mar, 2021, 10:59:44 AM
    Author     : Sanket
--%>


<!DOCTYPE html>


<html class="no-js" lang="en">
    <head>
        <title>Login | EXAVALUMeetingRoomApp </title>

        <meta http-equiv="refresh" content="1799" />
        <meta charset="utf-8" />
        <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />

        <title>Login | MeetingRoomApp</title>
        <meta name="description" content="" />

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&amp;subset=latin-ext" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="css/Login.css" media="screen" />

        <link rel="shortcut icon" href="images/download (1).png" />

        <script>
            (function () {
                var className = document.documentElement.className;
                className = className.replace('no-js', 'js');

                if (window.name.indexOf('fontsLoaded=true') > -1) {
                    className += ' fonts-loaded';
                }

                document.documentElement.className = className;
            }());
        </script>

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js" referrerpolicy="no-referrer"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" referrerpolicy="no-referrer"></script>
        <![endif]-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.4/js/standalone/selectize.min.js" referrerpolicy="no-referrer"></script>
        <script>document.documentElement.className = document.documentElement.className.replace('no-js', 'js');</script>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-65607075-9', 'auto');
            ga('send', 'pageview');

        </script>

        <script>
            (function (h, o, t, j, a, r) {
                h.hj = h.hj || function () {
                    (h.hj.q = h.hj.q || []).push(arguments)
                };
                h._hjSettings = {hjid: 460772, hjsv: 5};
                a = o.getElementsByTagName('head')[0];
                r = o.createElement('script');
                r.async = 1;
                r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
                a.appendChild(r);
            })(window, document, '//static.hotjar.com/c/hotjar-', '.js?sv=');
        </script>
        <script>
            console.log = function () {};
            console.warn = function () {};
            console.error = function () {};
        </script>




        <script>
            function troubleShoot() {
                if (document.getElementById('mfaTroubleshoot').style.display === 'none') {
                    document.getElementById('mfaTroubleshoot').style.display = 'block';
                    document.body.className = 'has-message';

                } else {
                    document.getElementById('mfaTroubleshoot').style.display = 'none';
                    document.body.className = '';
                }
            }
        </script>
        <script>
            $(document).ready(function () {
                $("#login").click(function () {

                    if ($("#email").val() == '') {
                        $("#email").parents('p').removeClass("is-error").removeClass("is-valid").addClass("is-error");
                    } else {
                        $("#email").parents('p').removeClass("is-error");
                    }

                    if ($("#password").val() == '') {
                        $("#password").parents('p').removeClass("is-error").removeClass("is-valid").addClass("is-error");
                    } else {
                        $("#password").parents('p').removeClass("is-error");
                    }

                    if ($(".is-error")[0]) {

                    } else {
                        $("#login-form").submit();
                    }
                });
            });
        </script>
    </head>
    <body>
        <!--[if lt IE 9 ]>
        <div class="b-trial"><p>You are using an unsupported browser. <br/>Some features may not work correctly. <br/>Please use
            <strong>Chrome, Firefox, Safari or Microsoft Edge.</strong><br/><a href="javascript:;" class="btn js-hide-message"
                                                                               style="width: auto"><span
                    class="btn__text">I got it</span></a></p></div><![endif]-->


        <div class="b-content b-content--extend is-grey">
            <div class="b-content__left">




                <style>
                    body {
                        background-image: url('images/backgroundimages-loginpage.jpg');
                    }
                </style>






                <div class="b-content__inner">
                    <div class="b-content__vertical">
                        <p class="b-content__logo">
                            <a>
                                <img src="images/download (1).png" alt="MeetingRoomApp" width="220" height="43" />
                            </a>
                        </p>

                        <form method="post" action="Login" role="form" id="login-form" name="login-form" class="f-std">
                            <ul>
                                <li id="errorMessage">
                                    <a href="#">${error}</span></a>
                                </li>
                            </ul>
                            <p class="inp__row no-label">
                                <label for="email" class="inp__label">Email</label>
                                <span class="inp__fix">

                                    <input id="email" name="email" type="text" placeholder="Email" class="inp__text" required="required"></input>
                                </span>
                            </p>

                            <p class="inp__row no-label">
                                <label for="password" class="inp__label">Password</label>
                                <span class="inp__fix">

                                    <input id="password" name="password" type="password" placeholder="Password" class="inp__text" required="required" />

                                </span>
                            </p>

                            <p class="inp__checkbox">
                                <input type="checkbox" name="remember-me" id="remember-me" />
                                <label for="remember-me" class="inp__label">Keep me signed in on this computer<span class="inp__checkbox--state"><span class="icon-svg icon-svg--check ">
                                            <svg class="icon-svg__svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <use xlink:href="/img/bg/icons-svg.svg#icon-check" x="0" y="0" width="100%" height="100%"></use>
                                            </svg>
                                        </span>
                                    </span></label>

                            </p>


                            <p class="inp__btn">
                                <button type="button" id="login" name="login" class="btn"><span class="btn__text">Login</span></button>
                            <h5><p>Don't have an Account? Create one:</p></h5>
                            </p>

                            <input type="hidden" name="_csrf" value="32bf365e-6307-4592-8e57-0920331d0985" />
                            <input type="hidden" id="baseUrl" value="https://cloud.meetingroomapp.com:443" />

                        </form>
                    </div>
                </div>

                <div class="b-content__controls">
                    <div class="b-content__vertical">
                        <div class="b-content__btns">
                            <p class="inp__btn">
                                <a href="Signup.jsp" class="btn btn--account btn--icon">
                                    <span class="btn__text">
                                        <span class="icon-svg icon-svg--btn-mra ">
                                            <svg class="icon-svg__svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <use xlink:href="/img/bg/icons-svg.svg#icon-btn-mra" x="0" y="0" width="100%" height="100%"></use>
                                            </svg>

                                        </span>


                                        Create an account
                                    </span>
                                </a>
                            </p>
                            <p class="inp__btn">

                                </span>
                                </a>
                            </p>

                            </span>
                            </a>
                            </p>

                        </div>
                    </div>
                </div>





            </div>
            <div class="b-content__right">
                <p class="b-content__app">
                    <img src="https://cdn2.meetingroomapp.com/cloud/administration/img/illust/app.png" alt="MeetingRoomApp" width="420" height="340" />
                </p>
            </div>
        </div>

        <!--[if (gte IE 9) | (!IE)]><!-->
        <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=default,Array.prototype.find" referrerpolicy="no-referrer"></script>
        <script src="/new/js/app_login.js?t=1557839093567"></script>
        <script src="/new/js/svg4everybody.min.js?t=1557839093567"></script>
        <script>
                AppLogin.run({assetsImages: '/new/img/'});
                svg4everybody();
        </script>
        <!--<![endif]-->



    </body>
</html>
