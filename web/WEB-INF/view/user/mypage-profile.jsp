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
    <link rel="stylesheet"
          href="/resources/css/plugin/dropify.css">
    <title>Hello, world!</title>
</head>
<body>
<div class="content-container">

    <!--header-->
    <jsp:include page="../../view/common/header.jsp" flush="false">
        <jsp:param name="title" value="마이페이지"/>
        <jsp:param name="type" value="text-center"/>
    </jsp:include>

    <!--content-->
    <div class="container general-container">
        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-8 bold-h5">
                기본 정보
            </div>
            <div class="col-12 p-24 bold-h5 ">
                <div class="profile-image"
                     style="background-image: url('${employee.user.profile_img.url}')">
                    <img class="profile-edit" src="/resources/assets/images/icon/icon-edit.svg">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pl-24 pr-24 regular-h6">
                <div class="d-flex pt-16">
                    <div class="">이름</div>
                    <div class="ml-auto bd-highlight">${employee.user.name}</div>
                </div>
            </div>

            <div class="col-12 pl-24 pr-24 pt-24 regular-h6">
                <div class="d-flex">
                    <div class="">이메일</div>
                    <div class="ml-auto bd-highlight">${employee.user.email}</div>
                </div>
            </div>
            <div class="col-12 pl-24 pr-24 pt-24 regular-h6">
                <div class="d-flex">
                    <div class="">연락처</div>
                    <div class="ml-auto bd-highlight">${employee.user.phone}</div>
                </div>
            </div>
            <div class="col-12 pl-24 pr-24 pt-24 pb-24 regular-h6">
                <div class="d-flex">
                    <div class="">차량번호</div>
                    <div class="ml-auto bd-highlight">${employee.car_code}</div>
                </div>
            </div>
        </div>
        <div class="row border-line-light"></div>
        <div class="row border-line-bold"></div>
        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-24 bold-h5">
                자격증
            </div>
            <div class="col-12 p-24 license add cursor-pointer">
                <input type="file" class="dropify" data-show-remove="false" data-height="150" data-type="transfer"
                       data-max-file-size="100M"
                       data-default-file="${employee.transport_license.url}"
                       data-allowed-file-extensions="pdf png psd jpg svg jpeg jfif gif"/>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-24 bold-h5">
                운전면허증
            </div>
            <div class="col-12 p-24 license add cursor-pointer">
                <input type="file" class="dropify" data-show-remove="false" data-height="150" data-type="driver"
                       data-max-file-size="100M"
                       data-default-file="${employee.driver_license.url}"
                       data-allowed-file-extensions="pdf png psd jpg svg jpeg jfif gif"/>
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

            <div class="col-12 pr-24 pl-24 pt-16 pb-16 cursor-pointer" data-href="/user/mypage/profile/edit">
                <div class="d-flex">
                    <div class="regular-h6" style="padding-top: 2px">기본 정보 변경</div>
                    <div class="ml-auto">
                        <img src="/resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-12 pr-24 pl-24 pt-16 pb-16 cursor-pointer" data-href="/user/mypage/car/edit">
                <div class="d-flex">
                    <div class="regular-h6" style="padding-top: 2px">차량 번호 변경</div>
                    <div class="ml-auto">
                        <img src="/resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-12 pr-24 pl-24 pt-16 pb-16 cursor-pointer _logout">
                <div class="d-flex">
                    <div class="regular-h6" style="padding-top: 2px">로그아웃</div>
                    <div class="ml-auto">
                        <img src="/resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-12 pr-24 pl-24 pt-16 pb-16 cursor-pointer" data-href="/user/mypage/unregister">
                <div class="d-flex">
                    <div class="regular-h6 c-brand-blue" style="padding-top: 2px">회원탈퇴</div>
                    <div class="ml-auto">
                        <img src="/resources/assets/images/icon/icon-angle-right.svg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="/resources/js/plugin/dropify.js"></script>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        let btn_profile_edit = document.querySelector('.profile-edit');
        btn_profile_edit.addEventListener('click', profileUploadClickEventListener);
        $('.dropify').dropify({
            messages: {
                'default': '자격증 및 운전면허증 추가',
                'replace': '자격증 및 운전면허증 변경',
                'remove': '제거',
                'error': '파일의 형식이 올바르지 않습니다.'
            }
        });
        let btn_license_edits = document.querySelectorAll('.dropify');
        btn_license_edits.forEach(function (btn_license_edit) {
            btn_license_edit.addEventListener('change', licenseInputChangeEventListener);
        });
    });

    function profileUploadClickEventListener(event) {
        console.log('profileUploadClickEventListener', this, event);
        let input = document.createElement('input');
        input.type = 'file';
        input.addEventListener('change', profileInputChangeEventListener)
        input.click();
        event.preventDefault();
        event.stopPropagation();
    }

    function profileInputChangeEventListener(event) {
        console.log('profileInputChangeEventListener', this, event);
        let file = this.files[0];
        console.log(file);
        apiChangeUserProfile('user', file).then((result) => {
            console.log('changeUserProfile', result);
            if (result.status === 'OK') {
                let preview = document.querySelector('.profile-image');
                const reader = new FileReader();
                reader.onload = (e) => {
                    preview.style.backgroundImage = "url('" + result.data.profile.url + "')";
                    viewAlert({content: '프로필을 업데이트 하였습니다.'});
                };
                reader.readAsDataURL(file);
            } else {
                viewAlert({content: '프로필을 업데이트할 수 없습니다. 다시 시도해주세요.'});
            }
        });
        event.preventDefault();
        event.stopPropagation();
    }

    function licenseInputChangeEventListener(event) {
        console.log('licenseInputChangeEventListener', this, event);
        let file = this.files[0];
        let type = this.dataset.type;
        console.log(file);
        apiChangeUserLicense('user', type, file).then((result) => {
            console.log('apiChangeUserLicense', result);
            if (result.status === 'OK') {
                if (type === 'transfer') {
                    viewAlert({content: '자격증을 업데이트 하였습니다.'});
                } else {
                    viewAlert({content: '운전면허증을 업데이트 하였습니다.'});
                }
            } else {
                if (type === 'transfer') {
                    viewAlert({content: '자격증을 업데이트 할 수 없습니다. 다시 시도해주세요.'});
                } else {
                    viewAlert({content: '운전면허증을 업데이트 할 수 없습니다. 다시 시도해주세요.'});
                }
            }
        });
        event.preventDefault();
        event.stopPropagation();
    }
</script>
</body>
</html>