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
            <div class="col-12 pl-24 pr-24 ml-auto text-center">
                <div class="progress-bar-container">
                    <progress id="progress" value="75" min="0" max="100"></progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">3/4</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    근로하기 위한 자격증을<br/>가지고 계신가요?
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-40 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">운전면허증</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="파일을 업로드해주새요." readonly
                           class="form-control input-box medium-h5 cursor-pointer" name="driver-license"
                           data-type="upload">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.33325 2.66675L10.6666 8.00008L5.33325 13.3334" stroke="#D5D8E1" stroke-width="2"
                              stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">운송 허가증 및 자격증</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="파일을 업로드해주새요." readonly
                           class="form-control input-box medium-h5 cursor-pointer" name="transfer-license"
                           data-type="upload">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.33325 2.66675L10.6666 8.00008L5.33325 13.3334" stroke="#D5D8E1" stroke-width="2"
                              stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">차량 번호</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="car_number" placeholder="차량 번호를 입력해주세요."
                           class="form-control input-box medium-h5">
                </div>
            </div>
        </div>
    </div>
    <footer class="floating-bottom bottom-nav-animation" id="footer">
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
    </footer>
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
        console.log(JSON.parse(Storage.get('license'))?.data);
        let prev_data = JSON.parse(Storage.get('license'))?.data;
        let uploads = document.querySelectorAll('[data-type="upload"]');
        uploads.forEach(function (upload) {
            upload.addEventListener('click', fileUploadClickEventListener);
            if (upload.getAttribute('name') === 'driver-license' && prev_data && prev_data.driver.name != null) {
                upload.value = prev_data.driver.name;
                upload.setAttribute('data-name', prev_data.driver.name);
                upload.setAttribute('data-size', prev_data.driver.size);
                upload.setAttribute('data-type', prev_data.driver.type);
            } else if (upload.getAttribute('name') === 'transfer-license' && prev_data && prev_data.transfer.name != null) {
                upload.value = prev_data.transfer.name;
                upload.setAttribute('data-name', prev_data.transfer.name);
                upload.setAttribute('data-size', prev_data.transfer.size);
                upload.setAttribute('data-type', prev_data.transfer.type);
            }
        });

        let car_number = document.querySelector('[name="car_number"]');
        car_number.value = prev_data !== undefined && prev_data !== null ? prev_data.car_number : '';

        let btn_previous = document.querySelector('.btn-previous');
        btn_previous.addEventListener('click', previousButtonClickEventListener);
        let btn_next = document.querySelector('.btn-next');
        btn_next.addEventListener('click', nextButtonClickEventListener)
    });

    function nextButtonClickEventListener(event) {
        let car_number = document.querySelector('[name="car_number"]').value;
        let input_driver = document.querySelector('[name="driver-license"]');
        let input_transfer = document.querySelector('[name="transfer-license"]');
        let driver = {
            name: input_driver.dataset.name,
            size: input_driver.dataset.size,
            type: input_driver.dataset.type
        }
        let transfer = {
            name: input_transfer.dataset.name,
            size: input_transfer.dataset.size,
            type: input_transfer.dataset.type
        }
        let license = {
            driver,
            transfer,
            car_number
        }
        Storage.set('license', JSON.stringify({data: license, date: new Date().getTime()}));
        location.href = '/user/onboard/fifth';
        event.stopPropagation();
        event.preventDefault();
    }

    function previousButtonClickEventListener(event) {
        location.href = '/user/onboard/third';
        event.stopPropagation();
        event.preventDefault();
    }

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
</script>
</body>
</html>