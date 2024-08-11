<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <!-- Basic Page Info -->
                    <meta charset="utf-8" />
                    <title>Admin | Book store</title>

                    <!-- Site favicon -->
                    <link rel="apple-touch-icon" sizes="180x180" href="admin/vendors/images/apple-touch-icon.png" />
                    <link rel="icon" type="image/png" sizes="32x32" href="admin/vendors/images/favicon-32x32.png" />
                    <link rel="icon" type="image/png" sizes="16x16" href="admin/vendors/images/favicon-16x16.png" />
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
                        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
                        crossorigin="anonymous" referrerpolicy="no-referrer" />


                    <!-- Mobile Specific Metas -->
                    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />



                    <!-- Google Font -->
                    <link
                        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
                        rel="stylesheet" />
                    <!-- CSS -->
                    <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/core.css" />
                    <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/icon-font.min.css" />
                    <link rel="stylesheet" type="text/css"
                        href="/admin/src/plugins/jvectormap/jquery-jvectormap-2.0.3.css" />
                    <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/style.css" />
                    <!-- Customized Bootstrap Stylesheet -->
                    <!-- Template Stylesheet -->

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
                            <div class="min-height-200px">
                                <div class="page-header">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <div class="title">
                                                <h4>Product Detail</h4>
                                            </div>
                                            <nav aria-label="breadcrumb" role="navigation">
                                                <ol class="breadcrumb">
                                                    <li class="breadcrumb-item">
                                                        <a href="index.html">Home</a>
                                                    </li>
                                                    <li class="breadcrumb-item active" aria-current="page">
                                                        Product Detail
                                                    </li>
                                                </ol>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrap">
                                    <div class="product-detail-wrap mb-30">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-12 col-sm-12">
                                                <div class="product-slider slider-arrow">
                                                    <div class="product-slide">
                                                        <img src="vendors/images/product-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="product-slide">
                                                        <img src="vendors/images/product-img2.jpg" alt="" />
                                                    </div>
                                                    <div class="product-slide">
                                                        <img src="vendors/images/product-img3.jpg" alt="" />
                                                    </div>
                                                    <div class="product-slide">
                                                        <img src="vendors/images/product-img4.jpg" alt="" />
                                                    </div>
                                                </div>
                                                <div class="product-slider-nav">
                                                    <div class="product-slide-nav">
                                                        <img src="vendors/images/product-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="product-slide-nav">
                                                        <img src="vendors/images/product-img2.jpg" alt="" />
                                                    </div>
                                                    <div class="product-slide-nav">
                                                        <img src="vendors/images/product-img3.jpg" alt="" />
                                                    </div>
                                                    <div class="product-slide-nav">
                                                        <img src="vendors/images/product-img4.jpg" alt="" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12 col-sm-12">
                                                <div class="product-detail-desc pd-20 card-box height-100-p">
                                                    <h4 class="mb-20 pt-20">Gufram Bounce Black</h4>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                        sed do eiusmod tempor incididunt ut labore et dolore magna
                                                        aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                        ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                        Duis aute irure dolor in reprehenderit in voluptate velit
                                                        esse cillum dolore eu fugiat nulla pariatur. Excepteur
                                                        sint occaecat cupidatat non proident, sunt in culpa qui
                                                        officia deserunt mollit anim id est laborum.
                                                    </p>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                        sed do eiusmod tempor incididunt ut labore et dolore magna
                                                        aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                        ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                    </p>
                                                    <div class="price"><del>$55.5</del><ins>$49.5</ins></div>
                                                    <div class="mx-w-150">
                                                        <div class="form-group">
                                                            <label class="text-blue">quantity</label>
                                                            <input id="demo3_22" type="text" value="1"
                                                                name="demo3_22" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 col-6">
                                                            <a href="#" class="btn btn-primary btn-block">Add To
                                                                Cart</a>
                                                        </div>
                                                        <div class="col-md-6 col-6">
                                                            <a href="#" class="btn btn-outline-primary btn-block">Buy
                                                                Now</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h4 class="mb-20">Recent Product</h4>
                                    <div class="product-list">
                                        <ul class="row">
                                            <li class="col-lg-4 col-md-6 col-sm-12">
                                                <div class="product-box">
                                                    <div class="producct-img">
                                                        <img src="vendors/images/product-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="product-caption">
                                                        <h4><a href="#">Gufram Bounce Black</a></h4>
                                                        <div class="price"><del>$55.5</del><ins>$49.5</ins></div>
                                                        <a href="#" class="btn btn-outline-primary">Read More</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="col-lg-4 col-md-6 col-sm-12">
                                                <div class="product-box">
                                                    <div class="producct-img">
                                                        <img src="vendors/images/product-img2.jpg" alt="" />
                                                    </div>
                                                    <div class="product-caption">
                                                        <h4><a href="#">Gufram Bounce White</a></h4>
                                                        <div class="price"><del>$75.5</del><ins>$50</ins></div>
                                                        <a href="#" class="btn btn-outline-primary">Add To Cart</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="col-lg-4 col-md-6 col-sm-12">
                                                <div class="product-box">
                                                    <div class="producct-img">
                                                        <img src="vendors/images/product-img3.jpg" alt="" />
                                                    </div>
                                                    <div class="product-caption">
                                                        <h4><a href="#">Contrast Lace-Up Sneakers</a></h4>
                                                        <div class="price">
                                                            <ins>$80</ins>
                                                        </div>
                                                        <a href="#" class="btn btn-outline-primary">Add To Cart</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="footer-wrap pd-20 mb-20 card-box">
                                DeskApp - Bootstrap 4 Admin Template By
                                <a href="https://github.com/dropways" target="_blank">Ankit Hingarajiya</a>
                            </div>
                        </div>
                    </div>
                    <!-- welcome modal start -->
                    <jsp:include page="../layout/welcome.jsp"></jsp:include>
                    <!-- welcome modal end -->
                    <!-- js -->
                    <script src="/admin/vendors/scripts/core.js"></script>
                    <script src="/admin/vendors/scripts/script.min.js"></script>
                    <script src="/admin/vendors/scripts/process.js"></script>
                    <script src="/admin/vendors/scripts/layout-settings.js"></script>
                    <script src="/admin/src/plugins/jQuery-Knob-master/jquery.knob.min.js"></script>
                    <script src="/admin/src/plugins/highcharts-6.0.7/code/highcharts.js"></script>
                    <script src="/admin/src/plugins/highcharts-6.0.7/code/highcharts-more.js"></script>
                    <script src="/admin/src/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
                    <script src="/admin/src/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
                    <script src="admin/vendors/scripts/dashboard2.js"></script>
                    <!-- Google Tag Manager (noscript) -->
                    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                            style="display: none; visibility: hidden"></iframe></noscript>
                    <!-- End Google Tag Manager (noscript) -->
                    <script src="/client/js/main.js"></script>

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/client/lib/easing/easing.min.js"></script>
                    <script src="/client/lib/waypoints/waypoints.min.js"></script>
                    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>
                </body>

                </html>