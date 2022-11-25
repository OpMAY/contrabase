<%@ page import="com.model.service.Employee" %>
<%@ taglib prefix="custom" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zlzld
  Date: 2022-08-17
  Time: 오전 2:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Employee employee = (Employee) request.getAttribute("employee");
    request.setAttribute("employee", employee);
%>
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
        <jsp:param name="title" value="차량 번호 변경"/>
        <jsp:param name="type" value="text-center"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">차량 번호</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="car_code" value="${employee.car_code}" placeholder="차량 번호를 입력해주세요."
                           class="form-control input-box medium-h5">
                </div>
            </div>
        </div>
    </div>

    <div class="floating-bottom bottom-nav-animation" id="footer" style="z-index: 10">
        <div id="bottom-tab-application-trigger" class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-blue justify-content-center _update">
                    <span class="medium-h5 ml-auto mr-auto">
                        수정 완료
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
        let btn_update = document.querySelector('._update');
        btn_update.addEventListener('click', function (event) {
            let car_code = document.querySelector('[name="car_code"]');
            if (verifyCarCodeSubmit()) {
                profileCarCodeChange('user', car_code.value).then((result) => {
                    console.log('profileCarCodeChange', result);
                    if (result.status === 'OK') {
                        viewAlert({content: '차량 번호를 변경하였습니다.'});
                    } else {
                        viewAlert({content: '차량 번호를 변경할 수 없습니다. 다시 시도해주세요.'});
                    }
                });
            } else {
                return;
            }
            event.stopPropagation();
            event.preventDefault();
        });
    });
</script>
</body>
</html>