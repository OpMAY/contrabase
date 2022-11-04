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
    <div class="container" style="padding-top: 72px; padding-bottom: 100px">
        <div class="row">
            <div class="col-12 pt-16 pl-24 pr-24 ml-auto text-center">
                <div class="d-table-row">
                    <progress id="progress" value=0 min="0" max="100" style="width: 327px;"/>
                    </progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">0/3</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    일자리 정보를<br/>
                    입력해주시겠어요?
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-40 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">일자리 명</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="일자리 명을 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">운행 종류</label>
                <div class="form-group form-inner-button" disabled>
                    <input id="bottom-tab-car-trigger" type="text" placeholder="운행 종류를 선택해주세요."
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
                <label class="medium-h6 c-gray-dark-low">운행 일</label>
                <div class="form-group form-inner-button start-datepicker-container">
                    <input id="start" data-provide="datepicker" type="text" placeholder="운행 일자를 선택해주세요."
                           class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M13.75 2.875H11.125V1.875C11.125 1.80625 11.0688 1.75 11 1.75H10.125C10.0562 1.75 10 1.80625 10 1.875V2.875H6V1.875C6 1.80625 5.94375 1.75 5.875 1.75H5C4.93125 1.75 4.875 1.80625 4.875 1.875V2.875H2.25C1.97344 2.875 1.75 3.09844 1.75 3.375V13.75C1.75 14.0266 1.97344 14.25 2.25 14.25H13.75C14.0266 14.25 14.25 14.0266 14.25 13.75V3.375C14.25 3.09844 14.0266 2.875 13.75 2.875ZM13.125 13.125H2.875V7.1875H13.125V13.125ZM2.875 6.125V4H4.875V4.75C4.875 4.81875 4.93125 4.875 5 4.875H5.875C5.94375 4.875 6 4.81875 6 4.75V4H10V4.75C10 4.81875 10.0562 4.875 10.125 4.875H11C11.0688 4.875 11.125 4.81875 11.125 4.75V4H13.125V6.125H2.875Z"
                              fill="#D5D8E1"/>
                    </svg>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">차량 수</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="차량 수를 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-12 pt-32 pl-24 pr-16 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">주소지</label>
            </div>

            <div class="col-6 pl-24 pr-8 medium-h5 c-basic-black">
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="출발지" class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M13.75 2.875H11.125V1.875C11.125 1.80625 11.0688 1.75 11 1.75H10.125C10.0562 1.75 10 1.80625 10 1.875V2.875H6V1.875C6 1.80625 5.94375 1.75 5.875 1.75H5C4.93125 1.75 4.875 1.80625 4.875 1.875V2.875H2.25C1.97344 2.875 1.75 3.09844 1.75 3.375V13.75C1.75 14.0266 1.97344 14.25 2.25 14.25H13.75C14.0266 14.25 14.25 14.0266 14.25 13.75V3.375C14.25 3.09844 14.0266 2.875 13.75 2.875ZM13.125 13.125H2.875V7.1875H13.125V13.125ZM2.875 6.125V4H4.875V4.75C4.875 4.81875 4.93125 4.875 5 4.875H5.875C5.94375 4.875 6 4.81875 6 4.75V4H10V4.75C10 4.81875 10.0562 4.875 10.125 4.875H11C11.0688 4.875 11.125 4.81875 11.125 4.75V4H13.125V6.125H2.875Z"
                              fill="#D5D8E1"/>
                    </svg>
                </div>
            </div>

            <div class="col-6 pl-8 pr-24 medium-h5 c-basic-black align-bottom">
                <div class="form-group form-inner-button ">
                    <input type="text" placeholder="도착지" class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M13.75 2.875H11.125V1.875C11.125 1.80625 11.0688 1.75 11 1.75H10.125C10.0562 1.75 10 1.80625 10 1.875V2.875H6V1.875C6 1.80625 5.94375 1.75 5.875 1.75H5C4.93125 1.75 4.875 1.80625 4.875 1.875V2.875H2.25C1.97344 2.875 1.75 3.09844 1.75 3.375V13.75C1.75 14.0266 1.97344 14.25 2.25 14.25H13.75C14.0266 14.25 14.25 14.0266 14.25 13.75V3.375C14.25 3.09844 14.0266 2.875 13.75 2.875ZM13.125 13.125H2.875V7.1875H13.125V13.125ZM2.875 6.125V4H4.875V4.75C4.875 4.81875 4.93125 4.875 5 4.875H5.875C5.94375 4.875 6 4.81875 6 4.75V4H10V4.75C10 4.81875 10.0562 4.875 10.125 4.875H11C11.0688 4.875 11.125 4.81875 11.125 4.75V4H13.125V6.125H2.875Z"
                              fill="#D5D8E1"/>
                    </svg>
                </div>
            </div>
        </div>


        <div id="overlay">

        </div>

        <div id="bottom-tab-car" style="max-height: 500px; overflow: scroll">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    운행 종류
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 medium-h5 c-basic-black">
                    공사
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-24 pb-16">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>

                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-0">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>
            </div>


            <div class="row m-0 pt-48">
                <div class="col-12 pl-24 pr-24 medium-h5 c-basic-black">
                    운행
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-24 pb-16">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>

                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-0">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>
            </div>


            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-44">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    운행 설정 완료
                </span>
                    </button>
                </div>
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
<script>
    $(document).ready(function () {
        document.querySelector('#bottom-tab-car-trigger').addEventListener('click', function (event) {
            let bottom_tab = document.querySelector('#bottom-tab-car');
            let overlay = document.querySelector('#overlay');

            if (!bottom_tab.classList.contains('is-active')) {
                bottom_tab.classList.add('is-active');
            } else {
                bottom_tab.classList.remove('is-active');
            }

            if (!overlay.classList.contains('is-active')) {
                overlay.classList.add('is-active');
            } else {
                overlay.classList.remove('is-active');
            }
            event.stopPropagation();
            event.preventDefault();
        });

        document.querySelector('#overlay').addEventListener('click', function (event) {
            let bottom_tab = document.querySelector('#bottom-tab-car');

            let overlay = document.querySelector('#overlay');

            if (bottom_tab.classList.contains('is-active')) {
                bottom_tab.classList.remove('is-active');
            }

            if (overlay.classList.contains('is-active')) {
                overlay.classList.remove('is-active');
            }


            event.stopPropagation();
            event.preventDefault();
        });

        $('#start').datepicker({
            container: '.start-datepicker-container',
            language: 'ko'
        }).on('input', rightTaskDatepickerInputEventListener).on('changeDate', rightTaskStartDatePickerChangeEventListener);
    });
</script>

</body>
</html>