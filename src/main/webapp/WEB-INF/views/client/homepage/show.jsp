<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <!-- Basic Page Info -->
                    <meta charset="utf-8" />
                    <title>Home | Book store</title>

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
                    <link href="/client/css/style.css" rel="stylesheet">

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
                                <div class=" py-5 mb-5 hero-header" style="margin-top: 0 !important;">
                                    <div class="container py-5">
                                        <div class="row g-5 align-items-center">
                                            <div class="col-md-12 col-lg-7">
                                                <h4 class="mb-3 text-secondary">100% genuine product</h4>
                                                <h1 class="mb-5 display-3 text-primary" style="font-size: calc(1.525rem + 3.3vw);font-weight: 600;
    line-height: 1.2;">
                                                    Delicious, Nutritious and Cheap
                                                </h1>
                                            </div>
                                            <div class="col-md-12 col-lg-5">
                                                <div id="carouselId"
                                                    class="carousel slide position-relative d-flex justify-content-center"
                                                    data-bs-ride="carousel">
                                                    <div class="carousel-inner" role="listbox">
                                                        <div class="carousel-item active rounded"
                                                            style="height: 250px; ">
                                                            <img src="/images/book/banner1.jpg"
                                                                class="img-fluid w-100 h-100 bg-secondary rounded"
                                                                alt="First slide"
                                                                style="width: 100%; height: 100%; object-fit: cover;">
                                                        </div>
                                                        <div class="carousel-item rounded" style="height: 250px; ;">
                                                            <img src="/images/book/banner2.webp"
                                                                class="img-fluid w-100 h-100 rounded" alt="Second slide"
                                                                style="width: 100%; height: 100%; object-fit: cover;">
                                                        </div>
                                                        <div class="carousel-item rounded" style="height: 250px; ">
                                                            <img src="/images/book/banner3.webp"
                                                                class="img-fluid w-100 h-100 rounded" alt="Second slide"
                                                                style="width: 100%; height: 100%; object-fit: cover;">
                                                        </div>
                                                        <div class="carousel-item rounded" style="height: 250px; ">
                                                            <img src="/images/book/banner4.jpg"
                                                                class="img-fluid w-100 h-100 rounded" alt="Second slide"
                                                                style="width: 100%; height: 100%; object-fit: cover;">
                                                        </div>
                                                    </div>
                                                    <button class="carousel-control-prev" type="button"
                                                        data-bs-target="#carouselId" data-bs-slide="prev" style="
                                                        width: 48px;
                                                        height: 48px;
                                                        border-radius: 48px;
                                                        border: 1px solid #fff;
                                                        background: #81c408;
                                                        position: absolute;
                                                        top: 50%;
                                                        transform: translateY(-50%);">
                                                        <span class="carousel-control-prev-icon"
                                                            aria-hidden="true"></span>
                                                    </button>
                                                    <button class="carousel-control-next" type="button"
                                                        data-bs-target="#carouselId" data-bs-slide="next" style="
                                                        width: 48px;
                                                        height: 48px;
                                                        border-radius: 48px;
                                                        border: 1px solid #fff;
                                                        background: #81c408;
                                                        position: absolute;
                                                        top: 50%;
                                                        transform: translateY(-50%);">
                                                        <span class="carousel-control-next-icon"
                                                            aria-hidden="true"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrap" style="margin-top: 20px;">
                                    <div class="product-list">
                                        <ul class="row">
                                            <c:forEach var="book" items="${books}">
                                                <li class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                    <div class="product-box">
                                                        <div class="producct-img" style="height: 300px;">
                                                            <img src="/images/book/${book.image}" alt=""
                                                                style="height: 100%; width: 100%; object-fit: cover;" />
                                                        </div>
                                                        <div class="product-caption">
                                                            <h4 style="height: 80px;"><a href="#">${book.mainText}</a>
                                                            </h4>
                                                            <div class="price"><del></del><ins>
                                                                    <fmt:formatNumber type="number"
                                                                        value=" ${book.price}" /> đ
                                                                </ins></div>
                                                            <a href="/book/${book.id}"
                                                                class="btn btn-outline-primary">Read More</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>

                                    <c:if test="${totalPages > 0}">
                                        <div class="blog-pagination mb-30">
                                            <div class="btn-toolbar justify-content-center mb-15">
                                                <div class="btn-group">
                                                    <a href="/?page=${currentPage - 1}" class="btn btn-outline-primary prev
                                                    ${1 eq currentPage ? 'disabled ' : ''}
                                                    "><i class="fa fa-angle-double-left"></i></a>
                                                    <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                                        <a href="/?page=${loop.index + 1}" class=" ${(loop.index + 1) eq currentPage 
                                                            ? 'btn btn-primary current' : 
                                                            'btn btn-outline-primary'}">
                                                            ${loop.index + 1}
                                                        </a>
                                                    </c:forEach>
                                                    <a href="/?page=${loop.index + 1}" class="btn btn-outline-primary next
                                                    ${totalPages eq currentPage ? 'disabled ' : ''}
                                                    "><i class="fa fa-angle-double-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
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
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="/admin/vendors/scripts/core.js"></script>
                    <script src="/admin/vendors/scripts/script.min.js"></script>
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