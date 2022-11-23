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
        <jsp:param name="title" value="일자리 등록"/>
        <jsp:param name="type" value="text-center"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">
        <div class="row">
            <div class="col-12 pt-16 pl-24 pr-24 ml-auto text-center">
                <div class="d-table-row">
                    <progress id="progress" value=66 min="0" max="100" style="width: 327px;"/>
                    </progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">2/3</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    현장 정보를<br/>
                    입력해주시겠어요?
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-16 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">운행 시간</label>
            </div>

            <div class="col-6 pl-24 pr-8 medium-h5 c-basic-black">
                <div class="form-group form-inner-button">
                    <input type="number" placeholder="시작 시간" name="start" class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.99967 1.33301C4.32367 1.33301 1.33301 4.32367 1.33301 7.99967C1.33301 11.6757 4.32367 14.6663 7.99967 14.6663C11.6757 14.6663 14.6663 11.6757 14.6663 7.99967C14.6663 4.32367 11.6757 1.33301 7.99967 1.33301ZM7.99967 13.333C5.05901 13.333 2.66634 10.9403 2.66634 7.99967C2.66634 5.05901 5.05901 2.66634 7.99967 2.66634C10.9403 2.66634 13.333 5.05901 13.333 7.99967C13.333 10.9403 10.9403 13.333 7.99967 13.333Z"
                              fill="#D5D8E1"/>
                        <path d="M8.66634 4.66699H7.33301V8.66699H11.333V7.33366H8.66634V4.66699Z" fill="#D5D8E1"/>
                    </svg>
                </div>
            </div>

            <div class="col-6 pl-8 pr-24 medium-h5 c-basic-black align-bottom">
                <div class="form-group form-inner-button ">
                    <input type="number" placeholder="마감 시간" name="end" class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.99967 1.33301C4.32367 1.33301 1.33301 4.32367 1.33301 7.99967C1.33301 11.6757 4.32367 14.6663 7.99967 14.6663C11.6757 14.6663 14.6663 11.6757 14.6663 7.99967C14.6663 4.32367 11.6757 1.33301 7.99967 1.33301ZM7.99967 13.333C5.05901 13.333 2.66634 10.9403 2.66634 7.99967C2.66634 5.05901 5.05901 2.66634 7.99967 2.66634C10.9403 2.66634 13.333 5.05901 13.333 7.99967C13.333 10.9403 10.9403 13.333 7.99967 13.333Z"
                              fill="#D5D8E1"/>
                        <path d="M8.66634 4.66699H7.33301V8.66699H11.333V7.33366H8.66634V4.66699Z" fill="#D5D8E1"/>
                    </svg>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">운행 조건</label>
            </div>
            <div class=" pl-24">
                <button type="button" class="btn btn-block btn-box is-active" data-condition="자격증 필요">
                <span class="medium-h6 my-auto">
                    자격증 필요
                </span>
                </button>
            </div>

            <div class=" pl-16">
                <button type="button" class="btn btn-block btn-box" data-condition="상관 없음">
                <span class="medium-h6 my-auto">
                    상관 없음
                </span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">모집</label>
            </div>
            <div class=" pl-24">
                <button type="button" class="btn btn-block btn-box is-active" data-recruit="일반 모집">
                <span class="medium-h6 my-auto">
                    일반 모집
                </span>
                </button>
            </div>

            <div class=" pl-16">
                <button type="button" class="btn btn-block btn-box" data-recruit="긴급 모집">
                <span class="medium-h6 my-auto">
                    긴급 모집
                </span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">실 지급액</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="pay" placeholder="실 지급액을 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">상세 내용</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="description" placeholder="상세 내용을 입력해주세요."
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
    let datsa = {
        "start": "1600",
        "end": "2400",
        "condition": "상관 없음",
        "recruit": "일반 모집",
        "pay": "10000",
        "description": "상세내용 테스트"
    }
    $(document).ready(function () {
        console.log('Static JS is ready');
        let prev_data = JSON.parse(Storage.get('third_register'))?.data;
        console.log(prev_data);
        if (prev_data !== undefined) {
            let start = document.querySelector('[name="start"]');
            start.value = prev_data.start;
            let end = document.querySelector('[name="end"]');
            end.value = prev_data.end;
            let conditions = document.querySelectorAll('.btn-box[data-condition]');
            conditions.forEach(function (condition) {
                if (condition.dataset.condition === prev_data.condition) {
                    if (!condition.classList.contains('is-active')) {
                        condition.classList.add('is-active');
                    }
                } else {
                    condition.classList.remove('is-active');
                }
            });
            let recruits = document.querySelectorAll('.btn-box[data-recruit]');
            recruits.forEach(function (recruit) {
                if (recruit.dataset.recruit === prev_data.recruit) {
                    if (!recruit.classList.contains('is-active')) {
                        recruit.classList.add('is-active');
                    }
                } else {
                    recruit.classList.remove('is-active');
                }
            });
            let pay = document.querySelector('[name="pay"]');
            pay.value = prev_data.pay;
            let description = document.querySelector('[name="description"]');
            description.value = prev_data.description;
        }

        let conditions = document.querySelectorAll('[data-condition]');
        conditions.forEach(function (condition) {
            condition.addEventListener('click', conditionClickEventListener);
        });

        let recruits = document.querySelectorAll('[data-recruit]');
        recruits.forEach(function (recruit) {
            recruit.addEventListener('click', recruitClickEventListener);
        });

        let btn_previous = document.querySelector('.btn-previous');
        btn_previous.addEventListener('click', previousButtonClickEventListener);
        let btn_next = document.querySelector('.btn-next');
        btn_next.addEventListener('click', nextButtonClickEventListener);
    });

    function conditionClickEventListener(event) {
        let conditions = document.querySelectorAll('[data-condition]');
        conditions.forEach(function (condition) {
            condition.classList.remove('is-active');
        });
        this.classList.add('is-active');
        event.stopPropagation();
        event.preventDefault();
    }

    function recruitClickEventListener(event) {
        let recruits = document.querySelectorAll('[data-recruit]');
        recruits.forEach(function (recruit) {
            recruit.classList.remove('is-active');
        });
        this.classList.add('is-active');
        event.stopPropagation();
        event.preventDefault();
    }

    function nextButtonClickEventListener(event) {
        let start = document.querySelector('[name="start"]').value;
        let end = document.querySelector('[name="end"]').value;
        let condition = document.querySelector('.btn-box.is-active[data-condition]').dataset.condition;
        let recruit = document.querySelector('.btn-box.is-active[data-recruit]').dataset.recruit;
        let pay = document.querySelector('[name="pay"]').value;
        let description = document.querySelector('[name="description"]').value;
        let third_register = {
            start,
            end,
            condition,
            recruit,
            pay,
            description
        }
        Storage.set('third_register', JSON.stringify({data: third_register, date: new Date().getTime()}));
        location.href = '/supplier/home';
        event.stopPropagation();
        event.preventDefault();
    }

    function previousButtonClickEventListener(event) {
        location.href = '/supplier/work/register/first';
        event.stopPropagation();
        event.preventDefault();
    }
</script>
</body>
</html>