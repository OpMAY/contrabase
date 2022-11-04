<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String type = request.getParameter("type");
%>

<c:set var="type" value="<%=type%>"/>

<c:choose>
    <c:when test="${type eq 'mypage'}">
        <div class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-board.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-star.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-mypage-active.svg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </c:when>

    <c:when test="${type eq 'likes'}">
        <div class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-board.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-star-active.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </c:when>

    <c:when test="${type eq 'location'}">
        <div class="main-bottom-nav bottom-nav-animation" id="footer" style="z-index: 1">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-board.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-location-active.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-star.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </c:when>

    <c:when test="${type eq 'work'}">
        <div class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-home.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-board-active.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-star.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </c:when>

    <c:when test="${type eq 'main'}">
        <div class="main-bottom-nav bottom-nav-animation" id="footer">
            <div class="row m-0">
                <div class="col-12 d-flex pt-16 pb-16">
                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-home-active.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-board.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-location.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-star.svg" alt="">
                    </div>

                    <div class="flex-fill text-center">
                        <img src="../../resources/assets/images/icon/icon-mypage.svg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </c:when>
</c:choose>
