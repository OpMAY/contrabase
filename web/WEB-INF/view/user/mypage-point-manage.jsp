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
        <jsp:param name="title" value="내 포인트"/>
        <jsp:param name="type" value="text-center"/>
        <jsp:param name="icon" value="charge"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">
        <div class="row">
            <div class="col-12 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-point-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-point-used-details-tab"
                                           data-toggle="tab" href="#nav-point-used-details" role="tab" data-type="pay"
                                           aria-controls="nav-point-used-details" aria-selected="true">사용</a>
                                        <a class="nav-item nav-link" id="nav-point-return-details-tab"
                                           data-toggle="tab" href="#nav-point-return-details" role="tab"
                                           data-type="repayment"
                                           aria-controls="nav-point-return-details" aria-selected="false">반환</a>
                                        <a class="nav-item nav-link" id="nav-point-charge-details-tab"
                                           data-toggle="tab" href="#nav-point-charge-details" role="tab"
                                           data-type="charge"
                                           aria-controls="nav-point-charge-details" aria-selected="false">충전</a>
                                        <a class="nav-item nav-link" id="nav-point-refund-details-tab"
                                           data-toggle="tab" href="#nav-point-refund-details" role="tab"
                                           data-type="refund"
                                           aria-controls="nav-point-refund-details" aria-selected="false">환불</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-workContent">
                                    <div class="tab-pane fade show active" id="nav-point-used-details" role="tabpanel"
                                         aria-labelledby="nav-point-used-details-tab">
                                        <div class="work-container">
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-point-return-details" role="tabpanel"
                                         aria-labelledby="nav-point-return-tab">
                                        <div class="work-container">
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-point-charge-details" role="tabpanel"
                                         aria-labelledby="nav-point-charge-tab">
                                        <div class="point-container">
                                            <div class="col-12 p-24 point">
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
                                            <div class="col-12 p-24 point">
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
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-point-refund-details" role="tabpanel"
                                         aria-labelledby="nav-point-refund-details-tab">
                                        <div class="point-container">
                                            <div class="col-12 p-24 point">
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
                                            <div class="col-12 p-24 point">
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
    <footer class="floating-bottom bottom-nav-animation" id="footer" style="z-index: 10">
        <div id="bottom-tab-application-trigger" class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    포인트 환불
                </span>
                </button>
            </div>
        </div>
    </footer>
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="/resources/js/module/work.js"></script>
<script src="/resources/js/module/point.js"></script>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        let content = document.querySelector('#nav-point-used-details');
        apiGetPoints('user', 'pay').then((result) => {
            console.log('apiGetPoints', result);
            if (result.status === 'OK') {
                deleteChild(content);
                result.data.points?.forEach(function (point) {
                    content.append(createWorkPointElement(point));
                });
            } else {
                viewAlert({content: '포인트 내역을 불러올 수 없습니다. 다시 시도해주세요.'});
            }
        });
        $('a[data-toggle="tab"]').on('show.bs.tab', function (event) {
            let newly_content = document.querySelector('#' + event.target.getAttribute('aria-controls'));
            let previous_content = document.querySelector('#' + event.relatedTarget.getAttribute('aria-controls'));

            //pay, repayment, charge, refund
            let type = event.target.dataset.type, container, work, point;
            switch (type) {
                case 'pay':
                    container = newly_content.querySelector('.work-container');
                    /*TODO Fetch*/
                    apiGetPoints('user', type).then((result) => {
                        console.log('apiGetPoints', result);
                        if (result.status === 'OK') {
                            deleteChild(container);
                            result.data.points?.forEach(function (point) {
                                container.append(createWorkPointElement(point));
                            });
                        } else {
                            viewAlert({content: '포인트 내역을 불러올 수 없습니다. 다시 시도해주세요.'});
                        }
                    });
                    break;
                case 'repayment':
                    container = newly_content.querySelector('.work-container');
                    deleteChild(container);
                    /*TODO Fetch*/
                    apiGetPoints('user', type).then((result) => {
                        console.log('apiGetPoints', result);
                        if (result.status === 'OK') {
                            deleteChild(container);
                            result.data.points?.forEach(function (point) {
                                container.append(createWorkPointElement(point));
                            });
                        } else {
                            viewAlert({content: '포인트 내역을 불러올 수 없습니다. 다시 시도해주세요.'});
                        }
                    });
                    break;
                case 'charge':
                    container = newly_content.querySelector('.point-container');
                    deleteChild(container);
                    apiGetPoints('user', type).then((result) => {
                        console.log('apiGetPoints', result);
                        if (result.status === 'OK') {
                            deleteChild(container);
                            result.data.points?.forEach(function (point) {
                                container.append(createPointChargeElement(point));
                            });
                        } else {
                            viewAlert({content: '포인트 내역을 불러올 수 없습니다. 다시 시도해주세요.'});
                        }
                    });
                    break;
                case 'refund':
                    container = newly_content.querySelector('.point-container');
                    deleteChild(container);
                    apiGetPoints('user', type).then((result) => {
                        console.log('apiGetPoints', result);
                        if (result.status === 'OK') {
                            deleteChild(container);
                            result.data.points?.forEach(function (point) {
                                container.append(createPointRefundElement(point));
                            });
                        } else {
                            viewAlert({content: '포인트 내역을 불러올 수 없습니다. 다시 시도해주세요.'});
                        }
                    });
                    break;
            }
        });
    });
</script>
</body>
</html>