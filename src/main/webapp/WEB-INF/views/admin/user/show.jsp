<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <!-- Basic Page Info -->
            <meta charset="utf-8" />
            <title>Admin | Book store</title>

            <!-- Site favicon -->
            <link rel="apple-touch-icon" sizes="180x180" href="/admin/vendors/images/apple-touch-icon.png" />
            <link rel="icon" type="image/png" sizes="32x32" href="/admin/vendors/images/favicon-32x32.png" />
            <link rel="icon" type="image/png" sizes="16x16" href="/admin/vendors/images/favicon-16x16.png" />

            <!-- Mobile Specific Metas -->
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
                rel="stylesheet" />
            <!-- CSS -->
            <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/core.css" />
            <link rel="stylesheet" type="text/css" href="/admin/vendors/styles/icon-font.min.css" />
            <link rel="stylesheet" type="text/css" href="/admin/src/plugins/jvectormap/jquery-jvectormap-2.0.3.css" />
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
                <div class="xs-pd-20-10 pd-ltr-20">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 ">
                            <div class="card-box pb-10">
                                <div class="h5 pd-20 mb-0" style="display: flex; justify-content: space-between;">
                                    <span>
                                        Table users
                                    </span>
                                    <span>
                                        <a href="/admin/user/create" class="btn btn-primary btn-lg">Add new user</a>
                                    </span>

                                </div>
                                <table class="data-table table nowrap">
                                    <thead>
                                        <tr>
                                            <th class="table-plus">Name</th>
                                            <th>Gender</th>
                                            <th>Weight</th>
                                            <th>Assigned Doctor</th>
                                            <th>Admit Date</th>
                                            <th>Disease</th>
                                            <th class="datatable-nosort">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo4.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Jennifer O. Oster</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Female</td>
                                            <td>45 kg</td>
                                            <td>Dr. Callie Reed</td>
                                            <td>19 Oct 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Typhoid</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo5.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Doris L. Larson</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Male</td>
                                            <td>76 kg</td>
                                            <td>Dr. Ren Delan</td>
                                            <td>22 Jul 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Dengue</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo6.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Joseph Powell</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Male</td>
                                            <td>90 kg</td>
                                            <td>Dr. Allen Hannagan</td>
                                            <td>15 Nov 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Infection</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo9.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Jake Springer</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Female</td>
                                            <td>45 kg</td>
                                            <td>Dr. Garrett Kincy</td>
                                            <td>08 Oct 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Covid
                                                    19</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo1.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Paul Buckland</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Male</td>
                                            <td>76 kg</td>
                                            <td>Dr. Maxwell Soltes</td>
                                            <td>12 Dec 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Asthma</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo2.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Neil Arnold</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Male</td>
                                            <td>60 kg</td>
                                            <td>Dr. Sebastian Tandon</td>
                                            <td>30 Oct 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Diabetes</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo8.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Christian Dyer</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Male</td>
                                            <td>80 kg</td>
                                            <td>Dr. Sebastian Tandon</td>
                                            <td>15 Jun 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Diabetes</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="table-plus">
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <img src="vendors/images/photo1.jpg"
                                                            class="border-radius-100 shadow" width="40" height="40"
                                                            alt="" />
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-600">Doris L. Larson</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>Male</td>
                                            <td>76 kg</td>
                                            <td>Dr. Ren Delan</td>
                                            <td>22 Jul 2020</td>
                                            <td>
                                                <span class="badge badge-pill" data-bgcolor="#e7ebf5"
                                                    data-color="#265ed7">Dengue</span>
                                            </td>
                                            <td>
                                                <div class="table-actions">
                                                    <a href="#" data-color="#265ed7"><i
                                                            class="icon-copy dw dw-edit2"></i></a>
                                                    <a href="#" data-color="#e95959"><i
                                                            class="icon-copy dw dw-delete-3"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
            <script src="/admin/vendors/scripts/core.js"></script>
            <script src="/admin/vendors/scripts/script.min.js"></script>
            <script src="/admin/vendors/scripts/process.js"></script>
            <script src="/admin/vendors/scripts/layout-settings.js"></script>
            <script src="/admin/src/plugins/jQuery-Knob-master/jquery.knob.min.js"></script>
            <script src="/admin/src/plugins/highcharts-6.0.7/code/highcharts.js"></script>
            <script src="/admin/src/plugins/highcharts-6.0.7/code/highcharts-more.js"></script>
            <script src="/admin/src/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
            <script src="/admin/src/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
            <script src="/admin/vendors/scripts/dashboard2.js"></script>
            <!-- Google Tag Manager (noscript) -->
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                    style="display: none; visibility: hidden"></iframe></noscript>
            <!-- End Google Tag Manager (noscript) -->
        </body>

        </html>