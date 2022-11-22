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
        <jsp:param name="title" value="일자리 정보"/>
        <jsp:param name="type" value="text-center"/>
        <jsp:param name="icon" value="declaration"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">
        <div class="row ">
            <div class="col-12 pl-24 pr-24 pt-8">
                <div class="d-flex justify-content-between">
                    <div class="bold-h3">
                        운송 운반 잠실 운동장
                    </div>
                    <%--Active -> _like is-active --%>
                    <%--InActive -> _like --%>
                    <svg class="cursor-pointer _like is-active my-auto" width="24" height="24" viewBox="0 0 24 24" fill="none"
                         xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                              fill="#D5D8E1"/>
                    </svg>
                </div>
            </div>
            <div class="col-12 pt-1 regular-h6 pl-24 pr-24">
                덤프트럭 2대
            </div>
            <div class="col-12 bold-h3 p-24 border-underline-bold">
                150,000<span class="regular-h6">원</span>
                <div class="pt-8 d-flex justify-content-start">
                    <div>
                        <button type="button" class="btn btn-block btn-box opacity">
                                <span class="medium-h6 c-brand-blue my-auto ">
                                    동부123
                                </span>
                        </button>
                    </div>
                    <div class="pl-16">
                        <button type="button" class="btn btn-block btn-box opacity">
                                <span class="medium-h6 c-brand-blue my-auto ">
                                    동부
                                </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-12 p-0">
                <div class="border-line-bold">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav class="position-sticky"
                                     style="top: 72px; left: 0; width: 100%; z-index: 1; background-color: var(--basic-white);">
                                    <div class="nav nav-tabs nav-fill" id="nav-detail-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-alarm-work-details-tab"
                                           data-toggle="tab" href="#nav-alarm-work-details" role="tab"
                                           aria-controls="nav-alarm-work-details" aria-selected="true">근무 정보</a>
                                        <a class="nav-item nav-link" id="nav-alarm-location-details-tab"
                                           data-toggle="tab" href="#nav-alarm-location-details" role="tab"
                                           aria-controls="nav-alarm-location-details" aria-selected="false">현장 정보</a>
                                        <a class="nav-item nav-link" id="nav-alarm-caution-details-tab"
                                           data-toggle="tab" href="#nav-alarm--caution-details" role="tab"
                                           aria-controls="nav-alarm-caution-details" aria-selected="false">유의 사항</a>
                                    </div>
                                </nav>
                                <div id="nav-alarmContent">
                                    <div id="nav-alarm-work-details">
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light flex-fill pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                근로 일자
                                            </span>
                                            <sapn class="regular-h6 c-basic-black flex-fill pr-24 pt-24">
                                                9월 21일 (수), 9월 22일 (목)9월 21일 (수), 9월 21일 (수), 9월 22일 (목)9월 21일 (수),
                                                9월 21일 (수), 9월 22일 (목)9월 21일 (수), 9월 21일 (수), 9월 22일 (목)9월 21일 (수),

                                            </sapn>
                                        </div>
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                근로 시간
                                            </span>
                                            <sapn class="regular-h6 c-basic-black pr-24 pt-24">
                                                09:00 ~ 18:00
                                            </sapn>
                                        </div>
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                근로 조건
                                            </span>
                                            <sapn class="regular-h6 c-basic-black flex-fill pr-24 pt-24">
                                                없음
                                            </sapn>
                                        </div>
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                실 지급액
                                            </span>
                                            <sapn class="regular-h6 c-basic-black pr-24 pt-24">
                                                150,000원
                                            </sapn>
                                        </div>
                                    </div>
                                    <div id="nav-alarm-location-details">
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                근로 내용
                                            </span>
                                            <sapn class="regular-h6 c-basic-black pr-24 pt-24">
                                                하는거 별로 없이 오셔서 꿀빠시면 됩니다.
                                                점심도 주니까 그냥 먹고 가세요 :)
                                            </sapn>
                                        </div>
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                근로 장소
                                            </span>
                                            <sapn class="regular-h6 c-basic-black pr-24 pt-24">
                                                창원시 마산합 영통구 신동구
                                            </sapn>
                                            <div class="pt-20 pl-16">
                                                <button id="bottom-tab-kakao-trigger" type="button"
                                                        class="btn btn-block btn-box opacity align-bottom">
                                                    <span class="medium-h6 c-brand-blue my-auto ">
                                                        자세히
                                                    </span>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-12 pl-24 pr-24 pt-16 pb-16">
                                            <div id="map" style="width:100%;height:250px;"></div>
                                        </div>
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                현장 정보
                                            </span>
                                            <sapn class="regular-h6 c-basic-black pr-24 pt-24">
                                                대덕 업체
                                            </sapn>
                                        </div>
                                        <div class="col-12 p-0 d-flex bd-highlight">
                                            <span class="regular-h6 c-gray-dark-light pt-24 pr-24 pl-24"
                                                  style="white-space: nowrap">
                                                담당자 명
                                            </span>
                                            <sapn class="regular-h6 c-basic-black pr-24 pt-24">
                                                유병준 소장
                                            </sapn>
                                        </div>
                                    </div>
                                    <div id="nav-alarm--caution-details">
                                        <div class="col-12 p-24 d-flex bd-highlight ">
                                            <div class="bg-caution p-16 medium-h6 c-basic-black">
                                                <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg"
                                                     xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <rect width="16" height="16" fill="url(#pattern0)"/>
                                                    <defs>
                                                        <pattern id="pattern0" patternContentUnits="objectBoundingBox"
                                                                 width="1" height="1">
                                                            <use xlink:href="#image0_142_2201"
                                                                 transform="scale(0.00195312)"/>
                                                        </pattern>
                                                        <image id="image0_142_2201" width="512" height="512"
                                                               xlink:href="data:image/png;base64,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"/>
                                                    </defs>
                                                </svg>
                                                <span class="pl-8">유의 사항</span>
                                                <div class="regular-h6 pt-16">
                                                    유의 사항 샘플 1유의 사항 샘플 1유의 사항 샘플 1유의 사항 샘플 1유의 사항 샘플 1유의 사항 샘플 1
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <footer class="floating-bottom bottom-nav-animation" id="footer" style="z-index: 10">
            <div id="bottom-tab-application-trigger" class="row m-0">
                <div class="col-12 p-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                        <span class="medium-h5 ml-auto mr-auto">
                            일자리 지원하기
                        </span>
                    </button>
                </div>
            </div>
        </footer>
        <div id="overlay">
        </div>
        <!--work application-->
        <div id="bottom-tab-application">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    일자리 지원
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-16 regular-p1 c-basic-black">
                    일자리 지원은 <span class="c-brand-blue">중복 선택</span>이 가능해요.
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pr-24 pl-24 pt-16">
                    <button type="button" class="btn btn-block btn-box is-active" data-time="오후 18:00 ~ 22:00"
                            data-day="수" data-date="2022.12.21">
                        <span class="regular-h6 my-auto">
                            2022.12.21 (수) 오후 18:00 ~ 22:00
                        </span>
                    </button>
                </div>
                <div class="col-12 pr-24 pl-24 pt-16">
                    <button type="button" class="btn btn-block btn-box" data-time="오후 18:00 ~ 22:00" data-day="목"
                            data-date="2022.12.22">
                        <span class="medium-h6 my-auto">
                            2022.12.22 (목) 오후 18:00 ~ 22:00
                        </span>
                    </button>
                </div>
                <div class="col-12 pr-24 pl-24 pt-16">
                    <button type="button" class="btn btn-block btn-box" data-time="오후 18:00 ~ 22:00" data-day="금"
                            data-date="2022.12.23">
                        <span class="medium-h6 my-auto">
                            2022.12.23 (금) 오후 18:00 ~ 22:00
                        </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                        <span class="medium-h5 ml-auto mr-auto">
                            일자리 지원하기
                        </span>
                    </button>
                </div>
            </div>
        </div>
        <!--work declaration-->
        <div id="bottom-tab-declaration">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    신고하기
                </div>
            </div>

            <div id="declaration-modal" class="row m-0">
                <div class="col-12 pr-24 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active" data-report="공고와 실제 내용이 다릅니다.">
                        <span class="regular-h6 my-auto ">
                            공고와 실제 내용이 다릅니다.
                        </span>
                    </button>
                </div>
                <div class="col-12 pr-24 pl-24 pt-16">
                    <button type="button" class="btn btn-block btn-box" data-report="너무 불친절 합니다.">
                        <span class="medium-h6 my-auto ">
                            너무 불친절 합니다.
                        </span>
                    </button>
                </div>

                <div class="col-12 pr-24 pl-24 pt-16">
                    <button type="button" class="btn btn-block btn-box" data-report="연락이 되질 않습니다.">
                        <span class="medium-h6 my-auto ">
                            연락이 되질 않습니다.
                        </span>
                    </button>
                </div>

                <div class="col-12 pr-24 pl-24 pt-16">
                    <button type="button" class="btn btn-block btn-box" data-report="임금이 지급되지 않았습니다.">
                        <span class="medium-h6 my-auto ">
                            임금이 지급되지 않았습니다.
                        </span>
                    </button>
                </div>

                <div class="col-12 pr-24 pl-24 pt-16 pb-16">
                    <button id="declaration-btn" type="button" class="btn btn-block btn-box">
                        <span class="medium-h6 my-auto ">
                            직접 입력
                        </span>
                    </button>
                </div>
            </div>
            <div id="declaration-modal-myself" class="row m-0 d-none">
                <div class="col-12 pl-24 pr-24 pb-16 regular-p1 c-basic-black">
                    신고 내용을 직접 입력해주세요.
                </div>
                <div class="col-12 pt-16 pl-24 pr-24 pb-16 medium-h5 c-basic-black">
                    <div class="form-group form-inner-button" style="white-space: nowrap">
                        <input type="text" placeholder="신고 내용를 입력해주세요." class="form-control input-box medium-h5">
                    </div>
                </div>
            </div>
            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    신고하기
                </span>
                    </button>
                </div>
            </div>
        </div>
        <!--kakao work info-->
        <div id="bottom-tab-kakao">
            <div class="row p-0">
                <div class="col-12 pl-40 pr-40 pt-24 pt-24">
                    <div class="d-flex flex-column">
                        <div class="d-flex justify-content-between">
                            <div class="bold-h5">
                                운송 운반 | 덤프트럭 2대
                            </div>
                            <div>
                                <img src="../../resources/assets/images/icon/icon-star.svg" alt="">
                            </div>
                        </div>
                        <div class="pt-16 regular-p1">
                            9월 21일 (수), 9월22일 (목)
                        </div>
                        <div class="pt-8 regular-p1">
                            07:00 ~ 18:00
                        </div>
                        <div class="padding-top-4 ">
                        <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                            <img src="../../resources/assets/images/icon/icon-location-arrow.svg" alt="">
                            <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                        </div>
                        <div class="pt-16 regular-p1">
                            <span class="bold-h4">150,000</span>원
                        </div>
                        <div class="pt-16 d-flex justify-content-start">
                            <div>
                                <button type="button" class="btn btn-block btn-box opacity">
                                <span class="medium-h6 c-brand-blue my-auto ">
                                    동부123
                                </span>
                                </button>
                            </div>
                            <div class="pl-16">
                                <button type="button" class="btn btn-block btn-box opacity">
                                <span class="medium-h6 c-brand-blue my-auto ">
                                    동부
                                </span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                        <span class="medium-h5 ml-auto mr-auto">
                            일자리 지원하기
                        </span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="../../../resources/js/details.js"></script>
<script src="../../../resources/js/module/sticky-tab.js"></script>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        new StickyNavigation('nav-alarm-work-details-tab', 'nav-alarm-work-details', $('#nav-alarm-work-details-tab'));
        let reports = document.querySelectorAll('.btn-box[data-report]');
        reports.forEach(function (report) {
            report.addEventListener('click', reportClickEventListener);
        });
        let like = document.querySelector('._like');
        like.addEventListener('click', likeClickEventListener);

        /*<button type="button" class="btn btn-block btn-box" data-time="오후 18:00 ~ 22:00" data-day="목" data-date="2022.12.22">*/
        let supports = document.querySelectorAll('.btn-box[data-time][data-day][data-date]');
        supports.forEach(function (support) {
            support.addEventListener('click', supportClickEventListener);
        });
    });

    function reportClickEventListener(event) {
        let reports = document.querySelectorAll('.btn-box[data-report]');
        reports.forEach(function (report) {
            report.classList.remove('is-active');
        });
        this.classList.add('is-active');
        event.preventDefault();
        event.stopPropagation();
    }

    function likeClickEventListener(event) {
        if (!this.classList.contains('is-active')) {
            /*TODO FETCH*/
            this.classList.add('is-active');
        } else {
            /*TODO FETCH*/
            this.classList.remove('is-active');
        }
        event.preventDefault();
        event.stopPropagation();
    }

    function supportClickEventListener(event) {
        let supports = document.querySelectorAll('.btn-box[data-time][data-day][data-date]');
        supports.forEach(function (support) {
            support.classList.remove('is-active');
        });
        this.classList.add('is-active');
        console.log(this.dataset.time, this.dataset.day, this.dataset.date);
        event.preventDefault();
        event.stopPropagation();
    }
</script>
</body>
</html>