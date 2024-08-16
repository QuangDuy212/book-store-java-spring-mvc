<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <button type="button" id="success-modal-btn" hidden data-toggle="modal" data-target="#success-modal"
            data-backdrop="static">
            Launch modal
        </button>
        <div class="modal fade" id="success-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered max-width-400" role="document">
                <div class="modal-content">
                    <div class="modal-body text-center font-18">
                        <h3 class="mb-20">Form Submitted!</h3>
                        <div class="mb-30 text-center">
                            <img src="/adminRes/vendors/images/success.png" />
                        </div>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                        eiusmod
                    </div>
                    <div class="modal-footer justify-content-center">
                        <a href="login.html" class="btn btn-primary">Done</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- success Popup html End -->
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