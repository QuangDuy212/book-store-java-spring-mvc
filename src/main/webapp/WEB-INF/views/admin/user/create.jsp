<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <!-- Basic Page Info -->
            <meta charset="utf-8" />
            <title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

            <!-- Site favicon -->
            <link rel="apple-touch-icon" sizes="180x180" href="/admin/vendors/images/apple-touch-icon.png" />
            <link rel="icon" type="image/png" sizes="32x32" href="/admin/vendors/images/favicon-32x32.png" />
            <link rel="icon" type="image/png" sizes="16x16" href="/admin/vendors/images/favicon-16x16.png" />

            <!-- Mobile Specific Metas -->
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
                rel="stylesheet" />
            <!-- CSS -->
            <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/core.css" />
            <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/icon-font.min.css" />
            <link rel="stylesheet" type="text/css" href="/admin/src/plugins/jquery-steps/jquery.steps.css" />
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
            <jsp:include page="../layout/header.jsp"></jsp:include>

            <jsp:include page="../layout/right-sidebar.jsp"></jsp:include>

            <jsp:include page="../layout/left-sidebar.jsp"></jsp:include>
            <div class="mobile-menu-overlay"></div>
            <div class="main-container">

                <div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-md-12 col-lg-12">
                                <div class="register-box bg-white box-shadow border-radius-10" style="max-width: 100%;">
                                    <div class="wizard-content">
                                        <form class="tab-wizard2 wizard-circle wizard">
                                            <h5>Basic Account Credentials</h5>
                                            <section>
                                                <div class="form-wrap  mx-auto">
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Email Address*</label>
                                                        <div class="col-sm-8">
                                                            <input type="email" class="form-control" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Password*</label>
                                                        <div class="col-sm-8">
                                                            <input type="password" class="form-control" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Full Name*</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" class="form-control" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row align-items-center">
                                                        <label class="col-sm-4 col-form-label">
                                                            Gender and Role*</label>
                                                        <div class="col-sm-8">
                                                            <div class="row">
                                                                <div class="col-6">
                                                                    <select class="form-control selectpicker"
                                                                        title="Gender" data-size="5">
                                                                        <option value="male">Male</option>
                                                                        <option value="female">Female</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-6">
                                                                    <select class="form-control selectpicker"
                                                                        title="Role" data-size="5">
                                                                        <option value="USER">USER</option>
                                                                        <option value="ADMIN">ADMIN</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-4 col-form-label">City</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-4 col-form-label">Phone number</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="avatarFile"
                                                        class="col-sm-4 col-form-label">Avatar:</label>
                                                    <div class="col-sm-8">
                                                        <input class="form-control-file form-control height-auto"
                                                            type="file" id="avatarFile" accept=".png, .jpg, .jpeg"
                                                            name="hoidanitFile" />
                                                    </div>
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                        id="avatarPreview" />
                                                </div>
                                            </section>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- success Popup html Start -->

            <jsp:include page="../layout/welcome.jsp"></jsp:include>
            <!-- welcome modal end -->
            <!-- js -->
            <script src="/admin/vendors/scripts/core.js"></script>
            <script src="/admin/vendors/scripts/script.min.js"></script>
            <script src="/admin/vendors/scripts/process.js"></script>
            <script src="/admin/vendors/scripts/layout-settings.js"></script>
            <script src="/admin/src/plugins/jquery-steps/jquery.steps.js"></script>
            <script src="/admin/vendors/scripts/steps-setting.js"></script>
            <!-- Google Tag Manager (noscript) -->
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                    style="display: none; visibility: hidden"></iframe></noscript>
            <!-- End Google Tag Manager (noscript) -->
        </body>

        </html>