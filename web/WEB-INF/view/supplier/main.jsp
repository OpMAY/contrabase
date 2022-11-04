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
        <jsp:param name="title" value="일자리 공고 현황" />
        <jsp:param name="type" value="text-left" />
        <jsp:param name="icon" value="alarm" />
    </jsp:include>

    <div class="container" style="padding-top: 72px; padding-bottom: 100px">
        <div class="row">
            <div class="col-12 pt-24 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-work-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-alarm-supply-details-tab"
                                           data-toggle="tab" href="#nav-work-supply-details" role="tab"
                                           aria-controls="nav-work-supply-details" aria-selected="true">모집 중</a>
                                        <a class="nav-item nav-link" id="nav-work-completed-details-tab"
                                           data-toggle="tab" href="#nav-work-completed-details" role="tab"
                                           aria-controls="nav-work-completed-details" aria-selected="false">운행 완료</a>
                                        <a class="nav-item nav-link" id="nav-work-cancel-details-tab"
                                           data-toggle="tab" href="#nav-work-cancel-details" role="tab"
                                           aria-controls="nav-work-cancel-details" aria-selected="false">배차 취소</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-workContent">
                                    <div class="tab-pane fade show active" id="nav-work-supply-details" role="tabpanel"
                                         aria-labelledby="nav-work-supply-details-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-blue">
                                                        1일 남음
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
                                                    <img src="../../resources/assets/images/icon/icon-location-arrow.svg"
                                                         alt="">
                                                    <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                                                </div>

                                                <div class="pt-16 regular-p1">
                                                    <span class="bold-h4">150,000</span>원
                                                </div>
                                            </div>

                                        </div>
                                        <div class="border-line-light">

                                        </div>

                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-blue">
                                                        1일 남음
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
                                                    <img src="../../resources/assets/images/icon/icon-location-arrow.svg"
                                                         alt="">
                                                    <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                                                </div>

                                                <div class="pt-16 regular-p1">
                                                    <span class="bold-h4">150,000</span>원
                                                </div>
                                            </div>

                                        </div>

                                        <div class="col-12 pr-24 pl-24 pb-24">
                                            <div class="bg-point p-16">
                                                <div class="row">
                                                    <div class="col-12 pb-16">
                                                        <img src="../../resources/assets/images/img/img-supplier-sample.svg" alt="">
                                                        <span class="medium-h5 c-basic-black pl-8">
                                                            유병준 기사 | 덤프트럭
                                                        </span>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        신고하기
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>

                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        배차취소
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>
                                                    <div class="col-3 c-brand-blue regular-h6 text-center">
                                                        전화하기
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-12 pr-24 pl-24 pb-24">
                                            <div class="bg-point p-16">
                                                <div class="row">
                                                    <div class="col-12 pb-16">
                                                        <img src="../../resources/assets/images/img/img-supplier-sample.svg" alt="">
                                                        <span class="medium-h5 c-basic-black pl-8">
                                                            유병준 기사 | 덤프트럭
                                                        </span>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        신고하기
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>

                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        배차취소
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>
                                                    <div class="col-3 c-brand-blue regular-h6 text-center">
                                                        전화하기
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="border-line-light">

                                        </div>
                                    </div>


                                    <div class="tab-pane fade" id="nav-work-completed-details" role="tabpanel"
                                         aria-labelledby="nav-alarm-work-completed-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-blue">
                                                        1일 남음
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
                                                    <img src="../../resources/assets/images/icon/icon-location-arrow.svg"
                                                         alt="">
                                                    <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                                                </div>

                                                <div class="pt-16 regular-p1">
                                                    <span class="bold-h4">150,000</span>원
                                                </div>
                                            </div>

                                        </div>
                                        <div class="border-line-light">

                                        </div>

                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-blue">
                                                        1일 남음
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
                                                    <img src="../../resources/assets/images/icon/icon-location-arrow.svg"
                                                         alt="">
                                                    <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                                                </div>

                                                <div class="pt-16 regular-p1">
                                                    <span class="bold-h4">150,000</span>원
                                                </div>
                                            </div>

                                        </div>

                                        <div class="col-12 pr-24 pl-24 pb-24">
                                            <div class="bg-point p-16">
                                                <div class="row">
                                                    <div class="col-12 pb-16">
                                                        <img src="../../resources/assets/images/img/img-supplier-sample.svg" alt="">
                                                        <span class="medium-h5 c-basic-black pl-8">
                                                            유병준 기사 | 덤프트럭
                                                        </span>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        신고하기
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>

                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        배차취소
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>
                                                    <div class="col-3 c-brand-blue regular-h6 text-center">
                                                        전화하기
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-12 pr-24 pl-24 pb-24">
                                            <div class="bg-point p-16">
                                                <div class="row">
                                                    <div class="col-12 pb-16">
                                                        <img src="../../resources/assets/images/img/img-supplier-sample.svg" alt="">
                                                        <span class="medium-h5 c-basic-black pl-8">
                                                            유병준 기사 | 덤프트럭
                                                        </span>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        신고하기
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>

                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        배차취소
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>
                                                    <div class="col-3 c-brand-blue regular-h6 text-center">
                                                        전화하기
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="border-line-light">

                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="nav-work-cancel-details" role="tabpanel"
                                         aria-labelledby="nav-work-cancel-details-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-blue">
                                                        1일 남음
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
                                                    <img src="../../resources/assets/images/icon/icon-location-arrow.svg"
                                                         alt="">
                                                    <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                                                </div>

                                                <div class="pt-16 regular-p1">
                                                    <span class="bold-h4">150,000</span>원
                                                </div>
                                            </div>

                                        </div>
                                        <div class="border-line-light">

                                        </div>

                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-blue">
                                                        1일 남음
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
                                                    <img src="../../resources/assets/images/icon/icon-location-arrow.svg"
                                                         alt="">
                                                    <span class="regular-p1">
                            창원시 마산합 영통구 신동구
                        </span>
                                                </div>

                                                <div class="pt-16 regular-p1">
                                                    <span class="bold-h4">150,000</span>원
                                                </div>
                                            </div>

                                        </div>

                                        <div class="col-12 pr-24 pl-24 pb-24">
                                            <div class="bg-point p-16">
                                                <div class="row">
                                                    <div class="col-12 pb-16">
                                                        <img src="../../resources/assets/images/img/img-supplier-sample.svg" alt="">
                                                        <span class="medium-h5 c-basic-black pl-8">
                                                            유병준 기사 | 덤프트럭
                                                        </span>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        신고하기
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>

                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        배차취소
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>
                                                    <div class="col-3 c-brand-blue regular-h6 text-center">
                                                        전화하기
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-12 pr-24 pl-24 pb-24">
                                            <div class="bg-point p-16">
                                                <div class="row">
                                                    <div class="col-12 pb-16">
                                                        <img src="../../resources/assets/images/img/img-supplier-sample.svg" alt="">
                                                        <span class="medium-h5 c-basic-black pl-8">
                                                            유병준 기사 | 덤프트럭
                                                        </span>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        신고하기
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>

                                                    <div class="col-3 c-basic-black regular-h6 text-center">
                                                        배차취소
                                                    </div>

                                                    <div class="col-1 c-gray-high-light">
                                                        |
                                                    </div>
                                                    <div class="col-3 c-brand-blue regular-h6 text-center">
                                                        전화하기
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="border-line-light">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>



    </div>

    <div class="floating-bottom bottom-nav-animation" id="footer" style="z-index: 10">
        <div class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    운행 기사님 구하기
                </span>
                </button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="../../../resources/js/app.js"></script>

</body>
</html>