<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <button%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                        <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/core.css" />
                        <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/icon-font.min.css" />
                        <link rel="stylesheet" type="text/css"
                            href="/adminRes/src/plugins/jvectormap/jquery-jvectormap-2.0.3.css" />
                        <link rel="stylesheet" type="text/css" href="/adminRes/vendors/styles/style.css" />
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
                                                    <h4>Book Detail</h4>
                                                </div>
                                                <nav aria-label="breadcrumb" role="navigation">
                                                    <ol class="breadcrumb">
                                                        <li class="breadcrumb-item">
                                                            <a href="/">Home</a>
                                                        </li>
                                                        <li class="breadcrumb-item active" aria-current="page">
                                                            Book Detail
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
                                                    <div class="product-slider slider-arrow"
                                                        style="background-color: #fff; display: flex; justify-content: center; align-items: center; border-radius: 10px;padding: 10px;">
                                                        <div class="product-slide" style="height: 400px;">
                                                            <img src="/images/book/${book.image}" alt=""
                                                                style="height: 100%; object-fit: contain;" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-12 col-sm-12">
                                                    <div class="product-detail-desc pd-20 card-box ">
                                                        <h4 class="mb-20 pt-20">${book.mainText}</h4>
                                                        <p>
                                                            ${book.author}
                                                        </p>
                                                        <p>
                                                            Category: ${book.category}
                                                        </p>
                                                        <div class="price">
                                                            <fmt:formatNumber type="number" value=" ${book.price}" /> đ
                                                        </div>
                                                        <form:form method="post" action="/add-cart/${book.id}"
                                                            modelAttribute="newCartDetail"
                                                            enctype="multipart/form-data">
                                                            <div class="" style="width: 100%;">
                                                                <div class="form-group d-flex row">
                                                                    <label
                                                                        class="col-sm-4 col-form-label d-flex align-items-center">Quantity</label>
                                                                    <div class="col-sm-8">
                                                                        <form:input id="demo3_22" type="text" value="1"
                                                                            class="form-control" name="demo3_22"
                                                                            path="quantity" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6 col-6">
                                                                    <button type="submit"
                                                                        class="btn btn-primary btn-block btnAddToCartDetail">Add
                                                                        Cart</button>
                                                                </div>
                                                                <div class="col-md-6 col-6">
                                                                    <a href="#"
                                                                        class="btn btn-outline-primary btn-block">Buy
                                                                        Now</a>
                                                                </div>
                                                            </div>
                                                        </form:form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <h4 class="mb-20">Same category</h4>
                                        <div class="product-list">
                                            <ul class="row">
                                                <c:forEach var="sameBook" items="${sameBooks}">
                                                    <li class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                        <div class="product-box">
                                                            <div class="producct-img" style="height: 300px;">
                                                                <img src="/images/book/${sameBook.image}" alt=""
                                                                    style="height: 100%; width: 100%; object-fit: cover;" />
                                                            </div>
                                                            <div class="product-caption">
                                                                <h4 style="height: 80px;"><a
                                                                        href="#">${sameBook.mainText}</a>
                                                                </h4>
                                                                <div class="price"><del></del><ins>
                                                                        <fmt:formatNumber type="number"
                                                                            value=" ${book.price}" /> đ
                                                                    </ins></div>
                                                                <a href="/book/${sameBook.id}"
                                                                    class="btn btn-outline-primary">Read More</a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                            <c:if test="${totalPages > 0}">
                                                <div class="blog-pagination mb-30">
                                                    <div class="btn-toolbar justify-content-center mb-15">
                                                        <div class="btn-group">
                                                            <a href="/book/${book.id}?page=${currentPage - 1}" class="btn btn-outline-primary prev
                                                    ${1 eq currentPage ? 'disabled ' : ''}
                                                    "><i class="fa fa-angle-double-left"></i></a>
                                                            <c:forEach begin="0" end="${totalPages - 1}"
                                                                varStatus="loop">
                                                                <a href="/book/${book.id}?page=${loop.index + 1}" class=" ${(loop.index + 1) eq currentPage 
                                                            ? 'btn btn-primary current' : 
                                                            'btn btn-outline-primary'}">
                                                                    ${loop.index + 1}
                                                                </a>
                                                            </c:forEach>
                                                            <a href="/book/${book.id}?page=${loop.index + 1}" class="btn btn-outline-primary next
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
                        <!-- js -->
                        <script src="/adminRes/vendors/scripts/core.js"></script>

                        <script src="/adminRes/vendors/scripts/script.js"></script>
                        <script src="/adminRes/vendors/scripts/process.js"></script>
                        <script src="/adminRes/vendors/scripts/layout-settings.js"></script>
                        <script src="/adminRes/src/plugins/jQuery-Knob-master/jquery.knob.min.js"></script>
                        <script src="/adminRes/src/plugins/highcharts-6.0.7/code/highcharts.js"></script>
                        <script src="/adminRes/src/plugins/highcharts-6.0.7/code/highcharts-more.js"></script>
                        <script src="/adminRes/src/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
                        <script src="/adminRes/src/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
                        <script src="/adminRes/vendors/scripts/dashboard2.js"></script>
                        <!-- Google Tag Manager (noscript) -->
                        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0"
                                width="0" style="display: none; visibility: hidden"></iframe></noscript>
                        <!-- End Google Tag Manager (noscript) -->
                    </body>

                    </html>