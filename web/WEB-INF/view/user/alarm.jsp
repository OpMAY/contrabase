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
        <jsp:param name="title" value="알림" />
        <jsp:param name="type" value="text-center" />
        <jsp:param name="icon" value="setting" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">
        <div class="row">
            <div class="col-12 pt-32 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-alarm-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-alarm-work-tab" data-toggle="tab" href="#nav-alarm-service" role="tab" aria-controls="nav-alarm-service" aria-selected="true">일감 관련</a>
                                        <a class="nav-item nav-link" id="nav-alarm-service-tab" data-toggle="tab" href="#nav-alarm-work" role="tab" aria-controls="nav-alarm-work" aria-selected="false">서비스 관련</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-alarmContent">
                                    <div class="tab-pane fade show active" id="nav-alarm-service" role="tabpanel" aria-labelledby="nav-alarm-work-tab">

                                        <div class="d-flex flex-column p-24 ">
                                            <div class="bold-h6 c-brand-blue">
                                                [일자리]
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                유병준님이 작성하신 리뷰의 “리뷰 내용..”에서
                                                다수의 신고가 확인되었습니다.
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                2021.01.12
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>

                                        <div class="d-flex flex-column p-24 ">
                                            <div class="bold-h6 c-brand-blue">
                                                [일자리]
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                유병준님이 작성하신 리뷰의 “리뷰 내용..”에서
                                                다수의 신고가 확인되었습니다.
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                2021.01.12
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>

                                        <div class="d-flex flex-column p-24 ">
                                            <div class="bold-h6 c-brand-blue">
                                                [일자리]
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                유병준님이 작성하신 리뷰의 “리뷰 내용..”에서
                                                다수의 신고가 확인되었습니다.
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                2021.01.12
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-alarm-work" role="tabpanel" aria-labelledby="nav-alarm-service-tab">
                                        <div class="d-flex flex-column p-24 ">
                                            <div class="bold-h6 c-brand-blue">
                                                [일자리]
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                유병준님이 작성하신 리뷰의 “리뷰 내용..”에서
                                                다수의 신고가 확인되었습니다.
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                2021.01.12
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>

                                        <div class="d-flex flex-column p-24 ">
                                            <div class="bold-h6 c-brand-blue">
                                                [일자리]
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                유병준님이 작성하신 리뷰의 “리뷰 내용..”에서
                                                다수의 신고가 확인되었습니다.
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                2021.01.12
                                            </div>
                                        </div>
                                        <div class="border-line-light">

                                        </div>

                                        <div class="d-flex flex-column p-24 ">
                                            <div class="bold-h6 c-brand-blue">
                                                [일자리]
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                유병준님이 작성하신 리뷰의 “리뷰 내용..”에서
                                                다수의 신고가 확인되었습니다.
                                            </div>

                                            <div class="c-basic-black regular-h6 mt-16">
                                                2021.01.12
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
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>


</body>
</html>