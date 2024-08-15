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
                                            <h4>Chi tiết giỏ hàng</h4>
                                        </div>
                                        <nav aria-label="breadcrumb" role="navigation">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item">
                                                    <a href="/">Home</a>
                                                </li>
                                                <li class="breadcrumb-item active" aria-current="page">
                                                    Chi tiết giỏ hàng
                                                </li>
                                            </ol>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-8 col-sm-12">
                                    <div class="page-header">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" style="font-size: 13px;">Sản phẩm</th>
                                                                <th scope="col" style="font-size: 13px;">Thông tin</th>
                                                                <th scope="col" style="font-size: 13px;">Số lượng</th>
                                                                <th scope="col" style="font-size: 13px;">Thành tiền</th>
                                                                <th scope="col" style="font-size: 13px;">Xử lý</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:if test="${ empty cartDetails}">
                                                                <tr>
                                                                    <td colspan="6">
                                                                        Không có sản phẩm trong giỏ hàng
                                                                    </td>
                                                                </tr>
                                                            </c:if>
                                                            <c:if test="${ not empty cartDetails}">
                                                                <c:forEach var="cartDetail" items="${cartDetails}"
                                                                    varStatus="status">
                                                                    <tr>
                                                                        <th scope="row">
                                                                            <div class="d-flex align-items-center">
                                                                                <img src="/images/book/${cartDetail.book.image}"
                                                                                    class="img-fluid me-5 "
                                                                                    style="width: 80px; height: 80px;"
                                                                                    alt="">
                                                                            </div>
                                                                        </th>
                                                                        <td>
                                                                            <p class="mb-0 mt-4">
                                                                                <a href="/book/${cartDetail.book.id}"
                                                                                    target="_blank">
                                                                                    ${cartDetail.book.mainText}
                                                                                </a>
                                                                            <div>
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${cartDetail.price}" /> đ
                                                                            </div>
                                                                            </p>
                                                                        </td>
                                                                        <td>
                                                                            <div class="input-group quantity mt-4"
                                                                                style="width: 100px;">

                                                                                <div class="input-group-btn">
                                                                                    <button
                                                                                        class="btn btn-sm btn-minus">
                                                                                        <i class="fa fa-minus"></i>
                                                                                    </button>
                                                                                </div>
                                                                                <input type="text"
                                                                                    class="form-control form-control-sm text-center border-0"
                                                                                    value="${cartDetail.quantity}"
                                                                                    data-cart-detail-id="${cartDetail.id}"
                                                                                    data-cart-detail-price="${cartDetail.price}"
                                                                                    data-cart-detail-index="${status.index}">
                                                                                <div class="input-group-btn">
                                                                                    <button class="btn btn-sm btn-plus">
                                                                                        <i class="fa fa-plus"></i>
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td
                                                                            class="d-flex justify-content-center align-items-center">
                                                                            <p class="mb-0 mt-4"
                                                                                data-cart-detail-id="${cartDetail.id}">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${cartDetail.price * cartDetail.quantity}" />
                                                                                đ
                                                                            </p>
                                                                        </td>
                                                                        <td>
                                                                            <form method="post"
                                                                                action="/delete-cart-product/${cartDetail.id}">
                                                                                <input type="hidden"
                                                                                    name="${_csrf.parameterName}"
                                                                                    value="${_csrf.token}" />
                                                                                <button class="btn btn-md ">
                                                                                    <i
                                                                                        class="fa fa-times text-danger"></i>
                                                                                </button>
                                                                            </form>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                            </c:if>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12">

                                    <div class="page-header">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12">
                                                <div class=" row g-4 justify-content-start">
                                                    <div class="col-12 ">
                                                        <div>
                                                            <div>
                                                                <div
                                                                    style="display: flex; justify-content: center; align-items: center;">
                                                                    <h1 class="display-6 mb-4" style="font-size: 15px;">
                                                                        Thông Tin Đơn Hàng
                                                                    </h1>
                                                                </div>
                                                                <div class="d-flex justify-content-between mb-4">
                                                                    <h5 class="mb-0 me-4" style="font-size: 14px;">
                                                                        Tạm tính:</h5>
                                                                    <p class="mb-0"
                                                                        data-cart-total-price="${totalPrice}"
                                                                        style="font-size: 14px;">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${totalPrice}" /> đ
                                                                    </p>
                                                                </div>
                                                                <div class="d-flex justify-content-between">
                                                                    <h5 class="mb-0 me-4" style="font-size: 14px;">
                                                                        Phí vận chuyển</h5>
                                                                    <div class="">
                                                                        <p class="mb-0" style="font-size: 14px;">0 đ
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
                                                                <h5 class="mb-0 ps-4 me-4" style="font-size: 14px;">
                                                                    Tổng số tiền</h5>
                                                                <p class="mb-0 pe-4"
                                                                    data-cart-total-price="${totalPrice}"
                                                                    style="font-size: 14px;">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${totalPrice}" />
                                                                    đ
                                                                </p>
                                                            </div>
                                                            <form:form action="/confirm-checkout" method="post"
                                                                modelAttribute="cart">
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                                <div style="display: none;">
                                                                    <c:forEach var="cartDetail"
                                                                        items="${cart.cartDetails}" varStatus="status">
                                                                        <div class="mb-3">
                                                                            <div class="form-group">
                                                                                <label>Id:</label>
                                                                                <form:input class="form-control"
                                                                                    type="text" value="${cartDetail.id}"
                                                                                    path="cartDetails[${status.index}].id" />
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Quantity:</label>
                                                                                <form:input class="form-control"
                                                                                    type="text"
                                                                                    value="${cartDetail.quantity}"
                                                                                    path="cartDetails[${status.index}].quantity" />
                                                                            </div>
                                                                        </div>
                                                                    </c:forEach>
                                                                </div>
                                                                <c:if test="${empty cartDetails}">
                                                                    <button class="btn btn-primary" style="width: 100%;"
                                                                        disabled="true">Xác
                                                                        nhận thanh toán
                                                                    </button>
                                                                </c:if>
                                                                <c:if test="${not empty cartDetails}">
                                                                    <button class="btn btn-primary"
                                                                        style="width: 100%;">Xác
                                                                        nhận thanh toán
                                                                    </button>
                                                                </c:if>
                                                            </form:form>
                                                        </div>
                                                    </div>
                                                </div>
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