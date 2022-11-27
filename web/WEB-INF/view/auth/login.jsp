<%@ page import="com.model.UserType" %><%--
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
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">
        <div class="row">
            <div class="col-12 m-0 ml-auto text-center">
                <img class="pt-88" src="/resources/assets/images/img/img-login-title.svg" alt="">
            </div>
        </div>

        <div class="row">
            <div class="col-12 m-0 ml-auto text-center">
                <img class="pt-88" src="/resources/assets/images/img/img-login-image.svg" alt="">
            </div>
        </div>
    </div>
    <div class="floating-bottom bottom-nav-animation" id="footer">
        <div class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-kakao" id="kakao">
                    <img class="mr-12 ml-auto my-auto" src="/resources/assets/images/icon/btn-kakao.png"/>
                    <span class="bold-h5 c-gray-dark-low my-auto mr-auto">카카오로 5초 만에 회원가입</span>
                </button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="/resources/js/module/api/kakao/kakao-login.js"></script>
<script>
    $(document).ready(function () {
        console.log('Static JS is ready');
        if (${status ne null}) {
            console.log('status not null');
            if (${status eq true}) {
                viewModal({
                    vCenter: true,
                    btnCount: 1,
                    wCenter: true,
                    title: '로그인',
                    desc: '로그인에 성공하였습니다.',
                    confirm_text: '홈으로 이동',
                    onConfirm: function () {
                        if (${is_register eq false}) {
                            location.href = '/user/onboard/first';
                        } else {
                            if (${user_type eq UserType.EMPLOYEE}) {
                                location.href = '/user/home';
                            } else if (${user_type eq UserType.SUPPLIER}) {
                                location.href = '/supplier/home';
                            } else {
                                viewAlert({content: '로그인에 실패하였습니다.'});
                            }
                        }
                    },
                    onHidden: function (e) {
                        if (${is_register eq false}) {
                            location.href = '/user/onboard/first';
                        } else {
                            if (${user_type eq UserType.EMPLOYEE}) {
                                location.href = '/user/home';
                            } else if (${user_type eq UserType.SUPPLIER}) {
                                location.href = '/supplier/home';
                            } else {
                                viewAlert({content: '로그인에 실패하였습니다.'});
                            }
                        }
                    }
                });
            } else {
                console.log('회원 탈퇴하신 회원입니다. 관리자에게 문의하세요.');
            }
        } else {
            console.log('status null');
        }
    });
</script>
</body>
</html>