<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div class="left-side-bar">
            <div class="brand-logo">
                <a href="index.html">
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
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon bi bi-house"></span><span class="mtext">Home</span>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon bi bi-textarea-resize"></span><span class="mtext">Users</span>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon bi bi-table"></span><span class="mtext">Books</span>
                            </a>
                        </li>
                        <li>
                            <a href="calendar.html" class="dropdown-toggle no-arrow">
                                <span class="micon bi bi-calendar4-week"></span><span class="mtext">Orders</span>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon bi bi-archive"></span><span class="mtext">Orders history</span>
                            </a>
                        </li>

                        <li>
                            <div class="dropdown-divider"></div>
                        </li>
                        <li>
                            <div class="sidebar-small-cap">Extra</div>
                        </li>
                        <li>
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon bi bi-file-pdf"></span><span class="mtext">Documentation</span>
                            </a>
                            <ul class="submenu">
                                <li><a href="introduction.html">Introduction</a></li>
                                <li><a href="getting-started.html">Getting Started</a></li>
                                <li><a href="color-settings.html">Color Settings</a></li>
                                <li>
                                    <a href="third-party-plugins.html">Third Party Plugins</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="https://dropways.github.io/deskapp-free-single-page-website-template/"
                                target="_blank" class="dropdown-toggle no-arrow">
                                <span class="micon bi bi-layout-text-window-reverse"></span>
                                <span class="mtext">Landing Page
                                    <img src="/admin/vendors/images/coming-soon.png" alt="" width="25" /></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>