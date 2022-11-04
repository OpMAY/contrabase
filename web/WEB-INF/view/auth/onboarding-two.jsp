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
        <jsp:param name="type" value="auth" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 100px">
        <div class="row">
            <div class="col-12 pt-16 pl-24 pr-24 ml-auto text-center">
                <div class="d-table-row">
                    <progress id="progress" value="25" min="0" max="100" style="width: 327px;"/>
                    </progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">1/4</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    주로 근무하는<br/>지역이 어디신가요?
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-40 pl-24 pr-24 medium-h5 c-basic-black">
                서울
            </div>
        </div>

        <div class="row">
            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    전체
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    동부
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    서부
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    남부
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    북부
                </span>
                </button>
            </div>
        </div>


        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                경기
            </div>
        </div>

        <div class="row">
            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    전체
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    동부
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    서부
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    남부
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    북부
                </span>
                </button>
            </div>
        </div>


        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                지역
            </div>
        </div>

        <div class="row">
            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    인천
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    부산
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    대구
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    대전
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    울산
                </span>
                </button>
            </div>

            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    세종
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    경북
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    경남
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    전북
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    전남
                </span>
                </button>
            </div>

            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    광주
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    충북
                </span>
                </button>
            </div>

            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    충남
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    제주
                </span>
                </button>
            </div>
            <div class="pt-16 pl-8">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    전체
                </span>
                </button>
            </div>

        </div>

    </div>
    <div class="floating-bottom bottom-nav-animation" id="footer">
        <div class="row m-0">
            <div class="col-12 p-24 d-flex">
                <div class="bd-highlight">
                    <button type="button" class="btn btn-block btn-previous">
                <span class="bold-h5 c-basic-black my-auto mr-auto">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.6667 13.3334L5.33341 8.00004L10.6667 2.66671" stroke="#021226" stroke-width="2"
                              stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    이전
                </span>
                    </button>
                </div>
                <div class="ml-auto bd-highlight">
                    <button type="button" class="btn btn-block btn-next">
                <span class="bold-h5 c-basic-white my-auto mr-auto">
                    다음
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.33325 2.66663L10.6666 7.99996L5.33325 13.3333" stroke="white" stroke-width="2"
                              stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="../../../resources/js/app.js"></script>

</body>
</html>