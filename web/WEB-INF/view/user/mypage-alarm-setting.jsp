<%@ page import="com.model.service.Employee" %>
<%@ taglib prefix="custom" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zlzld
  Date: 2022-08-17
  Time: 오전 2:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Employee employee = (Employee) request.getAttribute("employee");
    request.setAttribute("employee", employee);
%>
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
        <jsp:param name="title" value="알림 설정"/>
        <jsp:param name="type" value="text-center"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">
        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-24 medium-h5">
                <div class="d-flex">
                    <div class="">신규 공고 알림</div>
                    <div class="ml-auto bd-highlight">
                        <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input"
                                   data-alarm="new" ${employee.new_work_alarm?'checked="true"':''}
                                   id="customSwitch1">
                            <label class="custom-control-label" for="customSwitch1"></label>
                        </div>
                    </div>
                </div>
                <span class="regular-p1">업로드 되는 신규 공고 알림을 수신 받습니다.</span>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-24 medium-h5">
                <div class="d-flex">
                    <div class="">긴급 공고 알림</div>
                    <div class="ml-auto bd-highlight">
                        <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input"
                                   data-alarm="emergency" ${employee.emergency_work_alarm?'checked="true"':''}
                                   id="customSwitch2">
                            <label class="custom-control-label" for="customSwitch2"></label>
                        </div>
                    </div>
                </div>
                <span class="regular-p1">긴급하게 올라오는 공고를 수신 받습니다.</span>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-24 medium-h5">
                <div class="d-flex">
                    <div class="">신고 알림</div>
                    <div class="ml-auto bd-highlight">
                        <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input"
                                   data-alarm="report" ${employee.report_alarm?'checked="true"':''}
                                   id="customSwitch3">
                            <label class="custom-control-label" for="customSwitch3"></label>
                        </div>
                    </div>
                </div>
                <span class="regular-p1">서비스 신고에 대한 알림을 수신 받습니다.</span>
            </div>
        </div>

        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-24 medium-h5">
                <div class="d-flex">
                    <div class="">이벤트 및 마케팅 알림</div>
                    <div class="ml-auto bd-highlight">
                        <div class="custom-control custom-switch">
                            <input type="checkbox" class="custom-control-input"
                                   data-alarm="marketing" ${employee.marketing_alarm?'checked="true"':''}
                                   id="customSwitch4">
                            <label class="custom-control-label" for="customSwitch4"></label>
                        </div>
                    </div>
                </div>
                <span class="regular-p1">이벤트 및 혜택에 대한 알림을 수신 받습니다.</span>
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
        let alarms = document.querySelectorAll('[data-alarm]');
        alarms.forEach(function (alarm) {
            alarm.addEventListener('change', alarmChangeEventListener);
        });
    });

    function alarmChangeEventListener(event) {
        console.log('alarmChangeEventListener', this, event);
        //new, emergency, report, marketing
        let type = this.dataset.alarm;
        if ($(this).is(':checked')) {
            /*TODO Fetch*/
            console.log('checked');
            apiUpdateAlarm('user', type).then((result) => {
                console.log('apiUpdateAlarm', result);
                if (result.status === 'OK') {
                    switch (type) {
                        case 'new':
                            viewAlert({content: '신규 공고 알림을 설정하였습니다.'});
                            break;
                        case 'emergency':
                            viewAlert({content: '긴급 공고 알림을 설정하였습니다.'});
                            break;
                        case 'report':
                            viewAlert({content: '신고 알림을 설정하였습니다.'});
                            break;
                        case 'marketing':
                            viewAlert({content: '이벤트 및 마케팅 알림을 설정 하였습니다.'});
                            break;
                    }
                } else {
                    switch (type) {
                        case 'new':
                            viewAlert({content: '신규 공고 알림을 설정할 수 없습니다. 다시 시도해주세요.'});
                            break;
                        case 'emergency':
                            viewAlert({content: '긴급 공고 알림을 설정할 수 없습니다. 다시 시도해주세요.'});
                            break;
                        case 'report':
                            viewAlert({content: '신고 알림을 설정할 수 없습니다. 다시 시도해주세요.'});
                            break;
                        case 'marketing':
                            viewAlert({content: '이벤트 및 마케팅 알림을 설정할 수 없습니다. 다시 시도해주세요.'});
                            break;
                    }
                }
            });
        } else {
            /*TODO Fetch*/
            console.log('unchecked');
            apiUpdateAlarm('user', type).then((result) => {
                console.log('apiUpdateAlarm', result);
                if (result.status === 'OK') {
                    switch (type) {
                        case 'new':
                            viewAlert({content: '신규 공고 알림을 해제하였습니다.'});
                            break;
                        case 'emergency':
                            viewAlert({content: '긴급 공고 알림을 해제하였습니다.'});
                            break;
                        case 'report':
                            viewAlert({content: '신고 알림을 해제하였습니다.'});
                            break;
                        case 'marketing':
                            viewAlert({content: '이벤트 및 마케팅 알림을 해제 하였습니다.'});
                            break;
                    }
                } else {
                    switch (type) {
                        case 'new':
                            viewAlert({content: '신규 공고 알림을 해제할 수 없습니다. 다시 시도해주세요.'});
                            break;
                        case 'emergency':
                            viewAlert({content: '긴급 공고 알림을 해제할 수 없습니다. 다시 시도해주세요.'});
                            break;
                        case 'report':
                            viewAlert({content: '신고 알림을 해제할 수 없습니다. 다시 시도해주세요.'});
                            break;
                        case 'marketing':
                            viewAlert({content: '이벤트 및 마케팅 알림을 해제할 수 없습니다. 다시 시도해주세요.'});
                            break;
                    }
                }
            });
        }
        event.stopPropagation();
        event.preventDefault();
    }
</script>
</body>
</html>