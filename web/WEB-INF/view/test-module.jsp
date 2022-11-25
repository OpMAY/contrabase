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
    <jsp:include page="../view/common/css.jsp"></jsp:include>
    <title>Module Test</title>
    <style>
        .map-overlay-container {
            transition: bottom 0.5s;
            cursor: pointer;
            left: 0;
            bottom: -40%;
            z-index: 3;
            position: absolute;
            background-color: rgb(255, 255, 255);
            color: black;
            width: 100%;
            height: 40%;
        }
    </style>
</head>
<body>
<div class="content-container">
    <div class="row">
        <div class="col-12">
            <span class="bold-h2">KAKAO MAP</span>
            <div id="map" style="width:1000px;height:800px;" class="mt-24">
                <div class="map-overlay-container">
                    <!--kakao work info-->
                    <div class="row p-0">
                        <div class="col-12 pl-40 pr-40 pt-24 pt-24">
                            <div class="d-flex flex-column">
                                <div class="d-flex justify-content-between">
                                    <div class="bold-h5">
                                        운송 운반 | 덤프트럭 2대
                                    </div>
                                    <div>
                                        <img src="/resources/assets/images/icon/icon-star.svg" alt="">
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

                    <div class="row m-0">
                        <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                            <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    일자리 지원하기
                </span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <button class="btn btn-lg" id="add">추가하기</button>
        </div>
    </div>
</div>
<jsp:include page="../view/common/js.jsp"></jsp:include>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakao_javascript}&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="/resources/js/module/api/kakao/kakao-map.js"></script>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */

    const geocoder = new kakao.maps.services.Geocoder();
    $(document).ready(function () {
        console.log('Static JS is ready');




        // 주소로 좌표를 검색합니다
        geocoder.addressSearch('서울특별시 광진구 군자로 29', function (result, status) {

            // 정상적으로 검색이 완료됐으면
            if (status === kakao.maps.services.Status.OK) {
                createKakaoMapElement({
                    map_id: 'map',
                    map_x: result[0].x,
                    map_y: result[0].y,
                    level: 3
                }).then(() => {
                    createMarkerOnMap({
                        map_x: result[0].x,
                        map_y: result[0].y,
                        no: 1,
                    })
                    geocoder.addressSearch('서울특별시 광진구 능동로17길 39', function (result, status) {

                        // 정상적으로 검색이 완료됐으면
                        if (status === kakao.maps.services.Status.OK) {
                            createMarkerOnMap({
                                map_x: result[0].x,
                                map_y: result[0].y,
                                no: 2,
                            })
                        }
                    });
                })
            }
        });

        $('#add').on('click', function () {
            geocoder.addressSearch('서울특별시 광진구 중곡동 천호대로 521', function (result, status) {

                // 정상적으로 검색이 완료됐으면
                if (status === kakao.maps.services.Status.OK) {
                    createMarkerOnMap({
                        map_x: result[0].x,
                        map_y: result[0].y,
                        no: 3,
                    })
                }
            });
        })

    });
</script>
</body>
</html>