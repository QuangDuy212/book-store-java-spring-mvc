<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <!-- Basic Page Info -->
                    <meta charset="utf-8" />
                    <title> Book store</title>

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
                    <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/style.css" />
                    <!-- switchery css -->
                    <link rel="stylesheet" type="text/css" href="/admin/src/plugins/switchery/switchery.min.css" />

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
                        <div class="pd-ltr-20 xs-pd-20-10">
                            <div class="page-header">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="title">
                                            <h4>Cảm ơn</h4>
                                        </div>
                                        <nav aria-label="breadcrumb" role="navigation">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item">
                                                    <a href="/">Home</a>
                                                </li>
                                                <li class="breadcrumb-item">
                                                    <a href="/cart"> Chi tiết giỏ hàng</a>
                                                </li>
                                                <li class="breadcrumb-item active" aria-current="page">
                                                    Cảm ơn
                                                </li>
                                            </ol>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12 col-sm-12">
                                    <div class="page-header">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12">
                                                Cảm ơn vì đã tin tưởng mua hàng!
                                            </div>
                                            <div class="col-md-12 col-sm-12" style="margin-top: 20px;">
                                                <a href="/" class="btn btn-primary">Trang chủ</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- welcome modal start -->
                    <jsp:include page="../layout/welcome.jsp"></jsp:include>
                    <!-- welcome modal end -->
                    <!-- js for filter page -->
                    <!-- js -->

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/client/lib/easing/easing.min.js"></script>
                    <script src="/client/lib/waypoints/waypoints.min.js"></script>
                    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>
                    <script src="/admin/vendors/scripts/advanced-components.js"></script>

                    <!-- Template Javascript -->
                    <script src="/client/js/main.js"></script>
                    <script type="text/javascript"
                        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="/admin/vendors/scripts/core.js"></script>
                    <script src="/client/js/main.js"></script>
                    <script src="/admin/vendors/scripts/script.min.js"></script>
                    <script src="/admin/vendors/scripts/script.js"></script>
                    <script src="/admin/vendors/scripts/process.js"></script>
                    <script src="/admin/vendors/scripts/layout-settings.js"></script>
                    <script src="/admin/src/plugins/jQuery-Knob-master/jquery.knob.min.js"></script>
                    <script src="/admin/src/plugins/highcharts-6.0.7/code/highcharts.js"></script>
                    <script src="/admin/src/plugins/highcharts-6.0.7/code/highcharts-more.js"></script>
                    <script src="/admin/src/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
                    <script src="/admin/vendors/scripts/dashboard2.js"></script>
                    <!-- Google Tag Manager (noscript) -->
                    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                            style="display: none; visibility: hidden"></iframe></noscript>
                    <!-- End Google Tag Manager (noscript) -->

                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/admin/src/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>


                </body>

                </html>