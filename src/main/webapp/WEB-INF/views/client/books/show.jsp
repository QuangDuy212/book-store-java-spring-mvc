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
                                        <div class="title" style="border-bottom: 1px solid #ccc;">
                                            <p style="font-size: 20px; font-weight: 600;">Bộ lọc tìm kiếm</p>
                                        </div>
                                        <div id="categoryFilter">
                                            <div style="margin-top: 10px;font-size: 14px; font-weight: 600;">Category:
                                            </div>
                                            <c:forEach var="category" items="${categories}">
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="checkbox"
                                                        id="category${category.id}" value="${category.id}">
                                                    <label class="form-check-label" for="category${category.id}"
                                                        style="font-size: 14px;">${category.name}</label>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <div id="priceFilter">
                                            <div style="margin-top: 10px;font-size: 14px; font-weight: 600;">Price:
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="price-2"
                                                    value="duoi-100-k">
                                                <label class="form-check-label" for="price-2"
                                                    style="font-size: 14px;">Dưới 100k</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="price-3"
                                                    value="100-200-k">
                                                <label class="form-check-label" for="price-3"
                                                    style="font-size: 14px;">Từ 100 - 200k</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="price-4"
                                                    value="200-300-k">
                                                <label class="form-check-label" for="price-4"
                                                    style="font-size: 14px;">Từ 200 - 300k</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="price-5"
                                                    value="tren-300-k">
                                                <label class="form-check-label" for="price-5"
                                                    style="font-size: 14px;">Trên 300k</label>
                                            </div>
                                        </div>
                                        <div>
                                            <div style=" margin-top: 10px;font-size: 14px; font-weight: 600;">
                                                </divstyle>
                                                Sắp xếp
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-1"
                                                    value="gia-tang-dan" name="radio-sort">
                                                <label class="form-check-label" for="sort-1"
                                                    style="font-size: 14px;">Giá
                                                    tăng dần</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-2"
                                                    value="gia-giam-dan" name="radio-sort">
                                                <label class="form-check-label" for="sort-2"
                                                    style="font-size: 14px;">Giá
                                                    giảm dần</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-3" checked
                                                    value="gia-nothing" name="radio-sort">
                                                <label class="form-check-label" for="sort-3"
                                                    style="font-size: 14px;">Không
                                                    sắp xếp</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12">
                                        <div style="border-top: 1px solid #ccc;margin-top: 10px;">
                                            <button class="btn btn-primary" id="btnFilter" style="margin-top: 10px;">Tìm
                                                kiếm</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="min-height-200px">
                                <div class="product-wrap" style="margin-top: 20px;">
                                    <div class="product-list">
                                        <ul class="row">
                                            <c:if test="${totalPages ==  0}">
                                                <li class="col-12">
                                                    <div class="product-box">
                                                        <div class="product-caption">Không tìm thấy sản phẩm</div>
                                                    </div>
                                                </li>
                                            </c:if>
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
                                                                class="btn btn-outline-primary">Read
                                                                More</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                        <c:if test="${totalPages > 0}">
                                            <div class="blog-pagination mb-30">
                                                <div class="btn-toolbar justify-content-center mb-15">
                                                    <div class="btn-group">
                                                        <a href="/books?page=${currentPage - 1}${queryString}" class="btn btn-outline-primary prev
                                                        ${1 eq currentPage ? 'disabled ' : ''}
                                                        "><i class="fa fa-angle-double-left"></i></a>
                                                        <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                                            <a href="/books?page=${loop.index + 1}${queryString}" class=" ${(loop.index + 1) eq currentPage 
                                                                ? 'btn btn-primary current' : 
                                                                'btn btn-outline-primary'}">
                                                                ${loop.index + 1}
                                                            </a>
                                                        </c:forEach>
                                                        <a href="/books?page=${loop.index + 1}${queryString}" class="btn btn-outline-primary next
                                                        ${totalPages eq currentPage ? 'disabled ' : ''}
                                                        "><i class="fa fa-angle-double-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                            <jsp:include page="../layout/footer.jsp"></jsp:include>
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

                    <!-- Template Javascript -->
                    <script src="/client/js/main.js"></script>
                    <script type="text/javascript"
                        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="/admin/vendors/scripts/core.js"></script>
                    <script src="/client/js/main.js"></script>
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