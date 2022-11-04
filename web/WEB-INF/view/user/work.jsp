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
        <jsp:param name="title" value="알자리 현황" />
        <jsp:param name="type" value="text-left" />
        <jsp:param name="icon" value="trash" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">

        <div class="row">
            <div class="col-12 pt-8 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-work-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-alarm-supply-details-tab"
                                           data-toggle="tab" href="#nav-work-supply-details" role="tab"
                                           aria-controls="nav-work-supply-details" aria-selected="true">운행 신청</a>
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
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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


                                    <div class="tab-pane fade" id="nav-work-completed-details" role="tabpanel"
                                         aria-labelledby="nav-alarm-work-completed-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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

                                    <div class="tab-pane fade" id="nav-work-cancel-details" role="tabpanel"
                                         aria-labelledby="nav-work-cancel-details-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div>
                                                        <img src="../../resources/assets/images/icon/icon-star.svg"
                                                             alt="">
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
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <!--footer-->
    <jsp:include page="../../view/common/footer.jsp" flush="false">
        <jsp:param name="type" value="work" />
    </jsp:include>
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="../../../resources/js/app.js"></script>

</body>
</html>