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
        <jsp:param name="title" value="차량 번호 변경" />
        <jsp:param name="type" value="text-center" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">차량 번호</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="차량 번호를 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>
    </div>

    <div class="floating-bottom bottom-nav-animation" id="footer" style="z-index: 10">
        <div id="bottom-tab-application-trigger" class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    수정 완료
                </span>
                </button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="../../../resources/js/app.js"></script>

</body>
</html>