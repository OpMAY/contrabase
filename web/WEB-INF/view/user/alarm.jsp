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
        <jsp:param name="title" value="알림"/>
        <jsp:param name="type" value="text-center"/>
        <jsp:param name="icon" value="setting"/>
    </jsp:include>
    <!--content-->
    <div class="container">
        <div class="row">
            <div class="col-12 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-alarm-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-alarm-work-tab" data-toggle="tab"
                                           data-type="WORK"
                                           href="#nav-alarm-service" role="tab" aria-controls="nav-alarm-service"
                                           aria-selected="true">일감 관련</a>
                                        <a class="nav-item nav-link" id="nav-alarm-service-tab" data-toggle="tab"
                                           data-type="SERVICE"
                                           href="#nav-alarm-work" role="tab" aria-controls="nav-alarm-work"
                                           aria-selected="false">서비스 관련</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-alarmContent">
                                    <div class="tab-pane fade show active" id="nav-alarm-service" role="tabpanel"
                                         aria-labelledby="nav-alarm-work-tab">
                                    </div>
                                    <div class="tab-pane fade" id="nav-alarm-work" role="tabpanel"
                                         aria-labelledby="nav-alarm-service-tab">
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
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        let content = document.querySelector('#nav-alarmContent .tab-pane.active');
        let type = 'work';
        apiGetAlarms('user', type).then((result) => {
            console.log('apiGetAlarms', result);
            if (result.status === 'OK') {
                result.data.alarms.forEach(function (alarm) {
                    content.append(createAlarmElement(alarm));
                });
            } else {
                viewAlert({content: '알림을 가져오지 못했습니다. 다시 시도해주세요.'});
            }
        });
        $('a[data-toggle="tab"]').on('show.bs.tab', function (event) {
            event.target // newly activated tab
            event.relatedTarget // previous active tab
            let newly_content = document.querySelector('#' + event.target.getAttribute('aria-controls'));
            let previous_content = document.querySelector('#' + event.relatedTarget.getAttribute('aria-controls'));
            let type = event.target.dataset.type;
            deleteChild(previous_content);
            deleteChild(newly_content);
            /*TODO Fetch And Display Item*/
            apiGetAlarms('user', type).then((result) => {
                console.log('apiGetAlarms', result);
                if (result.status === 'OK') {
                    result.data.alarms.forEach(function (alarm) {
                        newly_content.append(createAlarmElement(alarm));
                    });
                } else {
                    viewAlert({content: '알림을 가져오지 못했습니다. 다시 시도해주세요.'});
                }
            });
        });
    });
    const createAlarmElement = (alarm) => {
        const __buildInnerAlarmElement = (alarm) => {
            return `<div class="bold-h6 c-brand-blue">
                               [\${alarm.type==='WORK'?'일자리':'서비스'}]
                           </div>
                           <div class="c-basic-black regular-h6 mt-16">
                               \${alarm.content}
                           </div>
                           <div class="c-basic-black regular-h6 mt-16">
                               \${Time.formatLocalDate(alarm.reg_datetime)}
                           </div>`;
        }
        let div = document.createElement('div');
        div.classList.add('d-flex', 'flex-column', 'p-24');
        div.innerHTML = __buildInnerAlarmElement(alarm);
        /*TODO QuerySelector And Add Event Listener*/
        return div;
    }
</script>
</body>
</html>