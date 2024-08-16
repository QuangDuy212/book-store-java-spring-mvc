<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html>

            <head>
                <!-- Basic Page Info -->
                <meta charset="utf-8" />
                <title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

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

            <body class="login-page">
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
                                        <h4>Create</h4>
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
                                                Create
                                            </li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-md-12 col-lg-12">
                                    <div class="register-box bg-white box-shadow border-radius-10"
                                        style="max-width: 100%;">
                                        <div class="wizard-content">
                                            <form:form class="tab-wizard2 wizard-circle wizard" method="post"
                                                action="/admin/user/create" modelAttribute="newUser"
                                                enctype="multipart/form-data" style=" padding: 15px;">
                                                <c:set var="errorEmail">
                                                    <form:errors path="email" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorPassword">
                                                    <form:errors path="password" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorFullName">
                                                    <form:errors path="fullName" cssClass="invalid-feedback" />
                                                </c:set>
                                                <h5 style="margin: 10px 0 20px;">Create new user</h5>
                                                <div class="dropdown-divider"></div>
                                                <div
                                                    style="width: 100%; display: flex; justify-content: center; align-items: center; margin: 20px 0;">
                                                    <div style="width: 150px; height: 150px; border-radius: 50%; ">
                                                        <img src="/images/avatar/default-avatar.webp" alt=""
                                                            class="avatar-photo" id="avatarPreview"
                                                            style="width: 100%; height: 100%; object-fit: cover; border-radius: 50%;" />
                                                    </div>
                                                </div>
                                                <section>
                                                    <div class="form-wrap  mx-auto">
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label">Email
                                                                Address*</label>
                                                            <div class="col-sm-8">
                                                                <form:input type="email"
                                                                    class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                                    path="email" required="true" />
                                                                ${errorEmail}
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label">Password*</label>
                                                            <div class="col-sm-8">
                                                                <form:input type="password"
                                                                    class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                                    path="password" required="true" />
                                                                ${errorPassword}
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label">Full Name*</label>
                                                            <div class="col-sm-8">
                                                                <form:input type="text"
                                                                    class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                                    path="fullName" required="true" />
                                                                ${errorFullName}
                                                            </div>
                                                        </div>
                                                        <div class="form-group row align-items-center">
                                                            <label class="col-sm-4 col-form-label">
                                                                Gender and Role*</label>
                                                            <div class="col-sm-8">
                                                                <div class="row">
                                                                    <div class="col-6">
                                                                        <form:select class="form-control selectpicker"
                                                                            title="Gender" data-size="5" path="gender">
                                                                            <form:option value="male"
                                                                                selected="selected">Male</form:option>
                                                                            <form:option value="female">Female
                                                                            </form:option>
                                                                        </form:select>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <form:select class="form-control selectpicker"
                                                                            title="Role" data-size="5" path="role.name">
                                                                            <form:option value="USER"
                                                                                selected="selected">USER</form:option>
                                                                            <form:option value="ADMIN">ADMIN
                                                                            </form:option>
                                                                        </form:select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Address</label>
                                                        <div class="col-sm-8">
                                                            <form:input type="text" class="form-control"
                                                                path="address" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-sm-4 col-form-label">Phone number</label>
                                                        <div class="col-sm-8">
                                                            <form:input type="text" class="form-control" path="phone" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="avatarFile"
                                                            class="col-sm-4 col-form-label">Avatar:</label>
                                                        <div class="col-sm-8">
                                                            <input class="form-control-file form-control height-auto"
                                                                type="file" id="avatarFile" accept=".png, .jpg, .jpeg"
                                                                name="hoidanitFile" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row" style="float: right;">
                                                        <div class="col-sm-12">
                                                            <button
                                                                style="background-color: #1b00ff;font-weight: 600; width: 100%;"
                                                                class="btn btn-primary" type="submit">Submit</button>
                                                        </div>
                                                    </div>
                                                </section>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- success Popup html Start -->

                <jsp:include page="../layout/welcome.jsp"></jsp:include>
                <!-- welcome modal end -->
                <!-- js -->
                <script src="/admin/vendors/scripts/core.js"></script>
                <script src="/admin/vendors/scripts/script.min.js"></script>
                <script src="/admin/vendors/scripts/script.js"></script>
                <script src="/admin/vendors/scripts/process.js"></script>
                <script src="/admin/vendors/scripts/layout-settings.js"></script>
                <script src="/admin/src/plugins/jquery-steps/jquery.steps.js"></script>
                <script src="/admin/vendors/scripts/steps-setting-admin.js"></script>
                <!-- Google Tag Manager (noscript) -->
                <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
                        style="display: none; visibility: hidden"></iframe></noscript>
                <!-- End Google Tag Manager (noscript) -->
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        const avatarImg = "${newUser.avatar}";
                        if (avatarImg) {
                            const imgURL = "/images/avatar/" + avatarImg;
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        }
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                            console.log(">>> check")
                        });
                    });
                </script>
            </body>

            </html>