<%@page import="meetings.beans.Employee"%>
<!DOCTYPE html>
<html lang="en-US" class="no-js">
    <head>
        <script type="text/javascript">
            window.history.forward();
            function noBack()
            {
                window.onbeforeunload = function () {
                    return "Your work will be lost.";
                };
            }
        </script>
<!--        <meta charset="utf-8" />
        [if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
        <meta name="yandex-verification" content="5c300ea8531b0ccf" />
        <meta name="msvalidate.01" content="50C187D0172F8ABC251C26D0AC72DCEC" />
        <link rel="apple-touch-icon" sizes="180x180" href="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/favicons/apple-touch-icon.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/favicons/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="images/download (1).png" />
        <link rel="manifest" href="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/favicons/manifest.json" />
        <link rel="mask-icon" href="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/favicons/safari-pinned-tab.svg" color="#5bbad5" />
        <meta name="theme-color" content="#ffffff" />-->
<!--        <script>
            (function () {
                var className = document.documentElement.className;
                className = className.replace('no-js', 'js');
                document.documentElement.className = className;
            }());
        </script>-->
<!--        <script>
            window.intercomSettings = {
                app_id: "w18dnl3f"
            };
        </script>-->

<!--        <script>
            // We pre-filled your app ID in the widget URL: 'https://widget.intercom.io/widget/w18dnl3f'
            (function () {
                var w = window;
                var ic = w.Intercom;
                if (typeof ic === "function") {
                    ic('reattach_activator');
                    ic('update', w.intercomSettings);
                } else {
                    var d = document;
                    var i = function () {
                        i.c(arguments);
                    };
                    i.q = [];
                    i.c = function (args) {
                        i.q.push(args);
                    };
                    w.Intercom = i;
                    var l = function () {
                        var s = d.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = 'https://widget.intercom.io/widget/w18dnl3f';
                        var x = d.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    };
                    if (w.attachEvent) {
                        w.attachEvent('onload', l);
                    } else {
                        w.addEventListener('load', l, false);
                    }
                }
            })();
        </script>-->
        <!-- Begin DigiCert site seal JavaScript code -->
<!--        <script type="text/javascript">
            var __dcid = __dcid || [];
            __dcid.push(["DigiCertClickID_dopoyjJ1", "10", "s", "black", "dopoyjJ1"]);
            (function () {
                var cid = document.createElement("script");
                cid.async = true;
                cid.src = "//seal.digicert.com/seals/cascade/seal.min.js";
                var s = document.getElementsByTagName("script");
                var ls = s[(s.length - 1)];
                ls.parentNode.insertBefore(cid, ls.nextSibling);
            }());
        </script>-->
        <!-- End DigiCert site seal JavaScript code -->

        <title>Contact our Sales or Support | Meeting Room App</title>
<!--        <link rel="alternate" hreflang="cs" href="https://www.meetingroomapp.com/cs/kontakt/" />
        <link rel="alternate" hreflang="en" href="https://www.meetingroomapp.com/contact/" />
        <link rel="alternate" hreflang="de" href="https://www.meetingroomapp.com/de/kontakt/" />
        <link rel="alternate" hreflang="fr" href="https://www.meetingroomapp.com/fr/contact/" />
        <link rel="alternate" hreflang="es" href="https://www.meetingroomapp.com/es/contacto/" />
        <link rel="alternate" hreflang="ru" href="https://www.meetingroomapp.com/ru/k%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82/" />-->

        <!-- The SEO Framework by Sybre Waaijer -->
<!--        <meta name="description" content="If you have a question, please send us an email or use our live chat window. We?re here to help you." />
        <meta property="og:image" content="https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5.png" />
        <meta property="og:image:width" content="512" />
        <meta property="og:image:height" content="512" />
        <meta property="og:locale" content="en_US" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="Contact our Sales or Support | MeetingRoomApp" />
        <meta property="og:description" content="If you have a question, please send us an email or use our live chat window. We?re here to help you." />
        <meta property="og:url" content="https://www.meetingroomapp.com/contact/" />
        <meta property="og:site_name" content="MeetingRoomApp" />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content="Contact our Sales or Support | MeetingRoomApp" />
        <meta name="twitter:description" content="If you have a question, please send us an email or use our live chat window. We?re here to help you." />
        <meta name="twitter:image" content="https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5.png" />
        <meta name="twitter:image:width" content="512" />
        <meta name="twitter:image:height" content="512" />
        <link rel="canonical" href="https://www.meetingroomapp.com/contact/" />
        <script type="application/ld+json">{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"item":{"@id":"https://www.meetingroomapp.com/","name":"MeetingRoomApp"}},{"@type":"ListItem","position":2,"item":{"@id":"https://www.meetingroomapp.com/contact/","name":"Contact our Sales or Support"}}]}</script>-->
        <!-- / The SEO Framework by Sybre Waaijer | 5.60ms meta | 0.45ms boot -->

<!--        <link rel='dns-prefetch' href='//cdn.meetingroomapp.com' />
        <link rel='dns-prefetch' href='//fonts.googleapis.com' />-->
<!--        <link rel='dns-prefetch' href='//s.w.org' />
        <link rel='stylesheet' id='wp-block-library-css'  href='https://www.meetingroomapp.com/wp-includes/css/dist/block-library/style.min.css?ver=5.3.2' type='text/css' media='all' />
        <link rel='stylesheet' id='sk-fonts-css'  href='https://fonts.googleapis.com/css?family=Roboto%3A300%2C400%2C400i%2C500%2C700%2C900&#038;subset=latin-ext&#038;ver=1.3.6' type='text/css' media='all' />-->
        <link rel='stylesheet' id='sk-style-css'  href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/style.css?ver=1.3.6' type='text/css' media='screen' /><!--
        <link rel='stylesheet' id='sk-print-css'  href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/print.css?ver=1.3.6' type='text/css' media='print' />
-->        <script type='text/javascript' src='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/js/modernizr.min.js?ver=1.3.6'></script><!--
<!--        <script type='text/javascript' src='https://www.meetingroomapp.com/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp'></script>
        <script type='text/javascript' src='https://www.meetingroomapp.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
        <link rel='https://api.w.org/' href='https://www.meetingroomapp.com/wp-json/' />
        <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.meetingroomapp.com/xmlrpc.php?rsd" />
        <link rel="alternate" type="application/json+oembed" href="https://www.meetingroomapp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.meetingroomapp.com%2Fcontact%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://www.meetingroomapp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.meetingroomapp.com%2Fcontact%2F&#038;format=xml" />
        <meta name="generator" content="WPML ver:4.3.16 stt:9,1,4,3,46,2;" />
        <link rel="icon" href="images/download (1).png" sizes="32x32" />
        <link rel="icon" href="images/download (1).png" sizes="192x192" />
        <link rel="apple-touch-icon-precomposed" href="https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5-180x180.png" />
        <meta name="msapplication-TileImage" content="https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5-270x270.png" />-->

        <!-- Google Tag Manager -->
<!--        <script>(function (w, d, s, l, i) {
        w[l] = w[l] || [];w[l].push({'gtm.start':
                    new Date().getTime(), event: 'gtm.js'});var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';j.async = true;j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-KXWNQLB');</script>-->
        <!-- End Google Tag Manager -->


<!--        <script src="https://www.google.com/recaptcha/api.js?render=explicit" async defer></script>-->

    </head>
    <body class="page-template page-template-template-contact page-template-template-contact-php page page-id-18 en page-subpage">
        <% Employee employee = (Employee) request.getSession().getAttribute("employee");%>

        <div class="header">
            
            <div class="b-top-line">
                <div class="b-top-line__inner">
                    <p class="b-top-line__langs">
                        <a href="#langs" class="b-top-line__lang en" data-fancybox><span
                                class="b-top-line__lang-name">English</span></a>
                    </p>
                    <div class="b-top-line__controls">
                        <div class="m-controls">
                            <ul class="m-controls__list">
                                <!--                            <li class="m-controls__item is-help">
                                                                <a href="Signup.jsp"
                                                                    class="m-controls__link">SignUp</a>
                                                            </li>-->
                                <li class="m-controls__item is-help">
                                    <a href="Signup.jsp" class="m-controls__link">Sign Up</a>
				</li>
				<li class="m-controls__item is-login">
                                    <a href="Login.jsp" class="m-controls__link is-login">Login</a>
				</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header__inner">

                <p class="header__logo">
                    <a href="">
                        <img src="images/download (1).png" alt="MeetingRoomApp" width="271" height="32" />
                    </a>
                </p>

                <div id="menu-main" class="m-main">
                    <a href="#" class="m-main__toggle">
                        <span class="m-main__toggle-icon"></span>
                    </a>
                    
                    <ul id="menu-menu" class="m-main__list">
                        <li id="nav-menu-item-27"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="Home1.jsp" class="m-main__link">Home</a></li>
<!--                        <li id="nav-menu-item-26"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="Profile.jsp" class="m-main__link">My profile</a></li>
                        <li id="nav-menu-item-45537"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-sk_devices">
                            <a href="Calendar.jsp"
                               class="m-main__link">Book Meeting</a></li>
                        <li id="nav-menu-item-25"
                            class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="#" class="m-main__link">Cancel Meeting</a></li>

                        <li id="nav-menu-item-17622"
                            class="m-main__item  menu-item-even menu-item-depth-0 hide-desktop menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="https://www.meetingroomapp.com/help-technical-support/" class="m-main__link">Help</a>
                        </li>
                        <li id="nav-menu-item-22"
                            class="m-main__item  menu-item-even menu-item-depth-0 is-contact menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="#" class="m-main__link">Display Meeting</a></li>-->
                        <li class="m-main__item is-cta">
                            <a href="#" class="btn btn--green-border"><span class="btn__text">Welcome</span></a>
                        </li>
                        
                    </ul>
                    
                </div>
            </div>



        </div>

        <div id="main" class="main">
            <div class="b-contact">
                <div class="row-main">
                    <div class="grid">
                        <div class="b-contact__col-desc">
                            <div class="b-contact__desc">
                                <h1 class="b-contact__title">Get in Touch</h1>

                                <p class="b-contact_item b-contact_item--phone">
                                    <a href="">+9123998844</a>
                                </p>
                                <p class="b-contact_item b-contact_item--address">
                                    <small><strong>Headquarters and Billing Address</strong><br />
                                        5000 Birch Street, West Tower, Suite 3000<br />
                                        
                                        Newport Beach, CA 92660, USA</small><span class="b-contact__item--billing"><small><strong>Exavalu Solutions India Pvt Ltd
BENGAL ECO INTELLIGENT PARK,</strong><br />
                                            ID: 02565684<br />
                                            
                                            Telephone : +1- 888-EXAVALU (888-392-8258)</small></span>								</p>
                            </div>
                        </div>
                        <div class="b-contact__col-map">
                            <p class="b-contact__map">
                                <img src="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/illust/map.png" alt="Polská 54, 120 00 Prague" width="720" height="340" />
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="help" class="b-help">
            <div class="b-help__inner">
                <div class="row-main">
                    <div class="b-help__content">
                        <h2 class="b-help__title">See Booking System In Action</h2>
                        <p>Our sales and support staff is ready to help you with your questions</p>
                    </div>
                    <div class="b-help__form">

                        <div class="b-help__conditions">
                           
                               
                        </div>
                    </div>
                </div>
            </div>
        </div>
                             <br><br>
<%@ include file = "footer.jsp" %>