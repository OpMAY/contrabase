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
        <jsp:param name="title" value="알자리 현황"/>
        <jsp:param name="type" value="text-left"/>
        <jsp:param name="icon" value="trash"/>
    </jsp:include>

    <!--content-->
    <div class="container general-container">
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
                                           data-type="WORK_APPLY"
                                           aria-controls="nav-work-supply-details" aria-selected="true">운행 신청</a>
                                        <a class="nav-item nav-link" id="nav-work-completed-details-tab"
                                           data-toggle="tab" href="#nav-work-completed-details" role="tab"
                                           data-type="WORK_COMPLETE"
                                           aria-controls="nav-work-completed-details" aria-selected="false">운행 완료</a>
                                        <a class="nav-item nav-link" id="nav-work-cancel-details-tab"
                                           data-toggle="tab" href="#nav-work-cancel-details" role="tab"
                                           data-type="WORK_CANCEL"
                                           aria-controls="nav-work-cancel-details" aria-selected="false">배차 취소</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-workContent">
                                    <div class="tab-pane fade show active" id="nav-work-supply-details" role="tabpanel"
                                         aria-labelledby="nav-work-supply-details-tab">

                                    </div>
                                    <div class="tab-pane fade" id="nav-work-completed-details" role="tabpanel"
                                         aria-labelledby="nav-alarm-work-completed-tab">
                                    </div>
                                    <div class="tab-pane fade" id="nav-work-cancel-details" role="tabpanel"
                                         aria-labelledby="nav-work-cancel-details-tab">
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
        <jsp:param name="type" value="work"/>
    </jsp:include>
</div>
<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="/resources/js/module/work.js"></script>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        apiGetWorks('user', 'WORK_APPLY').then((result) => {
            if (result.status === 'OK') {
                let content = document.querySelector('#nav-work-supply-details');
                result.data.works.forEach(function (work) {
                    content.append(createWorkElement(work));
                });
            } else {
                viewAlert({content: '일자리 현황을 가져올 수 없습니다. 다시 시도해주세요.'});
            }
        });
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (event) {
            event.target // newly activated tab
            event.relatedTarget // previous active tab
            let type = event.target.dataset.type;
            let newly_content = document.querySelector('#' + event.target.getAttribute('aria-controls'));
            let previous_content = document.querySelector('#' + event.relatedTarget.getAttribute('aria-controls'));
            deleteChild(previous_content);
            deleteChild(newly_content);

            apiGetWorks('user', type).then((result) => {
                if (result.status === 'OK') {
                    result.data.works.forEach(function (work) {
                        newly_content.append(createWorkElement(work));
                    });
                } else {
                    viewAlert({content: '일자리 현황을 가져올 수 없습니다. 다시 시도해주세요.'});
                }
            });
        });
    });
</script>
</body>
</html>