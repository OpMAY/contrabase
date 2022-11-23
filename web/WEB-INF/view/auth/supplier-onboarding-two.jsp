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
        <jsp:param name="type" value="auth"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">

        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    회원가입을 축하합니다.<br/>기사님을 구하러 가실까요?
                </div>
            </div>
        </div>
        <div class="row" style="height: calc(100vh - 72px - 40px - 96px - 102px);">
            <div class="col-12 pl-24 pr-24 medium-h5 c-basic-black text-center my-auto">
                <img src="/resources/assets/images/img/img-onboarding-image.svg" alt="">
            </div>
        </div>
    </div>
    <div class="floating-bottom bottom-nav-animation" id="footer">
        <div class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-blue justify-content-center _next">
                <span class="medium-h5 ml-auto mr-auto">
                    내 주변 운행 일자리 구하기
                </span>
                </button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        let next = document.querySelector('._next');
        next.addEventListener('click', nextButtonClickEventListener);
    });

    function nextButtonClickEventListener(event) {
        location.href = '/supplier/home';
        event.stopPropagation();
        event.preventDefault();
    }
</script>
</body>
</html>