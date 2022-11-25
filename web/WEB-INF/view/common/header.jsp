<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String title = request.getParameter("title");
    String type = request.getParameter("type");
    String icon = request.getParameter("icon");
%>

<c:set var="type" value="<%=type%>"/>
<c:set var="icon" value="<%=icon%>"/>

<c:choose>
    <c:when test="${type eq 'text-left'}">
        <header class="header-wrap" id="header">
            <div class="col-12 d-flex p-0">
                <div id="bottom-tab-location-trigger" class="mr-auto p-24">
                    <span class="bold-h5 d-flex">
                        <span class="my-auto d-inline-block"><%=title%></span>
                        <svg class="my-auto pl-8 cursor-pointer" width="12" height="7" viewBox="0 0 12 7" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path d="M11 1L6 6L1 1" stroke="#021226" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </span>
                </div>
                <div class="p-24">
                    <c:choose>
                        <c:when test="${icon eq 'alarm'}">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_104_2833)">
                                    <path d="M18 10C18 8.4087 17.3679 6.88258 16.2426 5.75736C15.1174 4.63214 13.5913 4 12 4C10.4087 4 8.88258 4.63214 7.75736 5.75736C6.63214 6.88258 6 8.4087 6 10V18H18V10ZM20 18.667L20.4 19.2C20.4557 19.2743 20.4896 19.3626 20.498 19.4551C20.5063 19.5476 20.4887 19.6406 20.4472 19.7236C20.4057 19.8067 20.3419 19.8765 20.2629 19.9253C20.1839 19.9741 20.0929 20 20 20H4C3.90714 20 3.81612 19.9741 3.73713 19.9253C3.65815 19.8765 3.59431 19.8067 3.55279 19.7236C3.51126 19.6406 3.49368 19.5476 3.50202 19.4551C3.51036 19.3626 3.54429 19.2743 3.6 19.2L4 18.667V10C4 7.87827 4.84286 5.84344 6.34315 4.34315C7.84344 2.84285 9.87827 2 12 2C14.1217 2 16.1566 2.84285 17.6569 4.34315C19.1571 5.84344 20 7.87827 20 10V18.667ZM9.5 21H14.5C14.5 21.663 14.2366 22.2989 13.7678 22.7678C13.2989 23.2366 12.663 23.5 12 23.5C11.337 23.5 10.7011 23.2366 10.2322 22.7678C9.76339 22.2989 9.5 21.663 9.5 21Z"
                                          fill="#021226"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_104_2833">
                                        <rect width="24" height="24" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>
                        </c:when>
                        <c:when test="${icon eq 'trash'}">
                            <img src="/resources/assets/images/icon/icon-trash.svg" alt="">
                        </c:when>
                        <c:otherwise>
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M22 17.002C21.9996 18.3696 21.5321 19.696 20.675 20.7616C19.8179 21.8273 18.6226 22.5683 17.287 22.862L16.649 20.948C17.2332 20.8518 17.7888 20.6271 18.2758 20.2903C18.7627 19.9534 19.1689 19.5128 19.465 19H17C16.4696 19 15.9609 18.7893 15.5858 18.4142C15.2107 18.0391 15 17.5304 15 17V13C15 12.4696 15.2107 11.9609 15.5858 11.5858C15.9609 11.2107 16.4696 11 17 11H19.938C19.694 9.0669 18.7529 7.28927 17.2914 6.00068C15.8299 4.71208 13.9484 4.00108 12 4.00108C10.0516 4.00108 8.17007 4.71208 6.70857 6.00068C5.24708 7.28927 4.30603 9.0669 4.062 11H7C7.53043 11 8.03914 11.2107 8.41421 11.5858C8.78929 11.9609 9 12.4696 9 13V17C9 17.5304 8.78929 18.0391 8.41421 18.4142C8.03914 18.7893 7.53043 19 7 19H4C3.46957 19 2.96086 18.7893 2.58579 18.4142C2.21071 18.0391 2 17.5304 2 17V12C2 6.477 6.477 2 12 2C17.523 2 22 6.477 22 12V17.002Z"
                                      fill="#021226"/>
                            </svg>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </header>
    </c:when>
    <c:when test="${type eq 'text-center'}">
        <header class="header-wrap" id="header">
            <div class="row m-0">
                <div class="col-auto p-0">
                    <div class="p-24 text-left cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-back.svg" alt="">
                    </div>
                </div>
                <div class="col p-0 text-center">
                    <div class="p-24 bold-h5">
                        <%=title%>
                    </div>
                </div>
                <div class="col-auto p-0">
                    <div class="p-24 bold-h5  text-right">
                        <c:choose>
                            <c:when test="${icon eq 'charge'}">
                                <sapn class="c-brand-blue" data-href="/user/mypage/point/charge" class="cursor-pointer">
                                    충전
                                </sapn>
                            </c:when>
                            <c:when test="${icon eq 'setting'}">
                                <img src="/resources/assets/images/icon/icon-setting-black.svg" class="cursor-pointer"
                                     alt="">
                            </c:when>
                            <c:when test="${icon eq 'declaration'}">
                                <img id="bottom-tab-declaration-trigger" class="cursor-pointer"
                                     src="/resources/assets/images/icon/icon-declaration.svg" alt="">
                            </c:when>
                            <c:when test="${icon eq 'trash'}">
                                <img src="/resources/assets/images/icon/icon-trash.svg" class="cursor-pointer" alt="">
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </header>
    </c:when>
    <c:when test="${type eq 'auth'}">
        <header class="header-wrap" id="header">
            <div class="col-12 d-flex p-0">
                <div class="mr-auto p-24 cursor-pointer">
                    <img src="/resources/assets/images/img/img-logo-black.svg" alt="">
                </div>
            </div>
        </header>
    </c:when>
    <c:when test="${type eq 'location'}">
        <header class="header-wrap" id="header">
            <div class="col-12 d-flex justify-content-start p-0">
                <div class="pt-24 pl-24 pr-8 cursor-pointer">
                    <img src="/resources/assets/images/icon/icon-back.svg" alt="">
                </div>
                <div class="pt-24 bold-h5">
                    <%=title%>
                </div>
            </div>
        </header>
    </c:when>
</c:choose>

