<%@page import="meetings.beans.Employee"%>
<!DOCTYPE html>
<html lang="en-US" class="no-js">

<head>
    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="yandex-verification" content="5c300ea8531b0ccf" />
    <meta name="msvalidate.01" content="50C187D0172F8ABC251C26D0AC72DCEC" />
    <link rel="apple-touch-icon" sizes="180x180" href="image/download (1).png" />
    <link rel="icon" type="image/png" sizes="32x32" href="image/download (1).png" />
    <link rel="icon" type="image/png" sizes="16x16" href="image/download (1).png" />
    <link rel="manifest"
        href="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/favicons/manifest.json" />
    <link rel="mask-icon"
        href="https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/img/favicons/safari-pinned-tab.svg"
        color="#5bbad5" />
    <meta name="theme-color" content="#ffffff" />
    <script>
        (function () {
            var className = document.documentElement.className;
            className = className.replace('no-js', 'js');
            document.documentElement.className = className;
        }());
    </script>
    <script>
        window.intercomSettings = {
            app_id: "w18dnl3f"
        };
    </script>

    <script>
        // We pre-filled your app ID in the widget URL: 'https://widget.intercom.io/widget/w18dnl3f'
        (function () { var w = window; var ic = w.Intercom; if (typeof ic === "function") { ic('reattach_activator'); ic('update', w.intercomSettings); } else { var d = document; var i = function () { i.c(arguments); }; i.q = []; i.c = function (args) { i.q.push(args); }; w.Intercom = i; var l = function () { var s = d.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = 'https://widget.intercom.io/widget/w18dnl3f'; var x = d.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x); }; if (w.attachEvent) { w.attachEvent('onload', l); } else { w.addEventListener('load', l, false); } } })();
    </script>
    <!-- Begin DigiCert site seal JavaScript code -->
    <script type="text/javascript">
        var __dcid = __dcid || []; __dcid.push(["DigiCertClickID_dopoyjJ1", "10", "s", "black", "dopoyjJ1"]); (function () { var cid = document.createElement("script"); cid.async = true; cid.src = "//seal.digicert.com/seals/cascade/seal.min.js"; var s = document.getElementsByTagName("script"); var ls = s[(s.length - 1)]; ls.parentNode.insertBefore(cid, ls.nextSibling); }());
    </script>
    <!-- End DigiCert site seal JavaScript code -->

    <title>Exavalu MeetingRoomApp</title>
    <link rel="alternate" hreflang="cs" href="https://www.meetingroomapp.com/cs/" />
    <link rel="alternate" hreflang="en" href="https://www.meetingroomapp.com" />
    <link rel="alternate" hreflang="de" href="https://www.meetingroomapp.com/de/" />
    <link rel="alternate" hreflang="fr" href="https://www.meetingroomapp.com/fr/" />
    <link rel="alternate" hreflang="es" href="https://www.meetingroomapp.com/es/" />
    <link rel="alternate" hreflang="ru" href="https://www.meetingroomapp.com/ru/" />

    <!-- The SEO Framework by Sybre Waaijer -->
    <meta name="description"
        content="The best meeting and conference room booking system with a number of unique functions for effective meeting management and optimization of company processes." />
    <meta property="og:image"
        content="https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5.png" />
    <meta property="og:image:width" content="512" />
    <meta property="og:image:height" content="512" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="MeetingRoomApp | The best meeting and conference room booking system" />
    <meta property="og:description"
        content="The best meeting and conference room booking system with a number of unique functions for effective meeting management and optimization of company processes." />
    <meta property="og:url" content="https://www.meetingroomapp.com/" />
    <meta property="og:site_name" content="MeetingRoomApp" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="MeetingRoomApp | The best meeting and conference room booking system" />
    <meta name="twitter:description"
        content="The best meeting and conference room booking system with a number of unique functions for effective meeting management and optimization of company processes." />
    <meta name="twitter:image"
        content="https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5.png" />
    <meta name="twitter:image:width" content="512" />
    <meta name="twitter:image:height" content="512" />
    <link rel="canonical" href="https://www.meetingroomapp.com/" />
    <script
        type="application/ld+json">{"@context":"https://schema.org","@type":"WebSite","url":"https://www.meetingroomapp.com/","name":"MeetingRoomApp","potentialAction":{"@type":"SearchAction","target":"https://www.meetingroomapp.com/search/{search_term_string}","query-input":"required name=search_term_string"}}</script>
    <script
        type="application/ld+json">{"@context":"https://schema.org","@type":"Organization","url":"https://www.meetingroomapp.com/","name":"MeetingRoomApp","logo":"https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5.png"}</script>
    <!-- / The SEO Framework by Sybre Waaijer | 7.37ms meta | 0.47ms boot -->

    <link rel='dns-prefetch' href='//cdn.meetingroomapp.com' />
    <link rel='dns-prefetch' href='//fonts.googleapis.com' />
    <link rel='dns-prefetch' href='//s.w.org' />
    <link rel='stylesheet' id='wp-block-library-css'
        href='https://www.meetingroomapp.com/wp-includes/css/dist/block-library/style.min.css?ver=5.3.2' type='text/css'
        media='all' />
    <link rel='stylesheet' id='sk-fonts-css'
        href='https://fonts.googleapis.com/css?family=Roboto%3A300%2C400%2C400i%2C500%2C700%2C900&#038;subset=latin-ext&#038;ver=1.3.6'
        type='text/css' media='all' />
    <link rel='stylesheet' id='sk-style-css'
        href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/style.css?ver=1.3.6'
        type='text/css' media='screen' />
    <link rel='stylesheet' id='sk-print-css'
        href='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/css/print.css?ver=1.3.6'
        type='text/css' media='print' />
    <script type='text/javascript'
        src='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/js/modernizr.min.js?ver=1.3.6'></script>
    <script type='text/javascript'
        src='https://www.meetingroomapp.com/wp-includes/js/jquery/jquery.js?ver=1.12.4-wp'></script>
    <script type='text/javascript'
        src='https://www.meetingroomapp.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
    <link rel='https://api.w.org/' href='https://www.meetingroomapp.com/wp-json/' />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.meetingroomapp.com/xmlrpc.php?rsd" />
    <link rel="alternate" type="application/json+oembed"
        href="https://www.meetingroomapp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.meetingroomapp.com%2F" />
    <link rel="alternate" type="text/xml+oembed"
        href="https://www.meetingroomapp.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.meetingroomapp.com%2F&#038;format=xml" />
    <meta name="generator" content="WPML ver:4.3.16 stt:9,1,4,3,46,2;" />
    <link rel="icon" href="image/download (1).png" sizes="32x32" />
    <link rel="icon" href="image/download (1).png" sizes="192x192" />
    <link rel="apple-touch-icon-precomposed" href="image/download (1).png" />
    <meta name="msapplication-TileImage"
        content="https://cdn.meetingroomapp.com/website/uploads/2020/11/03093137/cropped-MRA-FAVICON-512-5-270x270.png" />

    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-KXWNQLB');</script>
    <!-- End Google Tag Manager -->


    <script src="https://www.google.com/recaptcha/api.js?render=explicit" async defer></script>

</head>

<body
    class="home page-template page-template-template-homepage page-template-template-homepage-php page page-id-6 en page-homepage">

    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KXWNQLB" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

  
<% Employee employee = (Employee) request.getSession().getAttribute("employee"); %>
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
                            
                            <li class="m-controls__item is-trial">
                                <a href="https://cloud.meetingroomapp.com/register" class="m-controls__link"
                                    target="_blank">Free Trial</a>
                            </li>
                            <li class="m-controls__item is-login">
                                <a href="Logout" class="m-controls__link is-login"
                                    target="_blank">
                                    Logout <span class="icon-svg icon-svg--arr-right">
                                        <svg class="icon-svg__svg icon-svg--arr-right__svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-arr-right"
                                                x="0" y="0" width="100%" height="100%"></use>
                                        </svg>
                                    </span>
                                </a>
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
                        <a href="myprofile.jsp" class="m-main__link">My profile</a></li>
                    <li id="nav-menu-item-26"
                        class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                        <a href="add_event.jsp" class="m-main__link">Book Meeting</a></li>
                    <li id="nav-menu-item-45537"
                        class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-sk_devices">
                        <a href="CancelMeeting.jsp"
                            class="m-main__link">Cancel Meeting</a></li>
                    <li id="nav-menu-item-25"
                        class="m-main__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                        <a href="Employeeview_event.jsp" class="m-main__link">Display Meeting</a></li>
                    
                    <li id="nav-menu-item-17622"
                        class="m-main__item  menu-item-even menu-item-depth-0 hide-desktop menu-item menu-item-type-post_type menu-item-object-page">
                        <a href="https://www.meetingroomapp.com/help-technical-support/" class="m-main__link">Help</a>
                    </li>
                    <li id="nav-menu-item-22"
                        class="m-main__item  menu-item-even menu-item-depth-0 is-contact menu-item menu-item-type-post_type menu-item-object-page">
                        <a href="contrac.jsp" class="m-main__link">Contact</a>
                    <li class="m-main__item is-cta">
                        <a href="#" class="btn btn--green-border"><span class="btn__text">Welcome: <%=employee.getEmpName()%></span></a>
                    </li>
                    </li>
                </ul>
            </div>
        </div>



    </div>

    <div id="main" class="main">


        <div class="b-hero"
            style="background-image:url(https://cdn.meetingroomapp.com/website/uploads/2017/05/hero-bg.jpg);">
            <div class="b-hero__inner">
                <div class="row-main">
                    <div class="grid">
                        <div class="grid__cell size--t-6-12">
                            <div class="b-hero__content">
                                <h1 class="b-hero__h1">
                                    <span class="b-hero__subtitle">Meeting & Conference Room</span>
                                    <span class="b-hero__title">Booking System</span>
                                </h1>
                                <p class="b-hero__desc">A modern way to manage your company space.</p>
                                
                                <p class="b-hero__devices">
                                    <span class="icon-svg icon-svg--device-ios">
                                        <svg class="icon-svg__svg icon-svg--device-ios__svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-device-ios"
                                                x="0" y="0" width="100%" height="100%"></use>
                                        </svg>
                                    </span>
                                    <span class="icon-svg icon-svg--device-android">
                                        <svg class="icon-svg__svg icon-svg--device-android__svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-device-android"
                                                x="0" y="0" width="100%" height="100%"></use>
                                        </svg>
                                    </span>
                                    <span class="icon-svg icon-svg--device-web">
                                        <svg class="icon-svg__svg icon-svg--device-web__svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink">
                                            <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-device-web"
                                                x="0" y="0" width="100%" height="100%"></use>
                                        </svg>
                                    </span>
                                </p>
                            </div>
                        </div>
                        <div class="grid__cell size--t-6-12">

                            <div class="b-hero__img">
                                <img src="https://cdn.meetingroomapp.com/website/uploads/2018/08/device-en.png"
                                    alt="Device" width="520" height="408" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="b-hero__shape">
                <svg viewBox="0 0 1280 95" preserveAspectRatio="none">
                    <path d="M0,95 L1280,0 v95 z" />
                </svg>
            </div>
        </div>

        <div id="content" class="b-content">
            <div class="row-main">
                


                       


                    </ul>
                    
                </div>
            </div>
        </div>


        <div class="b-content b-content--grey">
            <div class="row-main">
                <h2 class="b-content__title">Book Your Meeting in a Second</h2>
                <div class="b-content__annot">
                    <p>Transform Your Office</p>
                </div>
                <div class="c-double">
                    <ul class="c-double__list">


                        <li class="c-double__item">
                            <div class="c-double__inner">
                                <p class="c-double__img">
                                    <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/smart-easy.png"
                                        alt="smart-easy" width="88" height="64" />
                                </p>
                                <h2 class="c-double__title">Smart functions <br />& easy reservation</h2>
                                <p>Ad hoc booking of your meeting on the touchscreen panel directly at the meeting room
                                    and a number of unique functions which help you plan and organize your meetings
                                    effectively.</p>
                            </div>
                        </li>


                        <li class="c-double__item">
                            <div class="c-double__inner">
                                <p class="c-double__img">
                                    <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/reporting-statistics.png"
                                        alt="reporting-statistics" width="88" height="64" />
                                </p>
                                <h2 class="c-double__title">Reporting <br />& statistics</h2>
                                <p>A great analytical tool for the management. Detailed statistics about the use of
                                    meeting rooms and user activity.</p>
                            </div>
                        </li>


                        <li class="c-double__item">
                            <div class="c-double__inner">
                                <p class="c-double__img">
                                    <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/services.png"
                                        alt="services" width="88" height="64" />
                                </p>
                                <h2 class="c-double__title">Comprehensive services <br />at your fingertips</h2>
                                <p>Need to clean the meeting room, call the catering company or a technician? It?s never
                                    been easier, just tap an icon on the touchscreen panel.</p>
                            </div>
                        </li>


                        <li class="c-double__item">
                            <div class="c-double__inner">
                                <p class="c-double__img">
                                    <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/assistance.png"
                                        alt="assistance" width="88" height="64" />
                                </p>
                                <h2 class="c-double__title">Need assistance? <br />Quick & easy</h2>
                                <p>Our Support or Support+ service makes sure we are always available to our customers
                                    whenever they need us.</p>
                            </div>
                        </li>


                    </ul>
                   
                </div>
                <p class="b-content__illust">
                    <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/work-station.png"
                        alt="work-station" width="864" height="320" />
                </p>
            </div>
        </div>


        <div class="b-content">
            <div class="row-main">
                <h2 class="b-content__title">Optimize Your Meetings & Company Processes</h2>
                <div class="b-content__annot">
                    <p>Employees spend up to 40 % of their time in meetings.<br />
                        Usually futilely.</p>
                </div>
                <div class="b-optimize">
                    <div class="grid">


                        <div class="grid__cell size--t-5-12">
                            <div class="b-center">
                                <h3 class="b-center__title">Save your time and money</h3>
                                <p>Meeting planning and organization costs<br />
                                    Disrupted meetings and disputes over meeting rooms<br />
                                    Futile time in meetings<br />
                                    Complicated maintenance of meeting rooms<br />
                                    Uncontrolled investment in offices<br />
                                    Ineffective choice of meeting rooms</p>
                            </div>
                        </div>


                        <div class="grid__cell size--t-5-12 push--t-2-12">
                            <div class="b-center">
                                <h3 class="b-center__title">Improve your working environment</h3>
                                <p>Easy planning and effective meeting management<br />
                                    Ad hoc reservations and meetings in time<br />
                                    Meeting room occupancy overview and environment digitization<br />
                                    Reporting and improved use of meeting rooms<br />
                                    Higher productivity and employee satisfaction<br />
                                    Quick overview of your office life</p>
                            </div>
                        </div>


                    </div>


                    <p class="b-optimize__illust">
                        <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/image-bonsai.png"
                            alt="image-bonsai-2" width="520" height="345" />
                    </p>


                </div>
            </div>
        </div>


        <div class="b-content b-content--grey">
            <div class="row-main">
                <h2 class="b-content__title">Security & Connectivity</h2>
                <div class="b-content__annot">
                    <p>MeetingRoomApp Cloud complies with security policy <br />
                        of 98% companies worldwide.</p>
                </div>
                <p class="b-content__img">
                    <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/providers.png" alt="providers"
                        width="320" height="80" />
                </p>
                <div class="b-detail">
                    <div class="grid">


                        <div class="grid__cell size--t-6-12">
                            <p class="b-detail__img">
                                <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/safe-data.png"
                                    alt="safe-data" width="440" height="384" />
                            </p>
                        </div>


                        <div class="grid__cell size--t-6-12">
                            <div class="b-detail__desc">
                                <div class="b-detail__hd">
                                    <h2 class="b-detail__title">Your Data Is Always Safe</h2>
                                </div>
                                <div class="b-detail__content">
                                    <p>Easy system connection and synchronization with email accounts. Your data stays
                                        in your calendar or on your local server.</p>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-detail">
                    <div class="grid">
                        <div class="grid__cell size--t-6-12">
                            <div class="b-detail__tabs b-tabs">
                                <div class="m-tabs m-tabs--3">
                                    <ul class="m-tabs__list">


                                        <li class="m-tabs__item item-1 is-active">
                                            <a href="#tab-1" class="m-tabs__link">
                                                <span class="m-tabs__img">
                                                    <img src="https://cdn.meetingroomapp.com/website/uploads/2020/06/08151709/nav-phillips-1.png"
                                                        alt="nav-phillips-3" width="73" height="48" /> </span>
                                                Philips 10BDL4151T </a>
                                        </li>


                                        <li class="m-tabs__item item-2">
                                            <a href="#tab-2" class="m-tabs__link">
                                                <span class="m-tabs__img">
                                                    <img src="https://cdn.meetingroomapp.com/website/uploads/2017/05/nav-phillips.png"
                                                        alt="nav-phillips" width="73" height="48" /> </span>
                                                Qbic TD-1050 </a>
                                        </li>


                                        <li class="m-tabs__item item-3">
                                            <a href="#tab-3" class="m-tabs__link">
                                                <span class="m-tabs__img">
                                                    <img src="https://cdn.meetingroomapp.com/website/uploads/2020/06/08151707/nav-ipad-1.png"
                                                        alt="nav-ipad-3" width="73" height="48" /> </span>
                                                Apple iPad </a>
                                        </li>


                                    </ul>
                                </div>
                                <div class="b-tabs__wrap">


                                    <div id="tab-1" class="b-tabs__item is-active">
                                        <p class="b-tabs__img">
                                            <img src="https://cdn.meetingroomapp.com/website/uploads/2020/06/08153359/device-homepage-philips-2.png"
                                                alt="device-homepage-philips-2-2" width="528" height="392" />
                                        </p>
                                    </div>


                                    <div id="tab-2" class="b-tabs__item">
                                        <p class="b-tabs__img">
                                            <img src="https://cdn.meetingroomapp.com/website/uploads/2018/08/device-homepage-qbic.png"
                                                alt="device-homepage-qbic-2" width="528" height="392" />
                                        </p>
                                    </div>


                                    <div id="tab-3" class="b-tabs__item">
                                        <p class="b-tabs__img">
                                            <img src="https://cdn.meetingroomapp.com/website/uploads/2020/06/08153640/device-homepage-ipad-2.png"
                                                alt="device-homepage-ipad-2-2" width="528" height="392" />
                                        </p>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="grid__cell size--t-6-12">
                            <div class="b-detail__desc">
                                <div class="b-detail__hd">
                                    <h2 class="b-detail__title">Flexible Integration</h2>
                                    <p class="b-detail__subtitle">Software and hardware combination tailored to your
                                        needs</p>
                                </div>
                                <div class="b-detail__content">
                                    <p>MeetingRoomApp offers a number of hardware devices supporting the most commonly
                                        used platforms Android, iOS and web applications.</p>
                                </div>
                                
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


    <div class="b-stores">
        <div class="row-main">
            
            <div id="DigiCertClickID_dopoyjJ1" data-language="en" class="b-stores__ssl">

            </div>

        </div>
    </div>
    <div class="footer">
        <div class="row-main">
            <div class="grid">


                <div class="grid__cell size--t-5-12">
                    <p class="b-contact-inline is-email">
                        <a href="#contact_popup"
                            data-fancybox>h&#101;l&#108;&#111;&#64;&#109;ee&#116;&#105;n&#103;ro&#111;&#109;&#97;p&#112;&#46;&#99;&#111;m</a>
                    </p>
                    <p class="b-contact-inline is-phone">
                        <a href="tel:420222200650">+420 222 200 650</a>
                    </p>
                </div>
                <div class="grid__cell size--t-3-12 apps">
                    <div class="b-footer">
                        <p class="b-footer__title">Get our apps</p>
                        <div class="m-apps">
                            <ul class="m-apps__list">
                                <li class="m-apps__item">
                                    <a href="/shop/" class="m-apps__link m-apps__link--store">Store</a>
                                </li>
                                <li class="m-apps__item">
                                    <a href="image/download (1).png"
                                        class="m-apps__link" target="_blank">
                                        Cloud for <strong>iOS</strong></a>
                                </li>
                                <li class="m-apps__item">
                                    <a href="https://play.google.com/store/apps/details?id=com.meetingroomapp.cloud&#038;hl=en"
                                        class="m-apps__link" target="_blank">
                                        Cloud for <strong>Android</strong>
                                    </a>
                                </li>
                                <li class="m-apps__item">
                                    <a href="https://www.amazon.com/gp/product/B07N317N1K" class="m-apps__link"
                                        target="_blank">
                                        Cloud for <strong>Kindle Fire</strong>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="grid__cell size--s-6-12 size--t-2-12">
                    <div class="b-footer b-footer--more">
                        <p class="b-footer__title">More</p>
                        <div class="m-footer">

                            <ul id="menu-more" class="m-footer__list">
                                <li id="nav-menu-item-102"
                                    class="m-footer__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                                    <a href="https://www.meetingroomapp.com/product/" class="m-footer__link">Product</a>
                                </li>
                                <li id="nav-menu-item-101"
                                    class="m-footer__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                                    <a href="https://www.meetingroomapp.com/pricing/" class="m-footer__link">Pricing</a>
                                </li>
                                <li id="nav-menu-item-16182"
                                    class="m-footer__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-sk_devices">
                                    <a href="https://www.meetingroomapp.com/device/philips-10bdl3051t/"
                                        class="m-footer__link">Devices</a></li>
                                <li id="nav-menu-item-100"
                                    class="m-footer__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                                    <a href="https://www.meetingroomapp.com/customers/"
                                        class="m-footer__link">Customers</a></li>
                                <li id="nav-menu-item-99"
                                    class="m-footer__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                                    <a href="https://www.meetingroomapp.com/partners/"
                                        class="m-footer__link">Partners</a></li>
                                <li id="nav-menu-item-98"
                                    class="m-footer__item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
                                    <a href="https://www.meetingroomapp.com/news/" class="m-footer__link">News</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                </div>
            </div>


            <div class="b-share">
                <p class="b-share__inner">
                    <a href="https://twitter.com/MeetingRoomApp" class="b-share__item" title="MeetingRoomApp on Twitter"
                        target="_blank">
                        <span class="b-share__icon">
                            <span class="icon-svg icon-svg--twitter">
                                <svg class="icon-svg__svg icon-svg--twitter__svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-twitter"
                                        x="0" y="0" width="100%" height="100%"></use>
                                </svg>
                            </span>
                        </span>
                    </a>
                    <a href="https://www.linkedin.com/organization/18082068/" class="b-share__item"
                        title="MeetingRoomApp on LinkedIn" target="_blank">
                        <span class="b-share__icon">
                            <span class="icon-svg icon-svg--linkedin">
                                <svg class="icon-svg__svg icon-svg--linkedin__svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-linkedin"
                                        x="0" y="0" width="100%" height="100%"></use>
                                </svg>
                            </span>
                        </span>
                    </a>
                    <a href="https://www.facebook.com/meetingroomapp/" class="b-share__item"
                        title="MeetingRoomApp on Facebook" target="_blank">
                        <span class="b-share__icon">
                            <span class="icon-svg icon-svg--facebook">
                                <svg class="icon-svg__svg icon-svg--facebook__svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-facebook"
                                        x="0" y="0" width="100%" height="100%"></use>
                                </svg>
                            </span>
                        </span>
                    </a>
                    <a href="https://www.youtube.com/channel/UCYzSiq84OQX-ApTOWHmRz1A" class="b-share__item"
                        title="MeetingRoomApp on YouTube" target="_blank">
                        <span class="b-share__icon">
                            <span class="icon-svg icon-svg--youtube">
                                <svg class="icon-svg__svg icon-svg--youtube__svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <use xlink:href="https://www.meetingroomapp.com/wp-content/themes/meetingroomapp/static/img/bg/icons-svg.svg#icon-youtube"
                                        x="0" y="0" width="100%" height="100%"></use>
                                </svg>
                            </span>
                        </span>
                    </a>
                </p>
            </div>

        </div>
    </div>


    <div class="b-terms">
        <div class="row-main">
            <div class="b-terms__links">
                <div class="m-terms">

                   
                </div>
            </div>
            <div class="b-terms__copy">
                
            </div>
        </div>
    </div>

    

    <div class="js-hide">
        <div id="contact_popup" class="b-popup b-popup--form">
            <div class="b-popup__inner">
                <h3 id="popup_title" class="b-popup__title">Contact Us</h3>
                <div class="b-popup__form">
                    <form id="contact_form_popup" class="f-popup"
                        action="/wp-content/themes/meetingroomapp/inc/sent.php" method="post">
                        <p class="inp">
                            <span class="inp__fix">
                                <input type="text" name="your_name" id="contact_name" class="inp__text" />
                                <label for="contact_name" class="inp__label">Name</label>
                            </span>
                        </p>
                        <p class="inp">
                            <span class="inp__fix">
                                <input type="text" name="your_email" id="contact_email" class="inp__text" />
                                <label for="contact_email" class="inp__label">E-mail</label>
                            </span>
                        </p>
                        <p class="inp">
                            <span class="inp__fix">
                                <input type="text" name="your_phone" id="contact_phone" class="inp__text" value="+91" />
                                <label for="contact_phone" class="inp__label">Phone</label>
                            </span>
                        </p>
                        <p class="inp inp--textarea">
                            <span class="inp__fix">
                                <textarea name="your_message" id="contact_message" class="inp__text"
                                    placeholder="Message"></textarea>
                            </span>
                        </p>
                        <p class="inp__btn">
                            <button type="submit" class="btn btn--form btn--h56"><span class="btn__text">Send
                                    request</span></button>
                        </p>
                        <input type="hidden" name="location_url" value="https://www.meetingroomapp.com/" />
                        <input type="hidden" name="language_code" value="en" />
                        <div class="js-grecaptcha" id="contact_popup_form_recaptcha"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- COOKIES -->
    <link rel="stylesheet" type="text/css"
        href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />
    <script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>
    <script>
        window.addEventListener("load", function () {
            window.cookieconsent.initialise({
                "palette": {
                    "popup": {
                        "background": "#33495c",
                        "text": "#ffffff"
                    },
                    "button": {
                        "background": "#757f91",
                        "text": "#ffffff"
                    }
                },
                "content": {
                    "message": "This website uses cookies to ensure you get the best experience on our website.",
                    "dismiss": "Got it!",
                    "link": "Learn more",
                    "href": "https://www.meetingroomapp.com/cookie-policy/"
                },
                "theme": "edgeless"
            })
        });
    </script>

    <script type='text/javascript'>
        /* <![CDATA[ */
        var skwp = { "ajaxurl": "https:\/\/www.meetingroomapp.com\/wp-admin\/admin-ajax.php", "sk_msg_add_to_cart": "license added to cart", "cart_service": "\/wp-content\/themes\/meetingroomapp\/inc\/shop\/add-to-cart-service.php", "vat_service": "\/wp-content\/themes\/meetingroomapp\/inc\/shop\/vies.php", "country_selector": "\/wp-content\/themes\/meetingroomapp\/inc\/shop\/country-selector.php", "edit_cart": "\/wp-content\/themes\/meetingroomapp\/inc\/shop\/edit-cart-service.php", "text_delete": "Delete", "cart_steps_alert": "You need to select the product." };
/* ]]> */
    </script>
    <script type='text/javascript'
        src='https://cdn.meetingroomapp.com/website/themes/meetingroomapp/static/js/app.js?ver=1.3.6'></script>
    <script type='text/javascript'>
        App.run({})
    </script>
    <script type='text/javascript'
        src='https://www.meetingroomapp.com/wp-includes/js/wp-embed.min.js?ver=5.3.2'></script>

</body>

</html>