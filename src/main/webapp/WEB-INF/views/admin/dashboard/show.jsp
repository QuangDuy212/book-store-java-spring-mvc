<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div class="title pb-20">
                        <h2 class="h3 mb-0">Hospital Overview</h2>
                    </div>

                    <div class="row pb-10">
                        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
                            <div class="card-box height-100-p widget-style3">
                                <a href="/admin/user">
                                    <div class="d-flex flex-wrap">
                                        <div class="widget-data">
                                            <div class="weight-700 font-24 text-dark">${users}</div>
                                            <div class="font-14 text-secondary weight-500">
                                                Users
                                            </div>
                                        </div>
                                        <div class="widget-icon">
                                            <div class="icon" data-color="#00eccf">
                                                <i class="icon-copy fa fa-user" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
                            <div class="card-box height-100-p widget-style3">
                                <a href="/admin/orders">
                                    <div class="d-flex flex-wrap">
                                        <div class="widget-data">
                                            <div class="weight-700 font-24 text-dark">${orders}</div>
                                            <div class="font-14 text-secondary weight-500">
                                                Orders
                                            </div>
                                        </div>
                                        <div class="widget-icon">
                                            <div class="icon" data-color="#ff5b5b">
                                                <i class="icon-copy fa fa-shopping-cart" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
                            <div class="card-box height-100-p widget-style3">
                                <a href="/admin/book">
                                    <div class="d-flex flex-wrap">
                                        <div class="widget-data">
                                            <div class="weight-700 font-24 text-dark">${books}</div>
                                            <div class="font-14 text-secondary weight-500">
                                                Books
                                            </div>
                                        </div>
                                        <div class="widget-icon">
                                            <div class="icon">
                                                <i class="icon-copy fa fa-book" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 mb-20">
                            <div class="card-box height-100-p widget-style3">
                                <a href="/admin/category">
                                    <div class="d-flex flex-wrap">
                                        <div class="widget-data">
                                            <div class="weight-700 font-24 text-dark">${categories}</div>
                                            <div class="font-14 text-secondary weight-500">Categories</div>
                                        </div>
                                        <div class="widget-icon">
                                            <div class="icon" data-color="#09cc06">
                                                <i class="icon-copy fa fa-window-restore" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- welcome modal start -->
            <div class="welcome-modal">
                <button class="welcome-modal-close">
                    <i class="bi bi-x-lg"></i>
                </button>
                <iframe class="w-100 border-0" src="https://embed.lottiefiles.com/animation/31548"></iframe>
                <div class="text-center">
                    <h3 class="h5 weight-500 text-center mb-2">
                        Open source
                        <span role="img" aria-label="gratitude">❤️</span>
                    </h3>
                    <div class="pb-2">
                        <a class="github-button" href="https://github.com/dropways/deskapp"
                            data-color-scheme="no-preference: dark; light: light; dark: light;" data-icon="octicon-star"
                            data-size="large" data-show-count="true"
                            aria-label="Star dropways/deskapp dashboard on GitHub">Star</a>
                        <a class="github-button" href="https://github.com/dropways/deskapp/fork"
                            data-color-scheme="no-preference: dark; light: light; dark: light;"
                            data-icon="octicon-repo-forked" data-size="large" data-show-count="true"
                            aria-label="Fork dropways/deskapp dashboard on GitHub">Fork</a>
                    </div>
                </div>
                <div class="text-center mb-1">
                    <div>
                        <a href="https://github.com/dropways/deskapp" target="_blank"
                            class="btn btn-light btn-block btn-sm">
                            <span class="text-danger weight-600">STAR US</span>
                            <span class="weight-600">ON GITHUB</span>
                            <i class="fa fa-github"></i>
                        </a>
                    </div>
                    <script async defer="defer" src="https://buttons.github.io/buttons.js"></script>
                </div>
                <a href="https://github.com/dropways/deskapp" target="_blank"
                    class="btn btn-success btn-sm mb-0 mb-md-3 w-100">
                    DOWNLOAD
                    <i class="fa fa-download"></i>
                </a>
                <p class="font-14 text-center mb-1 d-none d-md-block">
                    Available in the following technologies:
                </p>
                <div class="d-none d-md-flex justify-content-center h1 mb-0 text-danger">
                    <i class="fa fa-html5"></i>
                </div>
            </div>
            <button class="welcome-modal-btn">
                <i class="fa fa-download"></i> Download
            </button>
            <!-- welcome modal end -->
            <!-- js -->
            <script src="/adminRes/vendors/scripts/core.js"></script>
            <script src="/adminRes/vendors/scripts/script.min.js"></script>
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