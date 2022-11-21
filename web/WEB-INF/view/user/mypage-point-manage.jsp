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
        <jsp:param name="title" value="내 포인트" />
        <jsp:param name="type" value="text-center" />
        <jsp:param name="icon" value="charge" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">
        <div class="row mt-16">
            <div class="col-12 pt-8 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-point-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-point-used-details-tab"
                                           data-toggle="tab" href="#nav-point-used-details" role="tab"
                                           aria-controls="nav-point-used-details" aria-selected="true">사용</a>
                                        <a class="nav-item nav-link" id="nav-point-return-details-tab"
                                           data-toggle="tab" href="#nav-point-return-details" role="tab"
                                           aria-controls="nav-point-return-details" aria-selected="false">반환</a>
                                        <a class="nav-item nav-link" id="nav-point-charge-details-tab"
                                           data-toggle="tab" href="#nav-point-charge-details" role="tab"
                                           aria-controls="nav-point-charge-details" aria-selected="false">충전</a>
                                        <a class="nav-item nav-link" id="nav-point-refund-details-tab"
                                           data-toggle="tab" href="#nav-point-refund-details" role="tab"
                                           aria-controls="nav-point-refund-details" aria-selected="false">환불</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-workContent">
                                    <div class="tab-pane fade show active" id="nav-point-used-details" role="tabpanel"
                                         aria-labelledby="nav-point-used-details-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-red">
                                                        -300P
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
                                    </div>


                                    <div class="tab-pane fade" id="nav-point-return-details" role="tabpanel"
                                         aria-labelledby="nav-point-return-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="bold-h5">
                                                        운송 운반 | 덤프트럭 2대
                                                    </div>
                                                    <div class="bold-h5 c-brand-blue">
                                                        +300P
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
                                    </div>

                                    <div class="tab-pane fade" id="nav-point-charge-details" role="tabpanel"
                                         aria-labelledby="nav-point-charge-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="medium-h6 c-basic-black">
                                                        <span class="bold-h6 c-brand-blue">+10,000P</span> 충전
                                                    </div>
                                                    <div class="medium-h6 c-basic-black">
                                                        2022.12.22(목)
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="medium-h6 c-basic-black">
                                                        <span class="bold-h6 c-brand-blue">+10,000P</span> 충전
                                                    </div>
                                                    <div class="medium-h6 c-basic-black">
                                                        2022.12.22(목)
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="nav-point-refund-details" role="tabpanel"
                                         aria-labelledby="nav-point-refund-details-tab">
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="medium-h6 c-basic-black">
                                                        <span class="bold-h6 c-brand-red">-10,000P</span> 환불
                                                    </div>
                                                    <div class="medium-h6 c-basic-black">
                                                        2022.12.22(목)
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>
                                        <div class="col-12 p-24">
                                            <div class="d-flex flex-column">
                                                <div class="d-flex justify-content-between">
                                                    <div class="medium-h6 c-basic-black">
                                                        <span class="bold-h6 c-brand-red">-10,000P</span> 환불
                                                    </div>
                                                    <div class="medium-h6 c-basic-black">
                                                        2022.12.22(목)
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
        <div id="bottom-tab-application-trigger" class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    포인트 환불
                </span>
                </button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>


</body>
</html>