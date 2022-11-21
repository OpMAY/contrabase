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
        <jsp:param name="title" value="서울,인천" />
        <jsp:param name="type" value="text-left" />
    </jsp:include>

    <!--content-->
    <div class="container" style="padding-top: 72px; padding-bottom: 56px">
        <div class="row border-line-light">

        </div>

        <div class="row border-line-bold">

        </div>

        <div class="row">
            <div class="col-12 pl-24 pr-24 pt-16 pb-16 d-inline-flex">
                <div style="margin-right: 8px;">
                    <img src="../../resources/assets/images/icon/icon-reload.svg" alt="">
                </div>

                <div class="dropdown input-dropdown">
                    <div id="bottom-tab-car-trigger" aria-expanded="false"
                         class="form-group form-inner-button dropdown form-md form-gray">
                        <input
                                type="text"
                                placeholder="Input Box + Icon + lg"
                                class="form-control dropdown-box regular-p1 dropdown-input"
                                disabled value="전체">
                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M5.99955 7.45984L9.93936 3.75L10.5 4.27621L6.27806 8.25H5.71923L1.5 4.27621L2.05973 3.75L5.99955 7.45984Z"
                                  fill="#021226"/>
                        </svg>
                    </div>
                </div>
                <div class="dropdown input-dropdown">
                    <div id="bottom-tab-emergency-trigger" data-toggle="dropdown" aria-expanded="false"
                         class="form-group form-inner-button dropdown form-md form-gray">
                        <input type="text"
                               placeholder="Input Box + Icon + lg"
                               class="form-control dropdown-box regular-p1 dropdown-input"
                               disabled value="긴급">
                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M5.99955 7.45984L9.93936 3.75L10.5 4.27621L6.27806 8.25H5.71923L1.5 4.27621L2.05973 3.75L5.99955 7.45984Z"
                                  fill="#021226"/>
                        </svg>
                    </div>
                </div>
                <div class="dropdown input-dropdown">
                    <div id="bottom-tab-workday-trigger" data-toggle="dropdown" aria-expanded="false"
                         class="form-group form-inner-button dropdown form-md form-gray">
                        <input type="text"
                               placeholder="Input Box + Icon + lg"
                               class="form-control dropdown-box regular-p1 dropdown-input"
                               disabled value="요일">
                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M5.99955 7.45984L9.93936 3.75L10.5 4.27621L6.27806 8.25H5.71923L1.5 4.27621L2.05973 3.75L5.99955 7.45984Z"
                                  fill="#021226"/>
                        </svg>
                    </div>
                </div>
                <div class="dropdown input-dropdown">
                    <div id="bottom-tab-distance-trigger" data-toggle="dropdown" aria-expanded="false"
                         class="form-group form-inner-button dropdown form-md form-gray">
                        <input type="text"
                               placeholder="Input Box + Icon + lg"
                               class="form-control dropdown-box regular-p1 dropdown-input"
                               disabled value="거리">
                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M5.99955 7.45984L9.93936 3.75L10.5 4.27621L6.27806 8.25H5.71923L1.5 4.27621L2.05973 3.75L5.99955 7.45984Z"
                                  fill="#021226"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 p-0">
                <div id="map" style="width:100%;height:1000px;"></div>
            </div>
        </div>

        <div id="overlay">

        </div>

        <!--modal work location-->
        <div id="bottom-tab-location">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    근무 지역
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 medium-h5 c-basic-black">
                    서울
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    전체
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    동부
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    서부
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    남부
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    북부
                </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                    경기
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    전체
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    동부
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    서부
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    남부
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    북부
                </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                    지역
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    인천
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    부산
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    대구
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    대전
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    울산
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    세종
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    경북
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    경남
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    전북
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    전남
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    광주
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    충북
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    충남
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    제주
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    전체
                </span>
                    </button>
                </div>

            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-44">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    지역 설정 완료
                </span>
                    </button>
                </div>
            </div>


        </div>

        <!--modal emergency car-->
        <div id="bottom-tab-car" style="max-height: 500px; overflow: scroll">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    운행 종류
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 medium-h5 c-basic-black">
                    공사
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-24 pb-16">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>

                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-0">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>
            </div>

            <div class="row m-0 pt-48">
                <div class="col-12 pl-24 pr-24 medium-h5 c-basic-black">
                    운행
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-24 pb-16">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>

                <div class="col-12 d-flex justify-content-between pr-24 pl-24 pt-0">
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-block btn-car">
                            <div class="d-flex flex-column bd-highlight">
                                <img class="mr-auto ml-auto mt-12"
                                     src="../../resources/assets/images/sample/img-car-sample.svg" alt="">
                                <span class="c-basic-black regular-p1 mt-8">
                        고속 작업 크레인
                    </span>
                            </div>
                        </button>
                    </div>

                </div>
            </div>


            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-44">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    운행 설정 완료
                </span>
                    </button>
                </div>
            </div>
        </div>

        <!--emerjency-->
        <div id="bottom-tab-emergency">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    근무 시작 시간
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-16 regular-p1 c-basic-black">
                    근무 시작 시간은 <span class="c-brand-blue">중복 선택</span>이 가능해요.
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    인천
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    긴급
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    오전 09:00 ~ 12:00
                </span>
                    </button>
                </div>

            </div>

            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    오후 12:00 ~ 18:00
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    오후 18:00 ~ 22:00
                </span>
                    </button>
                </div>
            </div>


            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    오후 18:00 ~ 22:00
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    야간 22:00 ~ 09:00
                </span>
                    </button>
                </div>
            </div>


            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    시간 설정 완료
                </span>
                    </button>
                </div>
            </div>
        </div>

        <!--workday-->
        <div id="bottom-tab-workday">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    근무 요일
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-16 regular-p1 c-basic-black">
                    근무 요일은 <span class="c-brand-blue">중복 선택</span>이 가능해요.
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    전체
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    평일 월 ~ 금
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    주말 토 ~ 일
                </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    월
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    화
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    수
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    목
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    금
                </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    토
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    일
                </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    요일 설정 완료
                </span>
                    </button>
                </div>
            </div>
        </div>

        <!--distance location-->
        <div id="bottom-tab-distance">
            <div class="row m-0">
                <div class="col-12 p-24 bold-h5">
                    근무 거리
                </div>
            </div>

            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-16 regular-p1 c-basic-black">
                    근무 거리는 <span class="c-brand-blue">최대 1개까지 선택</span>이 가능해요.
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active">
                <span class="medium-h6 c-brand-blue my-auto ">
                    전체
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    1~5km 이내
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    5km~10km 이내
                </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    10 ~ 20km 이내
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box">
                <span class="medium-h6 c-basic-black my-auto ">
                    20km 이상
                </span>
                    </button>
                </div>
            </div>


            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    거리 설정 완료
                </span>
                    </button>
                </div>
            </div>

        </div>

        <!--kakao work info-->
        <div id="bottom-tab-kakao">
            <div class="row p-0">
                <div class="col-12 pl-40 pr-40 pt-24 pt-24">
                    <div class="d-flex flex-column">
                        <div class="d-flex justify-content-between">
                            <div class="bold-h5">
                                운송 운반 | 덤프트럭 2대
                            </div>
                            <div>
                                <img src="../../resources/assets/images/icon/icon-star.svg" alt="">
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
                            <img src="../../resources/assets/images/icon/icon-location-arrow.svg" alt="">
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

    <!--footer-->
    <jsp:include page="../../view/common/footer.jsp" flush="false">
        <jsp:param name="type" value="location" />
    </jsp:include>
</div>

<jsp:include page="../../view/common/js.jsp"></jsp:include>


</body>
</html>