<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div class="left-side-bar">
            <div class="brand-logo">
                <a href="/">
                    <img src="/admin/vendors/images/deskapp-logo.svg" alt="" class="dark-logo" />
                    <img src="/admin/vendors/images/deskapp-logo-white.svg" alt="" class="light-logo" />
                </a>
                <div class="close-sidebar" data-toggle="left-sidebar-close">
                    <i class="ion-close-round"></i>
                </div>
            </div>
            <div class="menu-block customscroll">
                <div class="sidebar-menu">
                    <ul id="accordion-menu">
                        <li>
                            <a href="/" class="dropdown-toggle no-arrow">
                                <span class="micon bi bi-house"></span><span class="mtext">Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="/profile" class="dropdown-toggle no-arrow">
                                <span class="micon bi bi-textarea-resize"></span><span class="mtext">Profile</span>
                            </a>
                        </li>
                        <li>
                            <a href="/books" class="dropdown-toggle no-arrow">
                                <span class="micon bi bi-table"></span><span class="mtext">Books</span>
                            </a>
                        </li>

                        <li>
                            <a href="/order-history" class="dropdown-toggle no-arrow">
                                <span class="micon bi bi-table"></span><span class="mtext">Orders history</span>
                            </a>
                        </li>

                </div>
            </div>
        </div>