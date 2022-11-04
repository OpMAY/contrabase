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
                    <input type="number" placeholder="시작 시간" class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.99967 1.33301C4.32367 1.33301 1.33301 4.32367 1.33301 7.99967C1.33301 11.6757 4.32367 14.6663 7.99967 14.6663C11.6757 14.6663 14.6663 11.6757 14.6663 7.99967C14.6663 4.32367 11.6757 1.33301 7.99967 1.33301ZM7.99967 13.333C5.05901 13.333 2.66634 10.9403 2.66634 7.99967C2.66634 5.05901 5.05901 2.66634 7.99967 2.66634C10.9403 2.66634 13.333 5.05901 13.333 7.99967C13.333 10.9403 10.9403 13.333 7.99967 13.333Z" fill="#D5D8E1"/>
                        <path d="M8.66634 4.66699H7.33301V8.66699H11.333V7.33366H8.66634V4.66699Z" fill="#D5D8E1"/>
                    </svg>
                </div>
            </div>

            <div class="col-6 pl-8 pr-24 medium-h5 c-basic-black align-bottom">
                <div class="form-group form-inner-button ">
                    <input type="number" placeholder="마감 시간" class="form-control input-box medium-h5">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.99967 1.33301C4.32367 1.33301 1.33301 4.32367 1.33301 7.99967C1.33301 11.6757 4.32367 14.6663 7.99967 14.6663C11.6757 14.6663 14.6663 11.6757 14.6663 7.99967C14.6663 4.32367 11.6757 1.33301 7.99967 1.33301ZM7.99967 13.333C5.05901 13.333 2.66634 10.9403 2.66634 7.99967C2.66634 5.05901 5.05901 2.66634 7.99967 2.66634C10.9403 2.66634 13.333 5.05901 13.333 7.99967C13.333 10.9403 10.9403 13.333 7.99967 13.333Z" fill="#D5D8E1"/>
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
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    자격증 필요
                </span>
                </button>
            </div>

            <div class=" pl-16">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    상관 없음
                </span>
                </button>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">실 지급액</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="실 지급액을 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">상세 내용</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="상세 내용을 입력해주세요." class="form-control input-box medium-h5">
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
<script src="../../../resources/js/app.js"></script>

</body>
</html>