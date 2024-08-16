<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <!-- Basic Page Info -->
                    <meta charset="utf-8" />
                    <title>Order history detail | Book store</title>

                    <!-- Site favicon -->
                    <link rel="apple-touch-icon" sizes="180x180" href="/adminRes/vendors/images/apple-touch-icon.png" />
                    <link rel="icon" type="image/png" sizes="32x32" href="/adminRes/vendors/images/favicon-32x32.png" />
                    <link rel="icon" type="image/png" sizes="16x16" href="/adminRes/vendors/images/favicon-16x16.png" />

                    <!-- Mobile Specific Metas -->
                    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

                    <!-- Google Font -->
                    <link
                        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
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
                                            <h4>Orders history detail</h4>
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
                                                    Orders detail
                                                </li>
                                            </ol>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 ">
                                    <div class="card-box pb-10">
                                        <div class="h5 pd-20 mb-0"
                                            style="display: flex; justify-content: space-between;">
                                            <span>
                                                Order history detail
                                            </span>
                                        </div>
                                        <div class="table-responsive">
                                            <table class="data-table table nowrap">
                                                <thead>
                                                    <tr>
                                                        <th class="table-plus">Image</th>
                                                        <th>Info</th>
                                                        <th>Quantity</th>
                                                        <th>Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="order" items="${listOrderDetails}">
                                                        <tr>
                                                            <td class="table-plus">
                                                                <div
                                                                    style="width: 60px; height: 60px; border-radius: 10px; overflow: hidden;border: 1px solid #ccc; ">
                                                                    <img src="/images/book/${order.book.image}"
                                                                        style="width: 100%; height: 100%; object-fit: contain; display: block;" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="txt">
                                                                    <a href="/book/${order.book.id}">
                                                                        ${order.book.mainText}
                                                                    </a>
                                                                    <div>
                                                                        <fmt:formatNumber type="number"
                                                                            value=" ${order.book.price}" /> đ
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                ${order.quantity}
                                                            </td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${order.price}" /> đ

                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td>Total price</td>
                                                        <td>
                                                            <fmt:formatNumber type="number" value="${totalPrice}" /> đ

                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="margin-top: 50px;">

                                <jsp:include page="../layout/footer.jsp"></jsp:include>
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
                    <script src="/adminRes/src/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
                    <!-- Google Tag Manager (noscript) -->
                    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                            style="display: none; visibility: hidden"></iframe></noscript>
                    <!-- End Google Tag Manager (noscript) -->
                </body>

                </html>