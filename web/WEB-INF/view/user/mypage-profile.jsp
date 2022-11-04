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
        <jsp:param name="title" value="마이페이지" />
        <jsp:param name="type" value="text-center" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">
        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-8 bold-h5">
                기본 정보
            </div>
            <div class="col-12 p-24 bold-h5 ">
                <div class="profile-image" style="background-image: url('../../../resources/assets/images/img/img-sample.svg')">
                    <img class="profile-edit" src="../../resources/assets/images/icon/icon-edit.svg">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-100 regular-h6">
                <div class="d-flex pt-16">
                    <div class="">이름</div>
                    <div class="ml-auto bd-highlight">유병준</div>
                </div>
            </div>

            <div class="col-12 pl-24 pr-24 pt-24 regular-h6">
                <div class="d-flex">
                    <div class="">이메일</div>
                    <div class="ml-auto bd-highlight">asszxc@naver.com</div>
                </div>
            </div>
            <div class="col-12 pl-24 pr-24 pt-24 regular-h6">
                <div class="d-flex">
                    <div class="">연락처</div>
                    <div class="ml-auto bd-highlight">010-9431-1977</div>
                </div>
            </div>
            <div class="col-12 pl-24 pr-24 pt-24 pb-24 regular-h6">
                <div class="d-flex">
                    <div class="">차량번호</div>
                    <div class="ml-auto bd-highlight">12나 2333</div>
                </div>
            </div>
        </div>

        <div class="row border-line-light">

        </div>

        <div class="row border-line-bold">

        </div>

        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-24 bold-h5">
                자격증 및 운전 면허증
            </div>

            <div class="col-12 p-24">
                <div class="bg-point pt-48 pb-48">
                    <div class="text-center">
                        <img src="../../resources/assets/images/icon/icon-plus-gray.svg" alt="">
                    </div>
                    <div class="text-center regular-h6 c-gray-light">
                        자격증 및 운전면허증 추가
                    </div>
                </div>
            </div>
        </div>

        <div class="row border-line-light">

        </div>

        <div class="row border-line-bold">

        </div>

        <div class="row">

            <div class="col-12 pl-24 pr-24 pt-24 bold-h5">
                회원 정보 수정
            </div>

            <div class="col-12 pr-24 pl-24 pt-16 pb-16">
                <div class="d-flex">
                    <div class="regular-h6" style="padding-top: 2px">기본 정보 변경</div>
                    <div class="ml-auto">
                        <img src="../../resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-12 pr-24 pl-24 pt-16 pb-16">
                <div class="d-flex">
                    <div class="regular-h6" style="padding-top: 2px">차량 번호 변경</div>
                    <div class="ml-auto">
                        <img src="../../resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-12 pr-24 pl-24 pt-16 pb-16">
                <div class="d-flex">
                    <div class="regular-h6" style="padding-top: 2px">로그아웃</div>
                    <div class="ml-auto">
                        <img src="../../resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-12 pr-24 pl-24 pt-16 pb-16">
                <div class="d-flex">
                    <div class="regular-h6 c-brand-blue" style="padding-top: 2px">회원탈퇴</div>
                    <div class="ml-auto">
                        <img src="../../resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="../../../resources/js/app.js"></script>

</body>
</html>