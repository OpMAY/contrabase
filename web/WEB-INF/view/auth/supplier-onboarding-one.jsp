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
                    회사 인증을 위해<br/>정보를 입력해주시겠어요?
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-40 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">사업자 등록증</label>
                <div class="form-group form-inner-button" disabled>
                    <input data-type="upload" name="license" readonly type="text" placeholder="파일을 업로드해주새요."
                           class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.33325 2.66675L10.6666 8.00008L5.33325 13.3334" stroke="#D5D8E1" stroke-width="2"
                              stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">담당자 명</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="manager_name" placeholder="담당자 명을 입력해주세요."
                           class="form-control input-box medium-h5">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">담당자 연락처</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="manager_phone" placeholder="담당자 연락처를 입력해주세요."
                           class="form-control input-box medium-h5">
                </div>
            </div>
        </div>
    </div>
    <div class="floating-bottom bottom-nav-animation" id="footer">
        <div class="row m-0">
            <div class="col-12 p-24 d-flex">

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
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        let prev_data = JSON.parse(Storage.get('company'))?.data;
        console.log(prev_data);
        let btn_next = document.querySelector('.btn-next');
        btn_next.addEventListener('click', nextButtonClickEventListener);

        let license = document.querySelector('[name="license"]');
        let name = document.querySelector('[name="manager_name"]');
        let phone = document.querySelector('[name="manager_phone"]');
        if (prev_data !== undefined && prev_data.license !== undefined && prev_data.manager !== undefined) {
            license.value = prev_data.license.name;
            license.setAttribute('data-name', prev_data.license.name);
            license.setAttribute('data-size', prev_data.license.size);
            license.setAttribute('data-type', prev_data.license.type);
            name.value = prev_data.manager.name;
            phone.value = prev_data.manager.phone;
        }
        license.addEventListener('click', fileUploadClickEventListener);
    });

    function fileUploadClickEventListener(event) {
        console.log('fileUploadClickEventListener', this, event);
        let btn_file = this;
        let input = document.createElement('input');
        input.type = 'file';
        input.name = this.dataset.name;
        input.addEventListener('change', function (event) {
            console.log('change', event, this);
            let file = this.files[0];
            console.log('file', file);
            /*TODO File Upload*/
            btn_file.value = file.name;
            btn_file.setAttribute('data-name', file.name);
            btn_file.setAttribute('data-size', file.size);
            btn_file.setAttribute('data-type', file.type);
        });
        input.click();
    }

    function nextButtonClickEventListener(event) {
        let license = document.querySelector('[name="license"]');
        let name = document.querySelector('[name="manager_name"]');
        let phone = document.querySelector('[name="manager_phone"]');

        let license_obj = {
            name: license.dataset.name,
            size: license.dataset.size,
            type: license.dataset.type
        }
        let manager = {
            name: name.value,
            phone: phone.value
        }

        let company = {
            manager,
            license: license_obj
        }
        Storage.set('company', JSON.stringify({data: company, date: new Date().getTime()}));
        location.href = '/supplier/onboard/second';
        event.stopPropagation();
        event.preventDefault();
    }
</script>
</body>
</html>