<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <div class="header">
                    <div class="header-left">
                        <div class="menu-icon bi bi-list"></div>
                        <div class="search-toggle-icon bi bi-search" data-toggle="header_search"></div>
                        <div class="header-search">
                            <form>
                                <div class="form-group mb-0">
                                    <i class="dw dw-search2 search-icon"></i>
                                    <input type="text" class="form-control search-input" placeholder="Search Here" />
                                    <div class="dropdown">
                                        <a class="dropdown-toggle no-arrow" href="#" role="button"
                                            data-toggle="dropdown">
                                            <i class="ion-arrow-down-c"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <div class="form-group row">
                                                <label class="col-sm-12 col-md-2 col-form-label">From</label>
                                                <div class="col-sm-12 col-md-10">
                                                    <input class="form-control form-control-sm form-control-line"
                                                        type="text" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-12 col-md-2 col-form-label">To</label>
                                                <div class="col-sm-12 col-md-10">
                                                    <input class="form-control form-control-sm form-control-line"
                                                        type="text" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-12 col-md-2 col-form-label">Subject</label>
                                                <div class="col-sm-12 col-md-10">
                                                    <input class="form-control form-control-sm form-control-line"
                                                        type="text" />
                                                </div>
                                            </div>
                                            <div class="text-right">
                                                <button class="btn btn-primary">Search</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="header-right">
                        <div class="dashboard-setting user-notification">
                            <div class="dropdown">
                                <a class="dropdown-toggle no-arrow" href="javascript:;" data-toggle="right-sidebar">
                                    <i class="dw dw-settings2"></i>
                                </a>
                            </div>
                        </div>
                        <div class="user-notification">
                            <div class="dropdown">
                                <a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
                                    <i class="icon-copy dw dw-notification"></i>
                                    <span class="badge notification-active"></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <div class="notification-list mx-h-350 customscroll">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <img src="/admin/vendors/images/img.jpg" alt="" />
                                                    <h3>John Doe</h3>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing
                                                        elit, sed...
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="/admin/vendors/images/photo1.jpg" alt="" />
                                                    <h3>Lea R. Frith</h3>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing
                                                        elit, sed...
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="/admin/vendors/images/photo2.jpg" alt="" />
                                                    <h3>Erik L. Richards</h3>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing
                                                        elit, sed...
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="/admin/vendors/images/photo3.jpg" alt="" />
                                                    <h3>John Doe</h3>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing
                                                        elit, sed...
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="/admin/vendors/images/photo4.jpg" alt="" />
                                                    <h3>Renee I. Hansen</h3>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing
                                                        elit, sed...
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="/admin/vendors/images/img.jpg" alt="" />
                                                    <h3>Vicki M. Coleman</h3>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing
                                                        elit, sed...
                                                    </p>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="user-info-dropdown">
                            <div class="dropdown">
                                <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
                                    <span class="user-icon">
                                        <img src="/images/avatar/${sessionScope.avatar}" alt=""
                                            style="object-fit: cover; height: 100%; width: 100%;" />
                                    </span>
                                    <span class="user-name" style="width: 100px;">${sessionScope.fullName}</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
                                    <a class="dropdown-item" href="/profile"><i class="dw dw-user1"></i> Profile</a>
                                    <a class="dropdown-item" href="profile.html"><i class="dw dw-settings2"></i>
                                        Setting</a>
                                    <a class="dropdown-item" href="faq.html"><i class="dw dw-help"></i> Help</a>
                                    <form method="post" action="/logout">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button class="dropdown-item "><i class="dw dw-logout"></i>Log Out</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>