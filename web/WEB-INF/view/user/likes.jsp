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
        <jsp:param name="title" value="좋아요"/>
        <jsp:param name="type" value="text-left"/>
    </jsp:include>

    <!--content-->
    <div class="container general-container">
        <div class="work-container">
            <div class="row work">
                <div class="col-12 p-24">
                    <div class="d-flex flex-column">
                        <div class="d-flex justify-content-between">
                            <div class="bold-h5">
                                운송 운반 | 덤프트럭 2대
                            </div>
                            <div>
                                <img src="../../resources/assets/images/icon/icon-star-active.svg" alt="">
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
                            <img src="/resources/assets/images/icon/icon-location-arrow.svg" alt="">
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
                                    동부
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
            <div class="row work">
                <div class="col-12 p-24">
                    <div class="d-flex flex-column">
                        <div class="d-flex justify-content-between">
                            <div class="bold-h5">
                                운송 운반 | 덤프트럭 2대
                            </div>
                            <div>
                                <img src="../../resources/assets/images/icon/icon-star-active.svg" alt="">
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
                            <img src="/resources/assets/images/icon/icon-location-arrow.svg" alt="">
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
    <!--footer-->
    <jsp:include page="../../view/common/footer.jsp" flush="false">
        <jsp:param name="type" value="likes"/>
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
        document.querySelector('#bottom-tab-location-trigger > span svg').style.display = 'none';
        apiGetLikeWorks('user').then((result) => {
            console.log('apiGetLikeWorks', result);
            let container = document.querySelector('.work-container');
            deleteChild(container);
            result.data.works.forEach(function (work) {
                container.append(createWorkElementRow(work));
            });
        });
    });
</script>
</body>
</html>