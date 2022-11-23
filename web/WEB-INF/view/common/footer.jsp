<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String type = request.getParameter("type");
%>

<c:set var="type" value="<%=type%>"/>

<c:choose>
    <c:when test="${type eq 'mypage'}">
        <footer class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-board.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-star.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-mypage-active.svg" alt="">
                    </div>
                </div>
            </div>
        </footer>
    </c:when>

    <c:when test="${type eq 'likes'}">
        <footer class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-board-active.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-star.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </footer>

    </c:when>

    <c:when test="${type eq 'location'}">
        <footer class="main-bottom-nav bottom-nav-animation" id="footer" style="z-index: 1">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-home.svg" alt="">
                    </div>
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-board.svg" alt="">
                    </div>
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-location.svg" alt="">
                    </div>
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-star.svg" alt="">
                    </div>
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </footer>
    </c:when>
    <c:when test="${type eq 'work'}">
        <footer class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-board-active.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-star.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </footer>
    </c:when>

    <c:when test="${type eq 'main'}">
        <footer class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-board-active.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-star.svg" alt="">
                    </div>
                    <div class="flex-fill text-center cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </footer>
    </c:when>
</c:choose>
