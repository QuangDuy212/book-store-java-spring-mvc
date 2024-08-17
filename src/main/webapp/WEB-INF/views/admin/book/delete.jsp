<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html>

            <head>
                <!-- Basic Page Info -->
                <meta charset="utf-8" />
                <title>Admin | Book store</title>

                <!-- Site favicon -->
                <link rel="apple-touch-icon" sizes="180x180" href="/adminRes/vendors/images/apple-touch-icon.png" />
                <link rel="icon" type="image/png" sizes="32x32" href="/adminRes/vendors/images/favicon-32x32.png" />
                <link rel="icon" type="image/png" sizes="16x16" href="/adminRes/vendors/images/favicon-16x16.png" />

                <!-- Mobile Specific Metas -->
                <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

                <!-- Google Font -->
                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
                    rel="stylesheet" />
                <!-- CSS -->
                <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/core.css" />
                <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/icon-font.min.css" />
                <link rel="stylesheet" type="text/css"
                    href="/adminRes/src/plugins/jvectormap/jquery-jvectormap-2.0.3.css" />
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

            <body>


                <jsp:include page="../layout/header.jsp"></jsp:include>

                <jsp:include page="../layout/right-sidebar.jsp"></jsp:include>

                <jsp:include page="../layout/left-sidebar.jsp"></jsp:include>
                <div class="mobile-menu-overlay"></div>

                <div class="main-container">
                    <div class="xs-pd-20-10 pd-ltr-20">
                        <div class="page-header">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="title">
                                        <h4>Delete</h4>
                                    </div>
                                    <nav aria-label="breadcrumb" role="navigation">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="/admin">Home</a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="/admin/book">Books</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">
                                                Delete
                                            </li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="page-header">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="title">
                                        Are you sure to want to delete this book id = ${id}
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <div style="display: flex; margin-top: 20px; gap: 20px;">
                                        <form:form method="post" action="/admin/book/delete" modelAttribute="book">
                                            <form:input value="${id}" path="id" style="display: none;" />
                                            <button type="submit" class="btn btn-danger"
                                                style="width: 60px;">Yes</button>
                                        </form:form>
                                        <a class="btn btn-primary" href="/admin/book" style="width: 60px;">No</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- welcome modal start -->
                <jsp:include page="../layout/welcome.jsp"></jsp:include>
                <!-- welcome modal end -->
                <!-- js -->
                <script src="/adminRes/vendors/scripts/core.js"></script>

                <script src="/adminRes/vendors/scripts/script.js"></script>
                <script src="/adminRes/vendors/scripts/process.js"></script>
                <script src="/adminRes/vendors/scripts/layout-settings.js"></script>
                <script src="/adminRes/src/plugins/jQuery-Knob-master/jquery.knob.min.js"></script>
                <script src="/adminRes/src/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
                <script src="/adminRes/src/plugins/sweetalert2/sweetalert2.all.js"></script>
                <script src="/adminRes/src/plugins/sweetalert2/sweet-alert.init.js"></script>
                <!-- Google Tag Manager (noscript) -->
                <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                        style="display: none; visibility: hidden"></iframe></noscript>
                <!-- End Google Tag Manager (noscript) -->
            </body>

            </html>