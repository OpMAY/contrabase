<%--
  Created by IntelliJ IDEA.
  User: zlzld
  Date: 2022-08-17
  Time: 오전 2:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>

    <jsp:include page="../../view/common/css.jsp"></jsp:include>
    <title>Hello, world!</title>
</head>
<body>
<div class="content-container">

    <!--header-->
    <jsp:include page="../../view/common/header.jsp" flush="false">
        <jsp:param name="title" value="창원시 마산합 영통구 신동구가 13 510호12" />
        <jsp:param name="type" value="location" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">
        <div class="row border-line-light">

        </div>

        <div class="row">
            <div class="col-12 p-0">
                <div id="map" style="width:100%;height:1000px;"></div>
            </div>
        </div>

        <div id="overlay">

        </div>


        <!--kakao work info-->
        <div id="bottom-tab-kakao" class="is-active">
            <div class="row p-0">
                <div class="col-12 pl-40 pr-40 pt-24 pt-24">
                    <div class="d-flex flex-column">
                        <div class="d-flex justify-content-between">
                            <div class="bold-h5">
                                운송 운반 | 덤프트럭 2대
                            </div>
                            <div>
                                <img src="../../resources/assets/images/icon/icon-star.svg" alt="">
                            </div>
                        </div>
                        <div class="pt-16 regular-p1">
                            9월 21일 (수), 9월22일 (목)
                        </div>
                        <div class="pt-8 regular-p1">
                            07:00 ~ 18:00
                        </div>
                        <div class="padding-top-4 ">
                        <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                            <img src="../../resources/assets/images/icon/icon-location-arrow.svg" alt="">
                            <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                        </div>

                        <div class="pt-16 regular-p1">
                            <span class="bold-h4">150,000</span>원
                        </div>

                        <div class="pt-16 d-flex justify-content-start">
                            <div>
                                <button type="button" class="btn btn-block btn-box opacity">
                                <span class="medium-h6 c-brand-blue my-auto ">
                                    동부123
                                </span>
                                </button>
                            </div>
                            <div class="pl-16">
                                <button type="button" class="btn btn-block btn-box opacity">
                                <span class="medium-h6 c-brand-blue my-auto ">
                                    동부
                                </span>
                                </button>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    일자리 지원하기
                </span>
                    </button>
                </div>
            </div>
        </div>

    </div>
    <div class="main-bottom-nav bottom-nav-animation" id="footer" style="z-index: 2">
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
    </div></div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="../../../resources/js/app.js"></script>

</body>
</html>