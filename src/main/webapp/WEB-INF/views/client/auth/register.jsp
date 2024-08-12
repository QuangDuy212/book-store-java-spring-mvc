<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <!-- Basic Page Info -->
                    <meta charset="utf-8" />
                    <title>Register | BookStore</title>

                    <!-- Site favicon -->
                    <link rel="apple-touch-icon" sizes="180x180" href="/admin/vendors/images/apple-touch-icon.png" />
                    <link rel="icon" type="image/png" sizes="32x32" href="/admin/vendors/images/favicon-32x32.png" />
                    <link rel="icon" type="image/png" sizes="16x16" href="/admin/vendors/images/favicon-16x16.png" />

                    <!-- Mobile Specific Metas -->
                    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

                    <!-- Google Font -->
                    <link
                        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
                        rel="stylesheet" />
                    <!-- CSS -->
                    <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/core.css" />
                    <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/icon-font.min.css" />
                    <link rel="stylesheet" type="text/css" href="src/plugins/jquery-steps/jquery.steps.css" />
                    <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/style.css" />

                    <!-- Global site tag (gtag.js) - Google Analytics -->
                    <script async src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"></script>
                    <script async
                        src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2973766580778258"
                        crossorigin="anonymous"></script>
                    <script>
                        window.dataLayer = window.dataLayer || [];
                        function gtag() {
                            dataLayer.push(arguments);
                        }
                        gtag("js", new Date());

                        gtag("config", "G-GBZ3SGGX85");
                    </script>
                    <!-- Google Tag Manager -->
                    <script>
                        (function (w, d, s, l, i) {
                            w[l] = w[l] || [];
                            w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
                            var f = d.getElementsByTagName(s)[0],
                                j = d.createElement(s),
                                dl = l != "dataLayer" ? "&l=" + l : "";
                            j.async = true;
                            j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
                            f.parentNode.insertBefore(j, f);
                        })(window, document, "script", "dataLayer", "GTM-NXZMQSS");
                    </script>
                    <!-- End Google Tag Manager -->
                </head>

                <body class="login-page">
                    <div class=" d-flex align-items-center flex-wrap justify-content-center">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-md-12 col-lg-12">
                                    <div class="login-box bg-white box-shadow border-radius-10">
                                        <div class="login-title">
                                            <h2 class="text-center text-primary">Register</h2>
                                        </div>
                                        <form>
                                            <div class="input-group custom">
                                                <input type="text" class="form-control form-control-lg"
                                                    placeholder="Email" />
                                                <div class="input-group-append custom">
                                                    <span class="input-group-text"><i
                                                            class="icon-copy dw dw-user1"></i></span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="input-group custom">
                                                        <input type="text" class="form-control form-control-lg"
                                                            placeholder="First name" />
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="input-group custom">
                                                        <input type="text" class="form-control form-control-lg"
                                                            placeholder="Last name" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="input-group custom">
                                                <input type="password" class="form-control form-control-lg"
                                                    placeholder="Password" />
                                                <div class="input-group-append custom">
                                                    <span class="input-group-text"><i class="dw dw-padlock1"></i></span>
                                                </div>
                                            </div>
                                            <div class="input-group custom">
                                                <input type="password" class="form-control form-control-lg"
                                                    placeholder="Confirm Password" />
                                                <div class="input-group-append custom">
                                                    <span class="input-group-text"><i class="dw dw-padlock1"></i></span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="input-group mb-0">
                                                        <!--
											use code for form submit
											<input class="btn btn-primary btn-lg btn-block" type="submit" value="Sign In">
										-->
                                                        <a class="btn btn-primary btn-lg btn-block"
                                                            href="/">Register</a>
                                                    </div>
                                                    <div class="font-16 weight-600 pt-10 pb-10 text-center"
                                                        data-color="#707373">
                                                        OR
                                                    </div>
                                                    <div class="input-group mb-0">
                                                        <a class="btn btn-outline-primary btn-lg btn-block"
                                                            href="/register">Login</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- welcome modal end -->
                    <!-- js -->
                    <script src="/admin/vendors/scripts/core.js"></script>
                    <script src="/admin/vendors/scripts/script.min.js"></script>
                    <script src="/admin/vendors/scripts/process.js"></script>
                    <script src="/admin/vendors/scripts/layout-settings.js"></script>
                    <!-- Google Tag Manager (noscript) -->
                    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                            style="display: none; visibility: hidden"></iframe></noscript>
                    <!-- End Google Tag Manager (noscript) -->
                </body>

                </html>