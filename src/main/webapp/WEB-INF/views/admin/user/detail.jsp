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
                    <div class="pd-ltr-20 xs-pd-20-10">
                        <div class="min-height-200px">
                            <div class="page-header">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="title">
                                            <h4>Profile</h4>
                                        </div>
                                        <nav aria-label="breadcrumb" role="navigation">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item">
                                                    <a href="/admin">Home</a>
                                                </li>
                                                <li class="breadcrumb-item">
                                                    <a href="/admin/user">Users</a>
                                                </li>
                                                <li class="breadcrumb-item active" aria-current="page">
                                                    Detail
                                                </li>
                                            </ol>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
                                    <div class="pd-20 card-box height-100-p">
                                        <div
                                            style="width: 100%; display: flex; justify-content: center; align-items: center;">
                                            <div style="width: 100px; height: 100px; border-radius: 50%; ">
                                                <img id="avatarProfilePre" class="avatar-photo"
                                                    style="width: 100%; height: 100%; object-fit: cover; border-radius: 50%;" />
                                            </div>
                                        </div>
                                        <h5 class="text-center h5 mb-0">${user.fullName}</h5>
                                        <div class="profile-info">
                                            <h5 class="mb-20 h5 text-blue">Contact Information</h5>
                                            <ul>
                                                <li>
                                                    <span>Email Address:</span>
                                                    ${user.email}
                                                </li>
                                                <li>
                                                    <span>Gender:</span>
                                                    ${user.gender}
                                                </li>
                                                <li>
                                                    <span>Role:</span>
                                                    ${user.role.name}
                                                </li>
                                                <li>
                                                    <span>Phone Number:</span>
                                                    ${user.phone}
                                                </li>
                                                <li>
                                                    <span>Address:</span>
                                                    ${user.address}
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
                                    <div class="card-box height-100-p overflow-hidden">
                                        <div class="profile-tab height-100-p">
                                            <div class="tab height-100-p">
                                                <ul class="nav nav-tabs customtab" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active" data-toggle="tab" href="#setting"
                                                            role="tab">Settings</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <!-- Setting Tab start -->
                                                    <div class="tab-pane fade height-100-p show active" id="setting"
                                                        role="tabpanel">
                                                        <div class="profile-setting">
                                                            <form:form method="post" action="/admin/user/detail"
                                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                                <ul class="profile-edit-list row">
                                                                    <li class="weight-500 col-md-12">
                                                                        <h4 class="text-blue h5 mb-20">
                                                                            Edit Your Personal Setting
                                                                        </h4>
                                                                        <div
                                                                            style="width: 100%; display: flex; justify-content: center; align-items: center;">
                                                                            <div
                                                                                style="width: 150px; height: 150px; border-radius: 50%; ">
                                                                                <img alt="" class="avatar-photo"
                                                                                    id="avatarUpdatePre"
                                                                                    style="width: 100%; height: 100%; object-fit: cover; border-radius: 50%;" />
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group" style="display: none;">
                                                                            <label>ID:</label>
                                                                            <form:input
                                                                                class="form-control form-control-lg"
                                                                                type="text" path="id" />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Full Name</label>
                                                                            <form:input
                                                                                class="form-control form-control-lg"
                                                                                type="text" path="fullName" />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Email</label>
                                                                            <form:input
                                                                                class="form-control form-control-lg"
                                                                                type="email" path="email"
                                                                                disabled="true" />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Gender and Role</label>
                                                                            <div class="row">
                                                                                <div class="col-6">
                                                                                    <form:select
                                                                                        class="form-control selectpicker"
                                                                                        title="Gender" data-size="5"
                                                                                        path="gender">
                                                                                        <form:option value="male">
                                                                                            Male
                                                                                        </form:option>
                                                                                        <form:option value="female">
                                                                                            Female
                                                                                        </form:option>
                                                                                    </form:select>
                                                                                </div>
                                                                                <div class="col-6">
                                                                                    <form:select
                                                                                        class="form-control selectpicker"
                                                                                        title="Role" data-size="5"
                                                                                        path="role.name">
                                                                                        <form:option value="USER">
                                                                                            USER
                                                                                        </form:option>
                                                                                        <form:option value="ADMIN">
                                                                                            ADMIN
                                                                                        </form:option>
                                                                                    </form:select>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Phone</label>
                                                                            <form:input class="form-control "
                                                                                type="text" path="phone" />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Address</label>
                                                                            <form:input class="form-control" type="text"
                                                                                path="address" />
                                                                        </div>
                                                                        <div class="form-group ">
                                                                            <label for="avatarFile">Avatar:</label>
                                                                            <input
                                                                                class="form-control-file form-control height-auto"
                                                                                type="file" id="avatarUpdateFile"
                                                                                accept=".png, .jpg, .jpeg"
                                                                                name="avatarUpdateFile" />
                                                                        </div>
                                                                        <div class="form-group mb-0">
                                                                            <button type="submit"
                                                                                class="btn btn-primary">Submit</button>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </form:form>
                                                        </div>
                                                    </div>
                                                    <!-- Setting Tab End -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
                <script src="/adminRes/src/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
                <!-- Google Tag Manager (noscript) -->
                <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                        style="display: none; visibility: hidden"></iframe></noscript>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarUpdateFile");
                        const avatarImg = "${newUser.avatar}";
                        if (avatarImg) {
                            const imgURL = "/images/avatar/" + avatarImg;
                            $("#avatarProfilePre").attr("src", imgURL);
                            $("#avatarUpdatePre").attr("src", imgURL);
                        }
                        else {
                            $("#avatarUpdatePre").attr("src", "/images/avatar/default-avatar.webp");
                            $("#avatarProfilePre").attr("src", "/images/avatar/default-avatar.webp");
                        }
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarUpdatePre").attr("src", imgURL);
                        });
                    });
                </script>
                <!-- End Google Tag Manager (noscript) -->
            </body>

            </html>