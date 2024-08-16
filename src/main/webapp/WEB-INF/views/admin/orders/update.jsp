<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <link
                        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
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
                        <div class="pd-ltr-20 xs-pd-20-10">
                            <div class="min-height-200px">
                                <div class="page-header">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <div class="title">
                                                <h4>Update order</h4>
                                            </div>
                                            <nav aria-label="breadcrumb" role="navigation">
                                                <ol class="breadcrumb">
                                                    <li class="breadcrumb-item">
                                                        <a href="/admin">Home</a>
                                                    </li>
                                                    <li class="breadcrumb-item">
                                                        <a href="/admin/orders">Orders</a>
                                                    </li>
                                                    <li class="breadcrumb-item active" aria-current="page">
                                                        Update order
                                                    </li>
                                                </ol>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 mb-30">
                                        <div class="pd-20 card-box height-100-p">
                                            <form:form method="post" action="/admin/orders/update"
                                                modelAttribute="order" enctype="multipart/form-data">
                                                <h4 class="text-blue h5 mb-20">
                                                    Order information
                                                </h4>
                                                <ul class="profile-edit-list">
                                                    <li class="weight-500 row">
                                                        <div class="form-group col-sm-12 col-md-6"
                                                            style="display: none;">
                                                            <label>ID</label>
                                                            <form:input class="form-control form-control-lg" type="text"
                                                                path="id" />
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label>User</label>
                                                            <form:input class="form-control form-control-lg" type="text"
                                                                path="user.email" required="true" disabled="true" />
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label>Reciver name</label>
                                                            <form:input class="form-control form-control-lg" type="text"
                                                                path="reciverName" required="true" disabled="true" />
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label>Reciver phone</label>
                                                            <form:input class="form-control form-control-lg"
                                                                type="number" path="reciverPhone" required="true"
                                                                disabled="true" />
                                                        </div>
                                                        <div class="form-group col-sm-12 ">
                                                            <label>Reciver address</label>
                                                            <form:input class="form-control form-control-lg" type="text"
                                                                path="reciverAddress" required="true" disabled="true" />
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label>Total price</label>
                                                            <form:input class="form-control " type="number"
                                                                path="totalPrice" required="true" disabled="true" />
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label>Status</label>
                                                            <form:select class="form-control selectpicker" data-size="5"
                                                                path="status" required="true">
                                                                <form:option value="PENDING">
                                                                    PENDING
                                                                </form:option>
                                                                <form:option value="TRANSPORT">
                                                                    TRANSPORT
                                                                </form:option>
                                                                <form:option value="SUCCESS">
                                                                    SUCCESS
                                                                </form:option>
                                                            </form:select>
                                                        </div>
                                                        <div class="form-group mb-0 col-sm-12">
                                                            <button type="submit"
                                                                class="btn btn-primary">Submit</button>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <jsp:include page="../layout/footer.jsp"></jsp:include>
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
                    <script src="/admin/vendors/scripts/steps-setting-admin.js"></script>
                    <!-- Google Tag Manager (noscript) -->
                    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                            style="display: none; visibility: hidden"></iframe></noscript>
                    <!-- End Google Tag Manager (noscript) -->
                </body>

                </html>