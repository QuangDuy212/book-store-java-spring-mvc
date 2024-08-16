<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <bu%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <!-- Basic Page Info -->
                        <meta charset="utf-8" />
                        <title>Register | BookStore</title>

                        <!-- Site favicon -->
                        <link rel="apple-touch-icon" sizes="180x180"
                            href="/adminRes/vendors/images/apple-touch-icon.png" />
                        <link rel="icon" type="image/png" sizes="32x32"
                            href="/adminRes/vendors/images/favicon-32x32.png" />
                        <link rel="icon" type="image/png" sizes="16x16"
                            href="/adminRes/vendors/images/favicon-16x16.png" />

                        <!-- Mobile Specific Metas -->
                        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

                        <!-- Google Font -->
                        <link
                            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
                            rel="stylesheet" />
                        <!-- CSS -->
                        <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/core.css" />
                        <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/icon-font.min.css" />
                        <link rel="stylesheet" type="text/css" href="src/plugins/jquery-steps/jquery.steps.css" />
                        <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/style.css" />

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
                                            <form:form method="post" action="/register" modelAttribute="registerUser">
                                                <c:set var="errorFirstName">
                                                    <form:errors path="firstName" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorPassword">
                                                    <form:errors path="confirmPassword" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorEmail">
                                                    <form:errors path="email" cssClass="invalid-feedback" />
                                                </c:set>
                                                <div class="input-group custom">
                                                    <form:input type="email"
                                                        class="form-control form-control-lg ${not empty errorEmail ? 'is-invalid' : ''}"
                                                        placeholder="Email" path="email" />
                                                    ${errorEmail}
                                                </div>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="input-group custom">
                                                            <form:input type="text"
                                                                class="form-control form-control-lg ${not empty errorEmail ? 'is-invalid' : ''}"
                                                                placeholder="First name" path="firstName" />
                                                            ${errorFirstName}
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="input-group custom">
                                                            <form:input type="text" class="form-control form-control-lg"
                                                                placeholder="Last name" path="lastName" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="input-group custom">
                                                    <form:input type="password"
                                                        class="form-control form-control-lg ${not empty errorEmail ? 'is-invalid' : ''}"
                                                        placeholder="Password" path="password" />
                                                    ${errorPassword}
                                                </div>
                                                <div class="input-group custom">
                                                    <form:input type="password" class="form-control form-control-lg"
                                                        placeholder="Confirm Password" path="confirmPassword" />
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group mb-0">
                                                            <button class="btn btn-primary btn-lg btn-block"
                                                                type="submit">Register</button>
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
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- welcome modal end -->
                        <!-- js -->
                        <script src="/adminRes/vendors/scripts/core.js"></script>

                        <script src="/adminRes/vendors/scripts/process.js"></script>
                        <script src="/adminRes/vendors/scripts/layout-settings.js"></script>
                        <!-- Google Tag Manager (noscript) -->
                        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0"
                                width="0" style="display: none; visibility: hidden"></iframe></noscript>
                        <!-- End Google Tag Manager (noscript) -->
                    </body>

                    </html>