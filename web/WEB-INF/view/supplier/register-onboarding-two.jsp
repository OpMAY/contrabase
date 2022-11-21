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
                    <progress id="progress" value=33 min="0" max="100" style="width: 327px;"/>
                    </progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">1/3</div>
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
            <div class="col-12 pt-40 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">회사 명</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="회사 명을 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">담당자 명</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="담당자 명을 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">주차</label>
            </div>
            <div class=" pl-24">
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    주차 가능
                </span>
                </button>
            </div>

            <div class=" pl-16">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    주차 불가능
                </span>
                </button>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">식사</label>
            </div>
            <div class=" pl-24">
                <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    식사 제공
                </span>
                </button>
            </div>

            <div class=" pl-16">
                <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    식사 미제공
                </span>
                </button>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">해쉬태그</label>
                <div class="form-group form-inner-button">
                    <input type="text" placeholder="해쉬 태그를 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
            <div class="pl-24 pt-16">
                <button type="button" class="btn btn-block btn-box hashtag">
                <span class="medium-h6 c-basic-black my-auto ">
                    식사 미제공
                </span>
                    <img class="pl-8" src="../../resources/assets/images/icon/icon-delete-black.svg" alt="" style="padding-top: 2px">
                </button>
            </div>
            <div class="pl-24 pt-16">
                <button type="button" class="btn btn-block btn-box hashtag">
                <span class="medium-h6 c-basic-black my-auto ">
                    식사 미제공
                </span>
                    <img class="pl-8" src="../../resources/assets/images/icon/icon-delete-black.svg" alt="" style="padding-top: 2px">
                </button>
            </div>
            <div class="pl-24 pt-16">
                <button type="button" class="btn btn-block btn-box hashtag">
                <span class="medium-h6 c-basic-black my-auto ">
                    식사 미제공
                </span>
                    <img class="pl-8" src="../../resources/assets/images/icon/icon-delete-black.svg" alt="" style="padding-top: 2px">
                </button>
            </div>
            <div class="pl-24 pt-16">
                <button type="button" class="btn btn-block btn-box hashtag">
                <span class="medium-h6 c-basic-black my-auto ">
                    식사 미제공
                </span>
                    <img class="pl-8" src="../../resources/assets/images/icon/icon-delete-black.svg" alt="" style="padding-top: 2px">
                </button>
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


</body>
</html>