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
                                        <c:if test="${empty sessionScope.listCart}">
                                            <div style="width: 100%; padding: 10px;">
                                                Không có sản phẩm nào
                                            </div>
                                        </c:if>
                                        <ul>
                                            <c:if test="${not empty sessionScope.listCart}">
                                                <c:forEach var="detail" items="${sessionScope.listCart}">
                                                    <li>
                                                        <a href="#">
                                                            <img src="/images/book/${detail.book.image}" alt="" />
                                                            <p>
                                                                ${detail.book.mainText}
                                                            </p>
                                                        </a>
                                                    </li>
                                                </c:forEach>
                                            </c:if>
                                        </ul>
                                    </div>
                                    <div style="border-top: 1px solid #ccc;">
                                        <a href="/cart" class="btn btn-primary" style="margin-top: 12px;">Xem giỏ
                                            hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:if test='${empty sessionScope.fullName}'>
                            <div style="display: flex; justify-content: center; align-items: center;width: 150px;">
                                <a href="/login">Đăng nhập</a>
                            </div>
                        </c:if>
                        <c:if test='${not empty sessionScope.fullName}'>
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
                        </c:if>
                    </div>
                </div>