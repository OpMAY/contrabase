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
    <title>User Home</title>
</head>
<body>
<div class="content-container">

    <!--header-->
    <jsp:include page="../../view/common/header.jsp" flush="false">
        <jsp:param name="title" value="서울,인천"/>
        <jsp:param name="type" value="text-left"/>
        <jsp:param name="icon" value="alarm"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">
        <div class="row border-line-light"></div>
        <div class="row border-line-bold"></div>
        <div class="work-container col-padding">
            <div class="row work">
                <div class="col-12 pl-24 pr-24 pt-16 pb-16 d-inline-flex">
                    <div class="_reload mr-8 cursor-pointer">
                        <img src="/resources/assets/images/icon/icon-reload.svg" alt="">
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
            <div class="row work">
                <div class="col-12 p-24">
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
            <div class="row border-line-light">
            </div>
            <div class="row m-0">
                <div class="col-12 pt-24 pl-24 pr-24 medium-h5 c-basic-black">
                    서울
                </div>
            </div>
            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box is-active" data-region="서울" data-type="전체">
                    <span class="medium-h6 my-auto">
                        전체
                    </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="서울" data-type="동부">
                    <span class="medium-h6 my-auto">
                        동부
                    </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="서울" data-type="서부">
                    <span class="medium-h6 my-auto">
                        서부
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="서울" data-type="남부">
                    <span class="medium-h6 my-auto">
                        남부
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="서울" data-type="북부">
                    <span class="medium-h6 my-auto">
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
                    <button type="button" class="btn btn-block btn-box is-active" data-region="경기" data-type="전체">
                    <span class="medium-h6 my-auto">
                        전체
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="경기" data-type="동부">
                    <span class="medium-h6 my-auto">
                        동부
                    </span>
                    </button>
                </div>

                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="경기" data-type="서부">
                    <span class="medium-h6 my-auto">
                        서부
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="경기" data-type="남부">
                    <span class="medium-h6 my-auto">
                        남부
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="경기" data-type="북부">
                    <span class="medium-h6 my-auto">
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
                    <button type="button" class="btn btn-block btn-box is-active" data-region="지역" data-type="전체">
                    <span class="medium-h6 my-auto">
                        전체
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="인천">
                    <span class="medium-h6 my-auto">
                        인천
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="부산">
                    <span class="medium-h6 my-auto">
                        부산
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="대구">
                    <span class="medium-h6 my-auto">
                        대구
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="대전">
                    <span class="medium-h6 my-auto">
                        대전
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="울산">
                    <span class="medium-h6 my-auto">
                        울산
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="세종">
                    <span class="medium-h6 my-auto">
                        세종
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="경북">
                    <span class="medium-h6 my-auto">
                        경북
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="경남">
                    <span class="medium-h6 my-auto">
                        경남
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="전북">
                    <span class="medium-h6 my-auto">
                        전북
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="전남">
                    <span class="medium-h6 my-auto">
                        전남
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="광주">
                    <span class="medium-h6 my-auto">
                        광주
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="충북">
                    <span class="medium-h6 my-auto">
                        충북
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="충남">
                    <span class="medium-h6 my-auto">
                        충남
                    </span>
                    </button>
                </div>
                <div class="pt-16 pl-8">
                    <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="제주">
                    <span class="medium-h6 my-auto">
                        제주
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
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="고속 작업 크레인">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_312_630)">
                                    <path d="M39.376 30.0037C39.0304 30.0037 38.751 29.7243 38.751 29.3787V21.2568C38.751 20.9112 39.0304 20.6318 39.376 20.6318C39.7216 20.6318 40.001 20.9112 40.001 21.2568V29.3787C40.001 29.7243 39.7216 30.0037 39.376 30.0037Z"
                                          fill="#021226"/>
                                    <path d="M39.3766 21.8818C39.1473 21.8818 38.926 21.7556 38.8166 21.5362L35.6916 15.2849C35.5373 14.9762 35.6623 14.6006 35.971 14.4462C36.2791 14.2912 36.656 14.4168 36.8098 14.7256L39.9348 20.9768C40.0891 21.2856 39.9641 21.6612 39.6554 21.8156C39.566 21.8606 39.4704 21.8818 39.3766 21.8818Z"
                                          fill="#021226"/>
                                    <path d="M39.3759 28.1274H32.5034C32.1578 28.1274 31.8784 27.8481 31.8784 27.5024C31.8784 27.1568 32.1578 26.8774 32.5034 26.8774H39.3759C39.7215 26.8774 40.0009 27.1568 40.0009 27.5024C40.0009 27.8481 39.7215 28.1274 39.3759 28.1274Z"
                                          fill="#021226"/>
                                    <path d="M39.3761 30.0038H35.7529C35.4073 30.0038 35.1279 29.7244 35.1279 29.3788C35.1279 29.0332 35.4073 28.7538 35.7529 28.7538H39.3761C39.7217 28.7538 40.0011 29.0332 40.0011 29.3788C40.0011 29.7244 39.7217 30.0038 39.3761 30.0038Z"
                                          fill="#021226"/>
                                    <path d="M26.878 26.2506H3.12305C2.77742 26.2506 2.49805 25.9712 2.49805 25.6256C2.49805 25.28 2.77742 25.0006 3.12305 25.0006H26.878C27.2237 25.0006 27.503 25.28 27.503 25.6256C27.503 25.9712 27.2237 26.2506 26.878 26.2506Z"
                                          fill="#021226"/>
                                    <path d="M36.2508 15.6306H26.8765C26.5308 15.6306 26.2515 15.3506 26.2515 15.0056C26.2515 14.6606 26.5308 14.3806 26.8765 14.3806H36.2508C36.5965 14.3806 36.8758 14.6606 36.8758 15.0056C36.8758 15.3506 36.5965 15.6306 36.2508 15.6306Z"
                                          fill="#021226"/>
                                    <path d="M26.8777 31.2512C26.5327 31.2512 26.2527 30.9719 26.2527 30.6262L26.2515 15.0056C26.2515 14.6606 26.5308 14.3806 26.8765 14.3806C27.2215 14.3806 27.5015 14.6606 27.5015 15.0056L27.5027 30.6262C27.5027 30.9712 27.2233 31.2512 26.8777 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M36.2642 21.8818C36.2611 21.8825 36.2567 21.8825 36.2517 21.8818H29.3779C29.0323 21.8818 28.7529 21.6025 28.7529 21.2568V17.5068C28.7529 17.1618 29.0323 16.8818 29.3779 16.8818H34.3761C34.6129 16.8818 34.8292 17.0156 34.9354 17.2275L36.7611 20.8768C36.8423 20.9825 36.8898 21.1143 36.8898 21.2568C36.8892 21.6018 36.6098 21.8818 36.2642 21.8818ZM30.0029 20.6318H35.2411L33.9898 18.1318H30.0029V20.6318Z"
                                          fill="#021226"/>
                                    <path d="M32.5034 35.6262C30.0915 35.6262 28.1284 33.6631 28.1284 31.2512C28.1284 28.8393 30.0915 26.8762 32.5034 26.8762C34.9153 26.8762 36.8784 28.8393 36.8784 31.2512C36.8784 33.6631 34.9153 35.6262 32.5034 35.6262ZM32.5034 28.1262C30.7803 28.1262 29.3784 29.5281 29.3784 31.2512C29.3784 32.9743 30.7803 34.3762 32.5034 34.3762C34.2265 34.3762 35.6284 32.9743 35.6284 31.2512C35.6284 29.5281 34.2265 28.1262 32.5034 28.1262Z"
                                          fill="#021226"/>
                                    <path d="M16.8794 35.6262C14.4675 35.6262 12.5044 33.6631 12.5044 31.2512C12.5044 28.8393 14.4675 26.8762 16.8794 26.8762C19.2913 26.8762 21.2544 28.8393 21.2544 31.2512C21.2544 33.6631 19.2913 35.6262 16.8794 35.6262ZM16.8794 28.1262C15.1563 28.1262 13.7544 29.5281 13.7544 31.2512C13.7544 32.9743 15.1563 34.3762 16.8794 34.3762C18.6025 34.3762 20.0044 32.9743 20.0044 31.2512C20.0044 29.5281 18.6025 28.1262 16.8794 28.1262Z"
                                          fill="#021226"/>
                                    <path d="M8.13281 35.6262C5.72094 35.6262 3.75781 33.6631 3.75781 31.2512C3.75781 28.8393 5.72094 26.8762 8.13281 26.8762C10.5447 26.8762 12.5078 28.8393 12.5078 31.2512C12.5078 33.6631 10.5447 35.6262 8.13281 35.6262ZM8.13281 28.1262C6.40969 28.1262 5.00781 29.5281 5.00781 31.2512C5.00781 32.9743 6.40969 34.3762 8.13281 34.3762C9.85594 34.3762 11.2578 32.9743 11.2578 31.2512C11.2578 29.5281 9.85594 28.1262 8.13281 28.1262Z"
                                          fill="#021226"/>
                                    <path d="M8.13281 33.1262C7.09906 33.1262 6.25781 32.285 6.25781 31.2512C6.25781 30.2175 7.09906 29.3762 8.13281 29.3762C9.16656 29.3762 10.0078 30.2175 10.0078 31.2512C10.0078 32.285 9.16656 33.1262 8.13281 33.1262ZM8.13281 30.6262C7.78781 30.6262 7.50781 30.9062 7.50781 31.2512C7.50781 31.5962 7.78781 31.8762 8.13281 31.8762C8.47781 31.8762 8.75781 31.5962 8.75781 31.2512C8.75781 30.9062 8.47719 30.6262 8.13281 30.6262Z"
                                          fill="#021226"/>
                                    <path d="M16.8794 33.1262C15.8456 33.1262 15.0044 32.285 15.0044 31.2512C15.0044 30.2175 15.8456 29.3762 16.8794 29.3762C17.9131 29.3762 18.7544 30.2175 18.7544 31.2512C18.7544 32.285 17.9131 33.1262 16.8794 33.1262ZM16.8794 30.6262C16.5344 30.6262 16.2544 30.9062 16.2544 31.2512C16.2544 31.5962 16.5344 31.8762 16.8794 31.8762C17.2244 31.8762 17.5044 31.5962 17.5044 31.2512C17.5044 30.9062 17.2244 30.6262 16.8794 30.6262Z"
                                          fill="#021226"/>
                                    <path d="M32.5024 33.1262C31.4687 33.1262 30.6274 32.285 30.6274 31.2512C30.6274 30.2175 31.4687 29.3762 32.5024 29.3762C33.5362 29.3762 34.3774 30.2175 34.3774 31.2512C34.3774 32.285 33.5362 33.1262 32.5024 33.1262ZM32.5024 30.6262C32.1574 30.6262 31.8774 30.9062 31.8774 31.2512C31.8774 31.5962 32.1574 31.8762 32.5024 31.8762C32.8474 31.8762 33.1274 31.5962 33.1274 31.2512C33.1274 30.9062 32.8474 30.6262 32.5024 30.6262Z"
                                          fill="#021226"/>
                                    <path d="M13.1817 31.2512H11.8354C11.4898 31.2512 11.2104 30.9718 11.2104 30.6262C11.2104 30.2806 11.4898 30.0012 11.8354 30.0012H13.1817C13.5273 30.0012 13.8067 30.2806 13.8067 30.6262C13.8067 30.9718 13.5273 31.2512 13.1817 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M28.8054 31.2512H20.5767C20.231 31.2512 19.9517 30.9718 19.9517 30.6262C19.9517 30.2806 20.231 30.0012 20.5767 30.0012H28.8054C29.151 30.0012 29.4304 30.2806 29.4304 30.6262C29.4304 30.9718 29.151 31.2512 28.8054 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M4.43547 31.2512H1.24609C0.900469 31.2512 0.621094 30.9718 0.621094 30.6262C0.621094 30.2806 0.900469 30.0012 1.24609 30.0012H4.43547C4.78109 30.0012 5.06047 30.2806 5.06047 30.6262C5.06047 30.9718 4.78047 31.2512 4.43547 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M1.24597 31.2513C1.17284 31.2513 1.09909 31.2382 1.02597 31.2119C0.702844 31.0907 0.539719 30.73 0.660344 30.4069L2.53722 25.4063C2.65909 25.0825 3.01909 24.9207 3.34222 25.0407C3.66534 25.1619 3.82847 25.5225 3.70784 25.8457L1.83097 30.8463C1.73659 31.0969 1.49847 31.2513 1.24597 31.2513Z"
                                          fill="#021226"/>
                                    <path d="M29.999 23.7556H29.374C29.0284 23.7556 28.749 23.4762 28.749 23.1306C28.749 22.785 29.0284 22.5056 29.374 22.5056H29.999C30.3446 22.5056 30.624 22.785 30.624 23.1306C30.624 23.4762 30.3446 23.7556 29.999 23.7556Z"
                                          fill="#021226"/>
                                    <path d="M22.4947 26.2712H11.8647C11.5191 26.2712 11.2397 25.9918 11.2397 25.6462V22.5018C11.2397 22.1562 11.5191 21.8768 11.8647 21.8768H22.4947C22.8404 21.8768 23.1197 22.1562 23.1197 22.5018V25.6462C23.1197 25.9918 22.8404 26.2712 22.4947 26.2712ZM12.4897 25.0212H21.8697V23.1268H12.4897V25.0212Z"
                                          fill="#021226"/>
                                    <path d="M14.3667 23.1268C14.0211 23.1268 13.7417 22.8475 13.7417 22.5018V18.7512C13.7417 18.4062 14.0211 18.1262 14.3667 18.1262C14.7123 18.1262 14.9917 18.4062 14.9917 18.7512V22.5018C14.9917 22.8475 14.7123 23.1268 14.3667 23.1268Z"
                                          fill="#021226"/>
                                    <path d="M19.9932 23.1268C19.6475 23.1268 19.3682 22.8475 19.3682 22.5018V18.1262C19.3682 17.7812 19.6475 17.5012 19.9932 17.5012C20.3388 17.5012 20.6182 17.7812 20.6182 18.1262V22.5018C20.6182 22.8475 20.3388 23.1268 19.9932 23.1268Z"
                                          fill="#021226"/>
                                    <path d="M14.3669 19.3762C14.2181 19.3762 14.0681 19.3231 13.9488 19.2156L1.45315 7.9643C1.1969 7.73305 1.17627 7.33805 1.4069 7.0818C1.63752 6.82555 2.03315 6.80555 2.2894 7.03555L14.785 18.2868C15.0413 18.5181 15.0619 18.9131 14.8313 19.1693C14.7081 19.3062 14.5381 19.3762 14.3669 19.3762Z"
                                          fill="#021226"/>
                                    <path d="M19.9923 18.7512C19.8655 18.7512 19.7373 18.7125 19.6261 18.6325L1.50422 5.50498C1.22485 5.30248 1.16235 4.91185 1.36547 4.63248C1.56672 4.3531 1.95735 4.28935 2.23797 4.49248L20.3598 17.62C20.6392 17.8225 20.7017 18.2131 20.4992 18.4925C20.3773 18.6612 20.1861 18.7512 19.9923 18.7512Z"
                                          fill="#021226"/>
                                    <path d="M1.87359 20.0025C1.52859 20.0025 1.24859 19.7225 1.24859 19.3775L1.24609 4.99878C1.24609 4.65378 1.52547 4.37378 1.87109 4.37378C2.21609 4.37378 2.49609 4.65378 2.49609 4.99878L2.49859 19.3775C2.49859 19.7225 2.21922 20.0025 1.87359 20.0025Z"
                                          fill="#021226"/>
                                    <path d="M1.87354 23.1288C0.839785 23.1288 -0.00146484 22.2869 -0.00146484 21.2531C-0.00146484 20.9075 0.27791 20.6281 0.623535 20.6281C0.96916 20.6281 1.24854 20.9075 1.24854 21.2531C1.24854 21.5981 1.52854 21.8788 1.87354 21.8788C2.21854 21.8788 2.49854 21.5981 2.49854 21.2531C2.49854 20.4138 1.59979 19.9394 1.59041 19.935C1.28541 19.7769 1.16229 19.4013 1.31791 19.0956C1.47416 18.7894 1.84604 18.665 2.15291 18.8194C2.21791 18.8519 3.74854 19.6363 3.74854 21.2538C3.74854 22.2869 2.90729 23.1288 1.87354 23.1288Z"
                                          fill="#021226"/>
                                    <path d="M2.49854 18.7531H1.24854C0.90291 18.7531 0.623535 18.4731 0.623535 18.1281C0.623535 17.7831 0.90291 17.5031 1.24854 17.5031H2.49854C2.84416 17.5031 3.12354 17.7831 3.12354 18.1281C3.12354 18.4731 2.84416 18.7531 2.49854 18.7531Z"
                                          fill="#021226"/>
                                    <path d="M12.4906 23.1269C12.2475 23.1269 12.0162 22.9838 11.9156 22.7463L8.17374 13.9375C8.03812 13.62 8.18687 13.2525 8.50437 13.1175C8.81937 12.9838 9.18937 13.1307 9.32374 13.4482L13.0656 22.2575C13.2012 22.575 13.0525 22.9419 12.735 23.0769C12.6556 23.1113 12.5725 23.1269 12.4906 23.1269Z"
                                          fill="#021226"/>
                                    <path d="M24.373 26.2712C24.0274 26.2712 23.748 25.9918 23.748 25.6462V17.5062C23.748 17.1612 24.0274 16.8812 24.373 16.8812C24.7187 16.8812 24.998 17.1612 24.998 17.5062V25.6462C24.998 25.9918 24.7187 26.2712 24.373 26.2712Z"
                                          fill="#021226"/>
                                    <path d="M26.8718 18.1312H24.373C24.0274 18.1312 23.748 17.8512 23.748 17.5062C23.748 17.1612 24.0274 16.8812 24.373 16.8812H26.8718C27.2174 16.8812 27.4968 17.1612 27.4968 17.5062C27.4968 17.8512 27.2174 18.1312 26.8718 18.1312Z"
                                          fill="#021226"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_312_630">
                                        <rect width="40" height="40" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>
                            <span class="regular-p1 mt-8">
                            고속 작업 크레인
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="사다리차">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_312_612)">
                                    <path d="M38.8743 25.8982H38.6633V24.5924C38.6633 23.9929 38.1755 23.5051 37.576 23.5051H36.4723L31.7101 18.7428C31.6898 18.7225 31.6681 18.7047 31.6458 18.688V12.1676H35.0829C35.3081 12.1676 35.5136 12.0393 35.6126 11.8369C35.7115 11.6346 35.6867 11.3936 35.5485 11.2158L33.1896 8.18229C33.0779 8.03863 32.9061 7.95458 32.724 7.95458H31.4775L12.2981 0.341697C12.2795 0.334227 12.2604 0.327701 12.2408 0.322119C12.2346 0.32031 12.2283 0.319131 12.222 0.317558C12.2103 0.314649 12.1986 0.311582 12.1866 0.309381C12.1753 0.307258 12.164 0.305921 12.1526 0.304506C12.1457 0.303641 12.1387 0.302462 12.1317 0.301833C12.1178 0.300574 12.1041 0.300103 12.0904 0.299867C12.0864 0.299788 12.0826 0.299316 12.0786 0.299316H12.0699C12.0679 0.299316 12.0659 0.299316 12.064 0.299316H10.6125C10.3067 0.299316 10.0516 0.533079 10.025 0.837685L9.40317 7.95466H5.42387C5.40445 7.1929 4.78006 6.57882 4.01367 6.57882H1.41201C0.63343 6.57874 0 7.21217 0 7.99075V12.2158C0 12.9943 0.63343 13.6278 1.41201 13.6278H4.01367C4.79224 13.6278 5.42567 12.9943 5.42567 12.2158V12.1676H9.1676L8.46749 35.4614H7.92944C6.76558 35.4614 5.81874 36.4082 5.81874 37.5721V39.1112C5.81874 39.4368 6.08277 39.7009 6.40845 39.7009H7.46718C7.79286 39.7009 8.0569 39.4368 8.0569 39.1112C8.0569 38.7855 7.79286 38.5215 7.46718 38.5215H6.99816V37.5721C6.99816 37.0586 7.41592 36.6408 7.92944 36.6408H9.67295H15.3943C15.9078 36.6408 16.3255 37.0586 16.3255 37.5721V38.5215H9.82596C9.50028 38.5215 9.23624 38.7855 9.23624 39.1112C9.23624 39.4368 9.50028 39.7009 9.82596 39.7009H16.9153C17.2409 39.7009 17.505 39.4368 17.505 39.1112V37.5721C17.505 36.4082 16.5581 35.4614 15.3943 35.4614H14.2262L13.5261 12.1676H16.7873V15.1089C16.7873 15.9516 17.473 16.6373 18.3157 16.6373H22.8402C23.683 16.6373 24.3686 15.9516 24.3686 15.1089V12.1676H30.4661V18.6388C30.4156 18.6656 30.368 18.7002 30.3254 18.7428L25.5631 23.5051H24.3787C23.7792 23.5051 23.2914 23.9929 23.2914 24.5924V25.8982H22.7423C22.1216 25.8982 21.6166 26.4032 21.6166 27.0239V28.1332C21.6166 28.7539 22.1216 29.2589 22.7423 29.2589H24.3246C24.6503 29.2589 24.9144 28.9948 24.9144 28.6692C24.9144 28.3435 24.6503 28.0794 24.3246 28.0794H22.796V27.0776H38.8203V28.0794H26.6837C26.358 28.0794 26.094 28.3435 26.094 28.6692C26.094 28.9948 26.358 29.2589 26.6837 29.2589H38.8743C39.495 29.2589 40 28.7539 40 28.1332V27.0239C40 26.4032 39.495 25.8982 38.8743 25.8982ZM11.1529 1.47874H11.5382L12.104 7.95466H10.5871L11.1529 1.47874ZM4.24625 12.2158C4.24625 12.344 4.14191 12.4483 4.01367 12.4483H1.41201C1.28377 12.4483 1.17943 12.344 1.17943 12.2158V7.99075C1.17943 7.8625 1.28377 7.75816 1.41201 7.75816H4.01367C4.14191 7.75816 4.24625 7.8625 4.24625 7.99075V8.54437V11.5779V12.2158ZM5.42567 9.13408H17.3772C17.7029 9.13408 17.9669 8.87005 17.9669 8.54437C17.9669 8.21869 17.7029 7.95466 17.3772 7.95466H13.2878L12.7491 1.78964L28.2806 7.95466H19.736C19.4104 7.95466 19.1463 8.21869 19.1463 8.54437C19.1463 8.87005 19.4104 9.13408 19.736 9.13408H31.3612C31.3623 9.13408 31.3634 9.13424 31.3645 9.13424C31.3652 9.13424 31.3658 9.13408 31.3665 9.13408H32.4355L33.8772 10.9882H23.779H17.3771H5.4256V9.13408H5.42567ZM10.2064 16.8678L11.986 18.1563L10.0889 20.7767L10.2064 16.8678ZM10.3087 29.1505L12.7645 26.0823L12.9135 31.0378L10.3087 29.1505ZM10.4913 22.232L12.5629 19.3707L12.6968 23.8299L10.4913 22.232ZM10.0118 23.3411L12.1867 24.9168L9.87777 27.8013L10.0118 23.3411ZM12.1867 31.9676L9.65761 35.1272L9.80441 30.2417L12.1867 31.9676ZM10.659 15.7395L12.385 13.4505L12.4937 17.0678L10.659 15.7395ZM11.8751 12.1676L10.2842 14.2776L10.3476 12.1676H11.8751ZM10.9009 35.4613L12.9688 32.8779L13.0464 35.4613H10.9009ZM23.1894 15.1089C23.1894 15.3013 23.0329 15.4579 22.8405 15.4579H18.3159C18.1235 15.4579 17.967 15.3013 17.967 15.1089V12.1676H23.1894V15.1089ZM34.8044 23.5051H31.6458V20.3465L34.8044 23.5051ZM30.4664 20.2701V23.5052H27.2313L30.4664 20.2701ZM24.471 24.6845H37.4839V25.8982H24.471V24.6845Z"
                                          fill="#021226"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_312_612">
                                        <rect width="40" height="40" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>
                            <span class="regular-p1 mt-8">
                            사다리차
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="풀 크레인">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M32.2507 1.9401L5.65527 13.1717C4.7016 13.2556 3.93774 14.0599 3.93774 15.0334V20.6572H3.31519C2.28725 20.6572 1.43652 21.5017 1.43652 22.5297V26.9083C1.43652 27.9363 2.28725 28.7821 3.31519 28.7821H5.81519V30.0822C3.69733 30.3858 2.06396 32.205 2.06396 34.4059C2.06396 36.8188 4.02482 38.7846 6.43774 38.7846H25.8103C28.2232 38.7846 30.189 36.8188 30.189 34.4059C30.189 32.2065 28.5542 30.3877 26.4377 30.0822V28.7821H28.939C29.9671 28.7821 30.8433 27.9393 30.8127 26.89V22.5297C30.813 22.4512 30.7986 22.3733 30.77 22.3003L29.6079 19.3938L34.3955 6.23709C34.6809 6.18394 34.9423 6.09107 35.1853 5.94896V22.5298H34.5627C34.3056 22.5303 34.0751 22.6883 33.9817 22.9277L32.7317 26.0503C32.6777 26.1878 32.6743 26.3401 32.722 26.48L33.3446 28.3526C33.4291 28.6097 33.6696 28.7831 33.9403 28.7822H35.1854V30.1104C34.0429 30.431 33.3128 31.4037 33.3128 32.5335C33.3128 33.9068 34.4395 35.0335 35.8128 35.0335C37.1861 35.0335 38.314 33.9068 38.314 32.5335C38.314 31.6999 37.0628 31.6999 37.0628 32.5335C37.0628 33.2312 36.5106 33.7834 35.8128 33.7834C35.115 33.7834 34.5628 33.2312 34.5628 32.5335C34.5628 31.8357 35.115 31.2822 35.8128 31.2822C36.1581 31.281 36.4367 31.0001 36.4354 30.6548V28.7822H37.6866C37.9568 28.7825 38.1966 28.6093 38.2811 28.3526L38.9036 26.48C38.9517 26.3401 38.9486 26.188 38.8951 26.0503L37.6439 22.9277C37.5505 22.6882 37.3199 22.5303 37.0628 22.5298H36.4353V3.7798C36.4353 2.40651 35.3135 1.28467 33.9402 1.28467C33.3035 1.28467 32.7207 1.50529 32.2507 1.94017V1.9401ZM33.9402 2.52971C34.638 2.52971 35.1853 3.08191 35.1853 3.77966C35.1853 4.47743 34.638 5.03091 33.9402 5.03091C33.2424 5.03091 32.6902 4.47743 32.6902 3.77966C32.6902 3.08191 33.2424 2.52971 33.9402 2.52971ZM15.9519 20.6572H9.40405L8.55566 17.8337C8.47992 17.5628 8.23271 17.376 7.95142 17.3771C7.5274 17.377 7.22577 17.7901 7.35571 18.1937L8.09668 20.6572H5.18774V16.79C5.38512 16.8611 5.59479 16.9059 5.81519 16.9059C6.84331 16.9059 7.68774 16.0615 7.68774 15.0334C7.68774 14.5857 7.52136 14.1775 7.25561 13.8529L31.4536 3.63447C31.4505 3.68361 31.439 3.72989 31.439 3.77973C31.439 4.85843 32.1315 5.79129 33.0955 6.13934L32.8184 6.90838H30.6907L30.9067 6.66299C31.2712 6.26314 30.99 5.62053 30.449 5.61691C30.2647 5.61566 30.0891 5.69534 29.9693 5.83542L22.407 14.406H18.9365C17.813 14.406 17.2929 15.2998 17.075 16.1705L15.9519 20.6572ZM30.731 8.15833H32.363L31.7869 9.74284L30.731 8.15833ZM29.3845 8.38772L30.8958 10.6595H27.3801L29.3845 8.38772ZM27.7964 11.9046H31.0007L30.0461 14.5291L27.7964 11.9046ZM26.2144 11.9816L29.5566 15.8781L28.9109 17.6518L28.27 16.0478C28.1354 15.7114 27.9834 15.3459 27.7073 15.0151C27.4311 14.6843 26.9666 14.4059 26.4377 14.4059H24.0745L26.2144 11.9816ZM5.81519 14.4059C6.16777 14.4059 6.43774 14.6808 6.43774 15.0334C6.43774 15.3859 6.16777 15.6559 5.81519 15.6559C5.4626 15.6559 5.18774 15.3859 5.18774 15.0334C5.18774 14.6808 5.4626 14.4059 5.81519 14.4059ZM18.9365 15.6559H26.4377C26.6014 15.6559 26.6352 15.6836 26.7466 15.817C26.8581 15.9505 26.9841 16.2075 27.1067 16.5141L29.5615 22.6505V26.9083C29.5614 26.9154 29.5614 26.9201 29.5615 26.9272C29.571 27.2624 29.2959 27.5315 28.939 27.5315H3.31396C2.95692 27.5315 2.68652 27.266 2.68652 26.9089V22.5302C2.68652 22.1732 2.95692 21.9077 3.31396 21.9077H16.4353C16.7235 21.9089 16.9752 21.7126 17.0444 21.4328L18.3018 16.3969C18.4198 15.9239 18.5823 15.6565 18.9365 15.6565V15.6559ZM20.1865 16.9059C19.9026 16.906 19.6544 17.0975 19.5823 17.3722L18.5813 21.1234C18.4774 21.5195 18.776 21.9069 19.1855 21.9071H22.064V23.7809C22.0633 23.9035 22.0983 24.0236 22.1653 24.1264L23.4165 26.0038C23.5329 26.1777 23.7286 26.2815 23.9377 26.2809H27.689C28.0322 26.2796 28.3102 26.0016 28.3115 25.6583V23.1583C28.3128 23.0743 28.2969 22.9908 28.2652 22.913L25.8933 17.2892C25.796 17.057 25.5689 16.906 25.3172 16.9059H20.1865ZM20.6663 18.1559H22.064V20.6572H19.9973L20.6663 18.1559ZM23.3152 18.1559H24.9021L27.0603 23.2828V25.0309H24.2747L23.3152 23.5917V21.2797V18.1559ZM4.55542 23.1485C4.21024 23.1533 3.9337 23.4357 3.93774 23.7809V25.6583C3.91936 26.5098 5.20613 26.5098 5.18774 25.6583V23.7809C5.19211 23.43 4.90632 23.1445 4.55542 23.1485ZM7.05175 23.1485C6.70802 23.1556 6.43369 23.4371 6.43774 23.7809V25.6583C6.45605 26.4732 7.66945 26.4732 7.68774 25.6583V23.7809C7.69211 23.4285 7.40409 23.1424 7.05175 23.1485ZM9.55175 23.1485C9.20802 23.1556 8.93369 23.4371 8.93774 23.7809V25.6583C8.93774 26.4925 10.189 26.4925 10.189 25.6583V23.7809C10.1933 23.428 9.90457 23.1417 9.55175 23.1485ZM34.9875 23.7809H36.6392L37.6499 26.2992L37.2385 27.5309H34.387L33.9768 26.2992L34.9875 23.7809ZM7.0603 28.7821H25.1877V30.0322H23.3152C22.5001 30.0511 22.5001 31.264 23.3152 31.2821H25.8103C27.5524 31.2821 28.939 32.6638 28.939 34.4059C28.939 36.148 27.5524 37.5346 25.8103 37.5346H6.43774C4.69569 37.5346 3.31396 36.148 3.31396 34.4059C3.31396 32.6638 4.69569 31.2821 6.43774 31.2821H20.814C21.666 31.301 21.666 30.0132 20.814 30.0322H7.0603V28.7821ZM7.68774 32.5333C6.65962 32.5333 5.81519 33.3778 5.81519 34.4059C5.81519 35.434 6.65962 36.2833 7.68774 36.2833C8.71587 36.2833 9.56152 35.4341 9.56152 34.4059C9.56152 33.3778 8.71587 32.5333 7.68774 32.5333ZM13.3127 32.5333C12.2846 32.5333 11.439 33.3778 11.439 34.4059C11.439 35.4341 12.2846 36.2833 13.3127 36.2833C14.3408 36.2833 15.1902 35.434 15.1902 34.4059C15.1902 33.3778 14.3408 32.5333 13.3127 32.5333ZM18.9365 32.5333C17.9084 32.5333 17.0627 33.3778 17.0627 34.4059C17.0627 35.4341 17.9084 36.2833 18.9365 36.2833C19.9646 36.2833 20.814 35.4341 20.814 34.4059C20.814 33.3778 19.9646 32.5333 18.9365 32.5333ZM24.5652 32.5333C23.537 32.5333 22.6877 33.3778 22.6877 34.4059C22.6877 35.4341 23.537 36.2833 24.5652 36.2833C25.5933 36.2833 26.4377 35.4341 26.4377 34.4059C26.4377 33.3778 25.5933 32.5333 24.5652 32.5333ZM7.68774 33.7834C8.04032 33.7834 8.3103 34.0533 8.3103 34.4059C8.3103 34.7585 8.04032 35.0333 7.68774 35.0333C7.33516 35.0333 7.0603 34.7585 7.0603 34.4059C7.0603 34.0533 7.33516 33.7834 7.68774 33.7834ZM13.3127 33.7834C13.6653 33.7834 13.9402 34.0533 13.9402 34.4059C13.9402 34.7585 13.6653 35.0333 13.3127 35.0333C12.9602 35.0333 12.689 34.7585 12.689 34.4059C12.689 34.0533 12.9602 33.7834 13.3127 33.7834ZM18.9365 33.7834C19.2891 33.7834 19.564 34.0533 19.564 34.4059C19.564 34.7585 19.2891 35.0333 18.9365 35.0333C18.5839 35.0333 18.3127 34.7585 18.3127 34.4059C18.3127 34.0533 18.5839 33.7834 18.9365 33.7834ZM24.5652 33.7834C24.9178 33.7834 25.1877 34.0533 25.1877 34.4059C25.1877 34.7585 24.9178 35.0333 24.5652 35.0333C24.2126 35.0333 23.9377 34.7585 23.9377 34.4059C23.9377 34.0533 24.2126 33.7834 24.5652 33.7834Z"
                                      fill="#021226"/>
                            </svg>
                            <span class="regular-p1 mt-8">
                            풀 크레인
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-24 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="무진동 트레일러">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M38.75 32.5C39.125 32.5 39.375 32.25 39.375 31.875V21.75L36.25 14.4375C35.6875 13.25 34.5 12.5 33.25 12.5H28.875C27.75 12.5 26.875 13.375 26.875 14.5V28.75H17.625C17.25 28.75 17 29 17 29.375C17 29.75 17.25 30 17.625 30H28.5625C28.375 30.375 28.25 30.8125 28.1875 31.25H11.8125C11.75 30.8125 11.625 30.375 11.4375 30H15.0625C15.4375 30 15.6875 29.75 15.6875 29.375C15.6875 29 15.4375 28.75 15.0625 28.75H13.125V26L22.1875 20.5625C22.5 20.375 22.5625 20 22.375 19.6875C22.1875 19.375 21.8125 19.3125 21.5 19.5L13.125 24.5C13.125 24.5 13.25 22.5 12.9375 22.3125L22.875 16.375C23.1875 16.1875 23.5625 16.1875 23.875 16.375C24.1875 16.5625 24.375 16.875 24.375 17.25C24.375 17.625 24.1875 17.9375 23.875 18.125C23.5625 18.3125 23.5 18.6875 23.6875 19C23.875 19.3125 24.25 19.375 24.5625 19.1875C25.25 18.8125 25.625 18.0625 25.625 17.25C25.625 16.4375 25.1875 15.6875 24.5 15.3125C23.8125 14.9375 22.9375 14.9375 22.25 15.3125C22.25 15.3125 12.125 21.4375 12.0625 21.4375C11.8125 21.3125 11.5625 21.25 11.25 21.25H3.6875C2.6875 21.25 1.875 22.0625 1.875 23.0625V28.75H1.25C0.875 28.75 0.625 29 0.625 29.375V31.875C0.625 32.25 0.875 32.5 1.25 32.5H3.1875C3.3125 33.5 3.8125 34.3125 4.4375 35H1.25C0.875 35 0.625 35.25 0.625 35.625C0.625 36 0.875 36.25 1.25 36.25H12.5C12.875 36.25 13.125 36 13.125 35.625C13.125 35.25 12.875 35 12.5 35H10.5625C11.25 34.3125 11.6875 33.5 11.8125 32.5H28.1875C28.3125 33.5 28.8125 34.3125 29.4375 35H27.5C27.125 35 26.875 35.25 26.875 35.625C26.875 36 27.125 36.25 27.5 36.25H38.75C39.125 36.25 39.375 36 39.375 35.625C39.375 35.25 39.125 35 38.75 35H35.5625C36.25 34.3125 36.6875 33.5 36.8125 32.5H38.75ZM3.125 23.0625C3.125 22.75 3.375 22.5 3.6875 22.5H11.25C11.5625 22.5 11.8125 22.75 11.8125 23.0625V28.75H10.5C9.6875 28 8.625 27.5 7.4375 27.5C6.25 27.5 5.1875 28 4.375 28.75H3.125V23.0625ZM3.1875 31.25H1.875V30H3.5625C3.375 30.375 3.25 30.8125 3.1875 31.25ZM7.5 35C5.75 35 4.375 33.625 4.375 31.875C4.375 30.125 5.75 28.75 7.5 28.75C9.25 28.75 10.625 30.125 10.625 31.875C10.625 33.625 9.25 35 7.5 35ZM28.125 28.75V22.5H33.5C33.875 22.5 34.125 22.25 34.125 21.875C34.125 21.5 33.875 21.25 33.5 21.25H28.125V14.5C28.125 14.0625 28.4375 13.75 28.875 13.75H33.25C34.0625 13.75 34.75 14.25 35.125 14.9375L37.8125 21.25H36.25C35.875 21.25 35.625 21.5 35.625 21.875C35.625 22.25 35.875 22.5 36.25 22.5H38.125V23.75H37.5C37.125 23.75 36.875 24 36.875 24.375C36.875 24.75 37.125 25 37.5 25H38.125V26.25H37.5C37.125 26.25 36.875 26.5 36.875 26.875C36.875 27.25 37.125 27.5 37.5 27.5H38.125V28.75H35.5625C34.75 28 33.6875 27.5 32.5 27.5C31.3125 27.5 30.25 28 29.4375 28.75H28.125ZM32.5 35C30.75 35 29.375 33.625 29.375 31.875C29.375 30.125 30.75 28.75 32.5 28.75C34.25 28.75 35.625 30.125 35.625 31.875C35.625 33.625 34.25 35 32.5 35ZM38.125 30V31.25H36.8125C36.75 30.8125 36.625 30.375 36.4375 30H38.125Z"
                                      fill="#021226"/>
                                <path d="M25 35H15C14.625 35 14.375 35.25 14.375 35.625C14.375 36 14.625 36.25 15 36.25H25C25.375 36.25 25.625 36 25.625 35.625C25.625 35.25 25.375 35 25 35Z"
                                      fill="#021226"/>
                                <path d="M7.5 30C6.4375 30 5.625 30.8125 5.625 31.875C5.625 32.9375 6.4375 33.75 7.5 33.75C7.875 33.75 8.125 33.5 8.125 33.125C8.125 32.75 7.875 32.5 7.5 32.5C7.125 32.5 6.875 32.25 6.875 31.875C6.875 31.5 7.125 31.25 7.5 31.25C7.875 31.25 8.125 31.5 8.125 31.875C8.125 32.25 8.375 32.5 8.75 32.5C9.125 32.5 9.375 32.25 9.375 31.875C9.375 30.8125 8.5625 30 7.5 30Z"
                                      fill="#021226"/>
                                <path d="M32.5 30C32.125 30 31.875 30.25 31.875 30.625C31.875 31 32.125 31.25 32.5 31.25C32.875 31.25 33.125 31.5 33.125 31.875C33.125 32.25 32.875 32.5 32.5 32.5C32.125 32.5 31.875 32.25 31.875 31.875C31.875 31.5 31.625 31.25 31.25 31.25C30.875 31.25 30.625 31.5 30.625 31.875C30.625 32.9375 31.4375 33.75 32.5 33.75C33.5625 33.75 34.375 32.9375 34.375 31.875C34.375 30.8125 33.5625 30 32.5 30Z"
                                      fill="#021226"/>
                                <path d="M31.6875 16.4375C31.4375 16.1875 31.0625 16.1875 30.8125 16.4375L29.5625 17.6875C29.3125 17.9375 29.3125 18.3125 29.5625 18.5625C29.8125 18.875 30.3125 18.6875 30.4375 18.5625L31.6875 17.3125C31.9375 17.0625 31.9375 16.6875 31.6875 16.4375Z"
                                      fill="#021226"/>
                                <path d="M34.1875 16.4375C33.9375 16.1875 33.5625 16.1875 33.3125 16.4375L32.0625 17.6875C31.8125 17.9375 31.8125 18.3125 32.0625 18.5625C32.1875 18.6875 32.6875 18.8125 32.9375 18.5625L34.1875 17.3125C34.4375 17.0625 34.4375 16.6875 34.1875 16.4375Z"
                                      fill="#021226"/>
                                <path d="M30 25H31.25C31.625 25 31.875 24.75 31.875 24.375C31.875 24 31.625 23.75 31.25 23.75H30C29.625 23.75 29.375 24 29.375 24.375C29.375 24.75 29.625 25 30 25Z"
                                      fill="#021226"/>
                                <path d="M3.6875 15H8.75C9.125 15 9.375 14.75 9.375 14.375C9.375 14 9.125 13.75 8.75 13.75H3.6875C3.375 13.75 3.125 13.5 3.125 13.1875V7.5H11.875V13.1875C11.875 13.5 11.625 13.75 11.3125 13.75C10.9375 13.75 10.6875 14 10.6875 14.375C10.6875 14.75 10.9375 15 11.3125 15C11.8125 15 12.25 14.8125 12.5625 14.5L17.3125 16.875C17.375 16.9375 17.9375 17.0625 18.125 16.625C18.25 16.3125 18.125 15.9375 17.875 15.8125L13.125 13.375C13.125 13.3125 13.125 11.6875 13.125 11.6875L20.1875 15.25C20.25 15.3125 20.6875 15.5 21 15C21.1875 14.6875 21 14.3125 20.75 14.1875L13.125 10.25V4.375C13.125 4 12.875 3.75 12.5 3.75H6.875C6.5 3.75 6.25 4 6.25 4.375C6.25 4.75 6.5 5 6.875 5H11.875V6.25H3.125V5H4.5C4.875 5 5.125 4.75 5.125 4.375C5.125 4 4.875 3.75 4.5 3.75H2.5C2.125 3.75 1.875 4 1.875 4.375V13.1875C1.875 14.1875 2.6875 15 3.6875 15Z"
                                      fill="#021226"/>
                                <path d="M5 26.25C5.375 26.25 5.625 26 5.625 25.625V25H6.25C6.625 25 6.875 24.75 6.875 24.375C6.875 24 6.625 23.75 6.25 23.75H5C4.625 23.75 4.375 24 4.375 24.375V25.625C4.375 26 4.625 26.25 5 26.25Z"
                                      fill="#021226"/>
                                <path d="M8.75 25H10C10.375 25 10.625 24.75 10.625 24.375C10.625 24 10.375 23.75 10 23.75H8.75C8.375 23.75 8.125 24 8.125 24.375C8.125 24.75 8.375 25 8.75 25Z"
                                      fill="#021226"/>
                            </svg>
                            <span class="regular-p1 mt-8">
                            무진동 트레일러
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-24 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="펌프카">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_312_618)">
                                    <path d="M38.8743 25.8982H38.6633V24.5924C38.6633 23.9929 38.1755 23.5051 37.576 23.5051H36.4723L31.7101 18.7428C31.6898 18.7225 31.6681 18.7047 31.6458 18.688V12.1676H35.0829C35.3081 12.1676 35.5136 12.0393 35.6126 11.8369C35.7115 11.6346 35.6867 11.3936 35.5485 11.2158L33.1896 8.18229C33.0779 8.03863 32.9061 7.95458 32.724 7.95458H31.4775L12.2981 0.341697C12.2795 0.334227 12.2604 0.327701 12.2408 0.322119C12.2346 0.32031 12.2283 0.319131 12.222 0.317558C12.2103 0.314649 12.1986 0.311582 12.1866 0.309381C12.1753 0.307258 12.164 0.305921 12.1526 0.304506C12.1457 0.303641 12.1387 0.302462 12.1317 0.301833C12.1178 0.300574 12.1041 0.300103 12.0904 0.299867C12.0864 0.299788 12.0826 0.299316 12.0786 0.299316H12.0699C12.0679 0.299316 12.0659 0.299316 12.064 0.299316H10.6125C10.3067 0.299316 10.0516 0.533079 10.025 0.837685L9.40317 7.95466H5.42387C5.40445 7.1929 4.78006 6.57882 4.01367 6.57882H1.41201C0.63343 6.57874 0 7.21217 0 7.99075V12.2158C0 12.9943 0.63343 13.6278 1.41201 13.6278H4.01367C4.79224 13.6278 5.42567 12.9943 5.42567 12.2158V12.1676H9.1676L8.46749 35.4614H7.92944C6.76558 35.4614 5.81874 36.4082 5.81874 37.5721V39.1112C5.81874 39.4368 6.08277 39.7009 6.40845 39.7009H7.46718C7.79286 39.7009 8.0569 39.4368 8.0569 39.1112C8.0569 38.7855 7.79286 38.5215 7.46718 38.5215H6.99816V37.5721C6.99816 37.0586 7.41592 36.6408 7.92944 36.6408H9.67295H15.3943C15.9078 36.6408 16.3255 37.0586 16.3255 37.5721V38.5215H9.82596C9.50028 38.5215 9.23624 38.7855 9.23624 39.1112C9.23624 39.4368 9.50028 39.7009 9.82596 39.7009H16.9153C17.2409 39.7009 17.505 39.4368 17.505 39.1112V37.5721C17.505 36.4082 16.5581 35.4614 15.3943 35.4614H14.2262L13.5261 12.1676H16.7873V15.1089C16.7873 15.9516 17.473 16.6373 18.3157 16.6373H22.8402C23.683 16.6373 24.3686 15.9516 24.3686 15.1089V12.1676H30.4661V18.6388C30.4156 18.6656 30.368 18.7002 30.3254 18.7428L25.5631 23.5051H24.3787C23.7792 23.5051 23.2914 23.9929 23.2914 24.5924V25.8982H22.7423C22.1216 25.8982 21.6166 26.4032 21.6166 27.0239V28.1332C21.6166 28.7539 22.1216 29.2589 22.7423 29.2589H24.3246C24.6503 29.2589 24.9144 28.9948 24.9144 28.6692C24.9144 28.3435 24.6503 28.0794 24.3246 28.0794H22.796V27.0776H38.8203V28.0794H26.6837C26.358 28.0794 26.094 28.3435 26.094 28.6692C26.094 28.9948 26.358 29.2589 26.6837 29.2589H38.8743C39.495 29.2589 40 28.7539 40 28.1332V27.0239C40 26.4032 39.495 25.8982 38.8743 25.8982ZM11.1529 1.47874H11.5382L12.104 7.95466H10.5871L11.1529 1.47874ZM4.24625 12.2158C4.24625 12.344 4.14191 12.4483 4.01367 12.4483H1.41201C1.28377 12.4483 1.17943 12.344 1.17943 12.2158V7.99075C1.17943 7.8625 1.28377 7.75816 1.41201 7.75816H4.01367C4.14191 7.75816 4.24625 7.8625 4.24625 7.99075V8.54437V11.5779V12.2158ZM5.42567 9.13408H17.3772C17.7029 9.13408 17.9669 8.87005 17.9669 8.54437C17.9669 8.21869 17.7029 7.95466 17.3772 7.95466H13.2878L12.7491 1.78964L28.2806 7.95466H19.736C19.4104 7.95466 19.1463 8.21869 19.1463 8.54437C19.1463 8.87005 19.4104 9.13408 19.736 9.13408H31.3612C31.3623 9.13408 31.3634 9.13424 31.3645 9.13424C31.3652 9.13424 31.3658 9.13408 31.3665 9.13408H32.4355L33.8772 10.9882H23.779H17.3771H5.4256V9.13408H5.42567ZM10.2064 16.8678L11.986 18.1563L10.0889 20.7767L10.2064 16.8678ZM10.3087 29.1505L12.7645 26.0823L12.9135 31.0378L10.3087 29.1505ZM10.4913 22.232L12.5629 19.3707L12.6968 23.8299L10.4913 22.232ZM10.0118 23.3411L12.1867 24.9168L9.87777 27.8013L10.0118 23.3411ZM12.1867 31.9676L9.65761 35.1272L9.80441 30.2417L12.1867 31.9676ZM10.659 15.7395L12.385 13.4505L12.4937 17.0678L10.659 15.7395ZM11.8751 12.1676L10.2842 14.2776L10.3476 12.1676H11.8751ZM10.9009 35.4613L12.9688 32.8779L13.0464 35.4613H10.9009ZM23.1894 15.1089C23.1894 15.3013 23.0329 15.4579 22.8405 15.4579H18.3159C18.1235 15.4579 17.967 15.3013 17.967 15.1089V12.1676H23.1894V15.1089ZM34.8044 23.5051H31.6458V20.3465L34.8044 23.5051ZM30.4664 20.2701V23.5052H27.2313L30.4664 20.2701ZM24.471 24.6845H37.4839V25.8982H24.471V24.6845Z"
                                          fill="#021226"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_312_618">
                                        <rect width="40" height="40" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>
                            <span class="regular-p1 mt-8">
                            펌프카
                        </span>
                        </div>
                    </button>
                </div>
            </div>
            <div class="row m-0">
                <div class="col-12 mt-24 pl-24 pr-24 medium-h5 c-basic-black">
                    운송/운반
                </div>
            </div>
            <div class="row m-0">
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="고속 작업 크레인">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_312_630)">
                                    <path d="M39.376 30.0037C39.0304 30.0037 38.751 29.7243 38.751 29.3787V21.2568C38.751 20.9112 39.0304 20.6318 39.376 20.6318C39.7216 20.6318 40.001 20.9112 40.001 21.2568V29.3787C40.001 29.7243 39.7216 30.0037 39.376 30.0037Z"
                                          fill="#021226"/>
                                    <path d="M39.3766 21.8818C39.1473 21.8818 38.926 21.7556 38.8166 21.5362L35.6916 15.2849C35.5373 14.9762 35.6623 14.6006 35.971 14.4462C36.2791 14.2912 36.656 14.4168 36.8098 14.7256L39.9348 20.9768C40.0891 21.2856 39.9641 21.6612 39.6554 21.8156C39.566 21.8606 39.4704 21.8818 39.3766 21.8818Z"
                                          fill="#021226"/>
                                    <path d="M39.3759 28.1274H32.5034C32.1578 28.1274 31.8784 27.8481 31.8784 27.5024C31.8784 27.1568 32.1578 26.8774 32.5034 26.8774H39.3759C39.7215 26.8774 40.0009 27.1568 40.0009 27.5024C40.0009 27.8481 39.7215 28.1274 39.3759 28.1274Z"
                                          fill="#021226"/>
                                    <path d="M39.3761 30.0038H35.7529C35.4073 30.0038 35.1279 29.7244 35.1279 29.3788C35.1279 29.0332 35.4073 28.7538 35.7529 28.7538H39.3761C39.7217 28.7538 40.0011 29.0332 40.0011 29.3788C40.0011 29.7244 39.7217 30.0038 39.3761 30.0038Z"
                                          fill="#021226"/>
                                    <path d="M26.878 26.2506H3.12305C2.77742 26.2506 2.49805 25.9712 2.49805 25.6256C2.49805 25.28 2.77742 25.0006 3.12305 25.0006H26.878C27.2237 25.0006 27.503 25.28 27.503 25.6256C27.503 25.9712 27.2237 26.2506 26.878 26.2506Z"
                                          fill="#021226"/>
                                    <path d="M36.2508 15.6306H26.8765C26.5308 15.6306 26.2515 15.3506 26.2515 15.0056C26.2515 14.6606 26.5308 14.3806 26.8765 14.3806H36.2508C36.5965 14.3806 36.8758 14.6606 36.8758 15.0056C36.8758 15.3506 36.5965 15.6306 36.2508 15.6306Z"
                                          fill="#021226"/>
                                    <path d="M26.8777 31.2512C26.5327 31.2512 26.2527 30.9719 26.2527 30.6262L26.2515 15.0056C26.2515 14.6606 26.5308 14.3806 26.8765 14.3806C27.2215 14.3806 27.5015 14.6606 27.5015 15.0056L27.5027 30.6262C27.5027 30.9712 27.2233 31.2512 26.8777 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M36.2642 21.8818C36.2611 21.8825 36.2567 21.8825 36.2517 21.8818H29.3779C29.0323 21.8818 28.7529 21.6025 28.7529 21.2568V17.5068C28.7529 17.1618 29.0323 16.8818 29.3779 16.8818H34.3761C34.6129 16.8818 34.8292 17.0156 34.9354 17.2275L36.7611 20.8768C36.8423 20.9825 36.8898 21.1143 36.8898 21.2568C36.8892 21.6018 36.6098 21.8818 36.2642 21.8818ZM30.0029 20.6318H35.2411L33.9898 18.1318H30.0029V20.6318Z"
                                          fill="#021226"/>
                                    <path d="M32.5034 35.6262C30.0915 35.6262 28.1284 33.6631 28.1284 31.2512C28.1284 28.8393 30.0915 26.8762 32.5034 26.8762C34.9153 26.8762 36.8784 28.8393 36.8784 31.2512C36.8784 33.6631 34.9153 35.6262 32.5034 35.6262ZM32.5034 28.1262C30.7803 28.1262 29.3784 29.5281 29.3784 31.2512C29.3784 32.9743 30.7803 34.3762 32.5034 34.3762C34.2265 34.3762 35.6284 32.9743 35.6284 31.2512C35.6284 29.5281 34.2265 28.1262 32.5034 28.1262Z"
                                          fill="#021226"/>
                                    <path d="M16.8794 35.6262C14.4675 35.6262 12.5044 33.6631 12.5044 31.2512C12.5044 28.8393 14.4675 26.8762 16.8794 26.8762C19.2913 26.8762 21.2544 28.8393 21.2544 31.2512C21.2544 33.6631 19.2913 35.6262 16.8794 35.6262ZM16.8794 28.1262C15.1563 28.1262 13.7544 29.5281 13.7544 31.2512C13.7544 32.9743 15.1563 34.3762 16.8794 34.3762C18.6025 34.3762 20.0044 32.9743 20.0044 31.2512C20.0044 29.5281 18.6025 28.1262 16.8794 28.1262Z"
                                          fill="#021226"/>
                                    <path d="M8.13281 35.6262C5.72094 35.6262 3.75781 33.6631 3.75781 31.2512C3.75781 28.8393 5.72094 26.8762 8.13281 26.8762C10.5447 26.8762 12.5078 28.8393 12.5078 31.2512C12.5078 33.6631 10.5447 35.6262 8.13281 35.6262ZM8.13281 28.1262C6.40969 28.1262 5.00781 29.5281 5.00781 31.2512C5.00781 32.9743 6.40969 34.3762 8.13281 34.3762C9.85594 34.3762 11.2578 32.9743 11.2578 31.2512C11.2578 29.5281 9.85594 28.1262 8.13281 28.1262Z"
                                          fill="#021226"/>
                                    <path d="M8.13281 33.1262C7.09906 33.1262 6.25781 32.285 6.25781 31.2512C6.25781 30.2175 7.09906 29.3762 8.13281 29.3762C9.16656 29.3762 10.0078 30.2175 10.0078 31.2512C10.0078 32.285 9.16656 33.1262 8.13281 33.1262ZM8.13281 30.6262C7.78781 30.6262 7.50781 30.9062 7.50781 31.2512C7.50781 31.5962 7.78781 31.8762 8.13281 31.8762C8.47781 31.8762 8.75781 31.5962 8.75781 31.2512C8.75781 30.9062 8.47719 30.6262 8.13281 30.6262Z"
                                          fill="#021226"/>
                                    <path d="M16.8794 33.1262C15.8456 33.1262 15.0044 32.285 15.0044 31.2512C15.0044 30.2175 15.8456 29.3762 16.8794 29.3762C17.9131 29.3762 18.7544 30.2175 18.7544 31.2512C18.7544 32.285 17.9131 33.1262 16.8794 33.1262ZM16.8794 30.6262C16.5344 30.6262 16.2544 30.9062 16.2544 31.2512C16.2544 31.5962 16.5344 31.8762 16.8794 31.8762C17.2244 31.8762 17.5044 31.5962 17.5044 31.2512C17.5044 30.9062 17.2244 30.6262 16.8794 30.6262Z"
                                          fill="#021226"/>
                                    <path d="M32.5024 33.1262C31.4687 33.1262 30.6274 32.285 30.6274 31.2512C30.6274 30.2175 31.4687 29.3762 32.5024 29.3762C33.5362 29.3762 34.3774 30.2175 34.3774 31.2512C34.3774 32.285 33.5362 33.1262 32.5024 33.1262ZM32.5024 30.6262C32.1574 30.6262 31.8774 30.9062 31.8774 31.2512C31.8774 31.5962 32.1574 31.8762 32.5024 31.8762C32.8474 31.8762 33.1274 31.5962 33.1274 31.2512C33.1274 30.9062 32.8474 30.6262 32.5024 30.6262Z"
                                          fill="#021226"/>
                                    <path d="M13.1817 31.2512H11.8354C11.4898 31.2512 11.2104 30.9718 11.2104 30.6262C11.2104 30.2806 11.4898 30.0012 11.8354 30.0012H13.1817C13.5273 30.0012 13.8067 30.2806 13.8067 30.6262C13.8067 30.9718 13.5273 31.2512 13.1817 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M28.8054 31.2512H20.5767C20.231 31.2512 19.9517 30.9718 19.9517 30.6262C19.9517 30.2806 20.231 30.0012 20.5767 30.0012H28.8054C29.151 30.0012 29.4304 30.2806 29.4304 30.6262C29.4304 30.9718 29.151 31.2512 28.8054 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M4.43547 31.2512H1.24609C0.900469 31.2512 0.621094 30.9718 0.621094 30.6262C0.621094 30.2806 0.900469 30.0012 1.24609 30.0012H4.43547C4.78109 30.0012 5.06047 30.2806 5.06047 30.6262C5.06047 30.9718 4.78047 31.2512 4.43547 31.2512Z"
                                          fill="#021226"/>
                                    <path d="M1.24597 31.2513C1.17284 31.2513 1.09909 31.2382 1.02597 31.2119C0.702844 31.0907 0.539719 30.73 0.660344 30.4069L2.53722 25.4063C2.65909 25.0825 3.01909 24.9207 3.34222 25.0407C3.66534 25.1619 3.82847 25.5225 3.70784 25.8457L1.83097 30.8463C1.73659 31.0969 1.49847 31.2513 1.24597 31.2513Z"
                                          fill="#021226"/>
                                    <path d="M29.999 23.7556H29.374C29.0284 23.7556 28.749 23.4762 28.749 23.1306C28.749 22.785 29.0284 22.5056 29.374 22.5056H29.999C30.3446 22.5056 30.624 22.785 30.624 23.1306C30.624 23.4762 30.3446 23.7556 29.999 23.7556Z"
                                          fill="#021226"/>
                                    <path d="M22.4947 26.2712H11.8647C11.5191 26.2712 11.2397 25.9918 11.2397 25.6462V22.5018C11.2397 22.1562 11.5191 21.8768 11.8647 21.8768H22.4947C22.8404 21.8768 23.1197 22.1562 23.1197 22.5018V25.6462C23.1197 25.9918 22.8404 26.2712 22.4947 26.2712ZM12.4897 25.0212H21.8697V23.1268H12.4897V25.0212Z"
                                          fill="#021226"/>
                                    <path d="M14.3667 23.1268C14.0211 23.1268 13.7417 22.8475 13.7417 22.5018V18.7512C13.7417 18.4062 14.0211 18.1262 14.3667 18.1262C14.7123 18.1262 14.9917 18.4062 14.9917 18.7512V22.5018C14.9917 22.8475 14.7123 23.1268 14.3667 23.1268Z"
                                          fill="#021226"/>
                                    <path d="M19.9932 23.1268C19.6475 23.1268 19.3682 22.8475 19.3682 22.5018V18.1262C19.3682 17.7812 19.6475 17.5012 19.9932 17.5012C20.3388 17.5012 20.6182 17.7812 20.6182 18.1262V22.5018C20.6182 22.8475 20.3388 23.1268 19.9932 23.1268Z"
                                          fill="#021226"/>
                                    <path d="M14.3669 19.3762C14.2181 19.3762 14.0681 19.3231 13.9488 19.2156L1.45315 7.9643C1.1969 7.73305 1.17627 7.33805 1.4069 7.0818C1.63752 6.82555 2.03315 6.80555 2.2894 7.03555L14.785 18.2868C15.0413 18.5181 15.0619 18.9131 14.8313 19.1693C14.7081 19.3062 14.5381 19.3762 14.3669 19.3762Z"
                                          fill="#021226"/>
                                    <path d="M19.9923 18.7512C19.8655 18.7512 19.7373 18.7125 19.6261 18.6325L1.50422 5.50498C1.22485 5.30248 1.16235 4.91185 1.36547 4.63248C1.56672 4.3531 1.95735 4.28935 2.23797 4.49248L20.3598 17.62C20.6392 17.8225 20.7017 18.2131 20.4992 18.4925C20.3773 18.6612 20.1861 18.7512 19.9923 18.7512Z"
                                          fill="#021226"/>
                                    <path d="M1.87359 20.0025C1.52859 20.0025 1.24859 19.7225 1.24859 19.3775L1.24609 4.99878C1.24609 4.65378 1.52547 4.37378 1.87109 4.37378C2.21609 4.37378 2.49609 4.65378 2.49609 4.99878L2.49859 19.3775C2.49859 19.7225 2.21922 20.0025 1.87359 20.0025Z"
                                          fill="#021226"/>
                                    <path d="M1.87354 23.1288C0.839785 23.1288 -0.00146484 22.2869 -0.00146484 21.2531C-0.00146484 20.9075 0.27791 20.6281 0.623535 20.6281C0.96916 20.6281 1.24854 20.9075 1.24854 21.2531C1.24854 21.5981 1.52854 21.8788 1.87354 21.8788C2.21854 21.8788 2.49854 21.5981 2.49854 21.2531C2.49854 20.4138 1.59979 19.9394 1.59041 19.935C1.28541 19.7769 1.16229 19.4013 1.31791 19.0956C1.47416 18.7894 1.84604 18.665 2.15291 18.8194C2.21791 18.8519 3.74854 19.6363 3.74854 21.2538C3.74854 22.2869 2.90729 23.1288 1.87354 23.1288Z"
                                          fill="#021226"/>
                                    <path d="M2.49854 18.7531H1.24854C0.90291 18.7531 0.623535 18.4731 0.623535 18.1281C0.623535 17.7831 0.90291 17.5031 1.24854 17.5031H2.49854C2.84416 17.5031 3.12354 17.7831 3.12354 18.1281C3.12354 18.4731 2.84416 18.7531 2.49854 18.7531Z"
                                          fill="#021226"/>
                                    <path d="M12.4906 23.1269C12.2475 23.1269 12.0162 22.9838 11.9156 22.7463L8.17374 13.9375C8.03812 13.62 8.18687 13.2525 8.50437 13.1175C8.81937 12.9838 9.18937 13.1307 9.32374 13.4482L13.0656 22.2575C13.2012 22.575 13.0525 22.9419 12.735 23.0769C12.6556 23.1113 12.5725 23.1269 12.4906 23.1269Z"
                                          fill="#021226"/>
                                    <path d="M24.373 26.2712C24.0274 26.2712 23.748 25.9918 23.748 25.6462V17.5062C23.748 17.1612 24.0274 16.8812 24.373 16.8812C24.7187 16.8812 24.998 17.1612 24.998 17.5062V25.6462C24.998 25.9918 24.7187 26.2712 24.373 26.2712Z"
                                          fill="#021226"/>
                                    <path d="M26.8718 18.1312H24.373C24.0274 18.1312 23.748 17.8512 23.748 17.5062C23.748 17.1612 24.0274 16.8812 24.373 16.8812H26.8718C27.2174 16.8812 27.4968 17.1612 27.4968 17.5062C27.4968 17.8512 27.2174 18.1312 26.8718 18.1312Z"
                                          fill="#021226"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_312_630">
                                        <rect width="40" height="40" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>
                            <span class="regular-p1 mt-8">
                            고속 작업 크레인
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="사다리차">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_312_612)">
                                    <path d="M38.8743 25.8982H38.6633V24.5924C38.6633 23.9929 38.1755 23.5051 37.576 23.5051H36.4723L31.7101 18.7428C31.6898 18.7225 31.6681 18.7047 31.6458 18.688V12.1676H35.0829C35.3081 12.1676 35.5136 12.0393 35.6126 11.8369C35.7115 11.6346 35.6867 11.3936 35.5485 11.2158L33.1896 8.18229C33.0779 8.03863 32.9061 7.95458 32.724 7.95458H31.4775L12.2981 0.341697C12.2795 0.334227 12.2604 0.327701 12.2408 0.322119C12.2346 0.32031 12.2283 0.319131 12.222 0.317558C12.2103 0.314649 12.1986 0.311582 12.1866 0.309381C12.1753 0.307258 12.164 0.305921 12.1526 0.304506C12.1457 0.303641 12.1387 0.302462 12.1317 0.301833C12.1178 0.300574 12.1041 0.300103 12.0904 0.299867C12.0864 0.299788 12.0826 0.299316 12.0786 0.299316H12.0699C12.0679 0.299316 12.0659 0.299316 12.064 0.299316H10.6125C10.3067 0.299316 10.0516 0.533079 10.025 0.837685L9.40317 7.95466H5.42387C5.40445 7.1929 4.78006 6.57882 4.01367 6.57882H1.41201C0.63343 6.57874 0 7.21217 0 7.99075V12.2158C0 12.9943 0.63343 13.6278 1.41201 13.6278H4.01367C4.79224 13.6278 5.42567 12.9943 5.42567 12.2158V12.1676H9.1676L8.46749 35.4614H7.92944C6.76558 35.4614 5.81874 36.4082 5.81874 37.5721V39.1112C5.81874 39.4368 6.08277 39.7009 6.40845 39.7009H7.46718C7.79286 39.7009 8.0569 39.4368 8.0569 39.1112C8.0569 38.7855 7.79286 38.5215 7.46718 38.5215H6.99816V37.5721C6.99816 37.0586 7.41592 36.6408 7.92944 36.6408H9.67295H15.3943C15.9078 36.6408 16.3255 37.0586 16.3255 37.5721V38.5215H9.82596C9.50028 38.5215 9.23624 38.7855 9.23624 39.1112C9.23624 39.4368 9.50028 39.7009 9.82596 39.7009H16.9153C17.2409 39.7009 17.505 39.4368 17.505 39.1112V37.5721C17.505 36.4082 16.5581 35.4614 15.3943 35.4614H14.2262L13.5261 12.1676H16.7873V15.1089C16.7873 15.9516 17.473 16.6373 18.3157 16.6373H22.8402C23.683 16.6373 24.3686 15.9516 24.3686 15.1089V12.1676H30.4661V18.6388C30.4156 18.6656 30.368 18.7002 30.3254 18.7428L25.5631 23.5051H24.3787C23.7792 23.5051 23.2914 23.9929 23.2914 24.5924V25.8982H22.7423C22.1216 25.8982 21.6166 26.4032 21.6166 27.0239V28.1332C21.6166 28.7539 22.1216 29.2589 22.7423 29.2589H24.3246C24.6503 29.2589 24.9144 28.9948 24.9144 28.6692C24.9144 28.3435 24.6503 28.0794 24.3246 28.0794H22.796V27.0776H38.8203V28.0794H26.6837C26.358 28.0794 26.094 28.3435 26.094 28.6692C26.094 28.9948 26.358 29.2589 26.6837 29.2589H38.8743C39.495 29.2589 40 28.7539 40 28.1332V27.0239C40 26.4032 39.495 25.8982 38.8743 25.8982ZM11.1529 1.47874H11.5382L12.104 7.95466H10.5871L11.1529 1.47874ZM4.24625 12.2158C4.24625 12.344 4.14191 12.4483 4.01367 12.4483H1.41201C1.28377 12.4483 1.17943 12.344 1.17943 12.2158V7.99075C1.17943 7.8625 1.28377 7.75816 1.41201 7.75816H4.01367C4.14191 7.75816 4.24625 7.8625 4.24625 7.99075V8.54437V11.5779V12.2158ZM5.42567 9.13408H17.3772C17.7029 9.13408 17.9669 8.87005 17.9669 8.54437C17.9669 8.21869 17.7029 7.95466 17.3772 7.95466H13.2878L12.7491 1.78964L28.2806 7.95466H19.736C19.4104 7.95466 19.1463 8.21869 19.1463 8.54437C19.1463 8.87005 19.4104 9.13408 19.736 9.13408H31.3612C31.3623 9.13408 31.3634 9.13424 31.3645 9.13424C31.3652 9.13424 31.3658 9.13408 31.3665 9.13408H32.4355L33.8772 10.9882H23.779H17.3771H5.4256V9.13408H5.42567ZM10.2064 16.8678L11.986 18.1563L10.0889 20.7767L10.2064 16.8678ZM10.3087 29.1505L12.7645 26.0823L12.9135 31.0378L10.3087 29.1505ZM10.4913 22.232L12.5629 19.3707L12.6968 23.8299L10.4913 22.232ZM10.0118 23.3411L12.1867 24.9168L9.87777 27.8013L10.0118 23.3411ZM12.1867 31.9676L9.65761 35.1272L9.80441 30.2417L12.1867 31.9676ZM10.659 15.7395L12.385 13.4505L12.4937 17.0678L10.659 15.7395ZM11.8751 12.1676L10.2842 14.2776L10.3476 12.1676H11.8751ZM10.9009 35.4613L12.9688 32.8779L13.0464 35.4613H10.9009ZM23.1894 15.1089C23.1894 15.3013 23.0329 15.4579 22.8405 15.4579H18.3159C18.1235 15.4579 17.967 15.3013 17.967 15.1089V12.1676H23.1894V15.1089ZM34.8044 23.5051H31.6458V20.3465L34.8044 23.5051ZM30.4664 20.2701V23.5052H27.2313L30.4664 20.2701ZM24.471 24.6845H37.4839V25.8982H24.471V24.6845Z"
                                          fill="#021226"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_312_612">
                                        <rect width="40" height="40" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>
                            <span class="regular-p1 mt-8">
                            사다리차
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-16 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="풀 크레인">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M32.2507 1.9401L5.65527 13.1717C4.7016 13.2556 3.93774 14.0599 3.93774 15.0334V20.6572H3.31519C2.28725 20.6572 1.43652 21.5017 1.43652 22.5297V26.9083C1.43652 27.9363 2.28725 28.7821 3.31519 28.7821H5.81519V30.0822C3.69733 30.3858 2.06396 32.205 2.06396 34.4059C2.06396 36.8188 4.02482 38.7846 6.43774 38.7846H25.8103C28.2232 38.7846 30.189 36.8188 30.189 34.4059C30.189 32.2065 28.5542 30.3877 26.4377 30.0822V28.7821H28.939C29.9671 28.7821 30.8433 27.9393 30.8127 26.89V22.5297C30.813 22.4512 30.7986 22.3733 30.77 22.3003L29.6079 19.3938L34.3955 6.23709C34.6809 6.18394 34.9423 6.09107 35.1853 5.94896V22.5298H34.5627C34.3056 22.5303 34.0751 22.6883 33.9817 22.9277L32.7317 26.0503C32.6777 26.1878 32.6743 26.3401 32.722 26.48L33.3446 28.3526C33.4291 28.6097 33.6696 28.7831 33.9403 28.7822H35.1854V30.1104C34.0429 30.431 33.3128 31.4037 33.3128 32.5335C33.3128 33.9068 34.4395 35.0335 35.8128 35.0335C37.1861 35.0335 38.314 33.9068 38.314 32.5335C38.314 31.6999 37.0628 31.6999 37.0628 32.5335C37.0628 33.2312 36.5106 33.7834 35.8128 33.7834C35.115 33.7834 34.5628 33.2312 34.5628 32.5335C34.5628 31.8357 35.115 31.2822 35.8128 31.2822C36.1581 31.281 36.4367 31.0001 36.4354 30.6548V28.7822H37.6866C37.9568 28.7825 38.1966 28.6093 38.2811 28.3526L38.9036 26.48C38.9517 26.3401 38.9486 26.188 38.8951 26.0503L37.6439 22.9277C37.5505 22.6882 37.3199 22.5303 37.0628 22.5298H36.4353V3.7798C36.4353 2.40651 35.3135 1.28467 33.9402 1.28467C33.3035 1.28467 32.7207 1.50529 32.2507 1.94017V1.9401ZM33.9402 2.52971C34.638 2.52971 35.1853 3.08191 35.1853 3.77966C35.1853 4.47743 34.638 5.03091 33.9402 5.03091C33.2424 5.03091 32.6902 4.47743 32.6902 3.77966C32.6902 3.08191 33.2424 2.52971 33.9402 2.52971ZM15.9519 20.6572H9.40405L8.55566 17.8337C8.47992 17.5628 8.23271 17.376 7.95142 17.3771C7.5274 17.377 7.22577 17.7901 7.35571 18.1937L8.09668 20.6572H5.18774V16.79C5.38512 16.8611 5.59479 16.9059 5.81519 16.9059C6.84331 16.9059 7.68774 16.0615 7.68774 15.0334C7.68774 14.5857 7.52136 14.1775 7.25561 13.8529L31.4536 3.63447C31.4505 3.68361 31.439 3.72989 31.439 3.77973C31.439 4.85843 32.1315 5.79129 33.0955 6.13934L32.8184 6.90838H30.6907L30.9067 6.66299C31.2712 6.26314 30.99 5.62053 30.449 5.61691C30.2647 5.61566 30.0891 5.69534 29.9693 5.83542L22.407 14.406H18.9365C17.813 14.406 17.2929 15.2998 17.075 16.1705L15.9519 20.6572ZM30.731 8.15833H32.363L31.7869 9.74284L30.731 8.15833ZM29.3845 8.38772L30.8958 10.6595H27.3801L29.3845 8.38772ZM27.7964 11.9046H31.0007L30.0461 14.5291L27.7964 11.9046ZM26.2144 11.9816L29.5566 15.8781L28.9109 17.6518L28.27 16.0478C28.1354 15.7114 27.9834 15.3459 27.7073 15.0151C27.4311 14.6843 26.9666 14.4059 26.4377 14.4059H24.0745L26.2144 11.9816ZM5.81519 14.4059C6.16777 14.4059 6.43774 14.6808 6.43774 15.0334C6.43774 15.3859 6.16777 15.6559 5.81519 15.6559C5.4626 15.6559 5.18774 15.3859 5.18774 15.0334C5.18774 14.6808 5.4626 14.4059 5.81519 14.4059ZM18.9365 15.6559H26.4377C26.6014 15.6559 26.6352 15.6836 26.7466 15.817C26.8581 15.9505 26.9841 16.2075 27.1067 16.5141L29.5615 22.6505V26.9083C29.5614 26.9154 29.5614 26.9201 29.5615 26.9272C29.571 27.2624 29.2959 27.5315 28.939 27.5315H3.31396C2.95692 27.5315 2.68652 27.266 2.68652 26.9089V22.5302C2.68652 22.1732 2.95692 21.9077 3.31396 21.9077H16.4353C16.7235 21.9089 16.9752 21.7126 17.0444 21.4328L18.3018 16.3969C18.4198 15.9239 18.5823 15.6565 18.9365 15.6565V15.6559ZM20.1865 16.9059C19.9026 16.906 19.6544 17.0975 19.5823 17.3722L18.5813 21.1234C18.4774 21.5195 18.776 21.9069 19.1855 21.9071H22.064V23.7809C22.0633 23.9035 22.0983 24.0236 22.1653 24.1264L23.4165 26.0038C23.5329 26.1777 23.7286 26.2815 23.9377 26.2809H27.689C28.0322 26.2796 28.3102 26.0016 28.3115 25.6583V23.1583C28.3128 23.0743 28.2969 22.9908 28.2652 22.913L25.8933 17.2892C25.796 17.057 25.5689 16.906 25.3172 16.9059H20.1865ZM20.6663 18.1559H22.064V20.6572H19.9973L20.6663 18.1559ZM23.3152 18.1559H24.9021L27.0603 23.2828V25.0309H24.2747L23.3152 23.5917V21.2797V18.1559ZM4.55542 23.1485C4.21024 23.1533 3.9337 23.4357 3.93774 23.7809V25.6583C3.91936 26.5098 5.20613 26.5098 5.18774 25.6583V23.7809C5.19211 23.43 4.90632 23.1445 4.55542 23.1485ZM7.05175 23.1485C6.70802 23.1556 6.43369 23.4371 6.43774 23.7809V25.6583C6.45605 26.4732 7.66945 26.4732 7.68774 25.6583V23.7809C7.69211 23.4285 7.40409 23.1424 7.05175 23.1485ZM9.55175 23.1485C9.20802 23.1556 8.93369 23.4371 8.93774 23.7809V25.6583C8.93774 26.4925 10.189 26.4925 10.189 25.6583V23.7809C10.1933 23.428 9.90457 23.1417 9.55175 23.1485ZM34.9875 23.7809H36.6392L37.6499 26.2992L37.2385 27.5309H34.387L33.9768 26.2992L34.9875 23.7809ZM7.0603 28.7821H25.1877V30.0322H23.3152C22.5001 30.0511 22.5001 31.264 23.3152 31.2821H25.8103C27.5524 31.2821 28.939 32.6638 28.939 34.4059C28.939 36.148 27.5524 37.5346 25.8103 37.5346H6.43774C4.69569 37.5346 3.31396 36.148 3.31396 34.4059C3.31396 32.6638 4.69569 31.2821 6.43774 31.2821H20.814C21.666 31.301 21.666 30.0132 20.814 30.0322H7.0603V28.7821ZM7.68774 32.5333C6.65962 32.5333 5.81519 33.3778 5.81519 34.4059C5.81519 35.434 6.65962 36.2833 7.68774 36.2833C8.71587 36.2833 9.56152 35.4341 9.56152 34.4059C9.56152 33.3778 8.71587 32.5333 7.68774 32.5333ZM13.3127 32.5333C12.2846 32.5333 11.439 33.3778 11.439 34.4059C11.439 35.4341 12.2846 36.2833 13.3127 36.2833C14.3408 36.2833 15.1902 35.434 15.1902 34.4059C15.1902 33.3778 14.3408 32.5333 13.3127 32.5333ZM18.9365 32.5333C17.9084 32.5333 17.0627 33.3778 17.0627 34.4059C17.0627 35.4341 17.9084 36.2833 18.9365 36.2833C19.9646 36.2833 20.814 35.4341 20.814 34.4059C20.814 33.3778 19.9646 32.5333 18.9365 32.5333ZM24.5652 32.5333C23.537 32.5333 22.6877 33.3778 22.6877 34.4059C22.6877 35.4341 23.537 36.2833 24.5652 36.2833C25.5933 36.2833 26.4377 35.4341 26.4377 34.4059C26.4377 33.3778 25.5933 32.5333 24.5652 32.5333ZM7.68774 33.7834C8.04032 33.7834 8.3103 34.0533 8.3103 34.4059C8.3103 34.7585 8.04032 35.0333 7.68774 35.0333C7.33516 35.0333 7.0603 34.7585 7.0603 34.4059C7.0603 34.0533 7.33516 33.7834 7.68774 33.7834ZM13.3127 33.7834C13.6653 33.7834 13.9402 34.0533 13.9402 34.4059C13.9402 34.7585 13.6653 35.0333 13.3127 35.0333C12.9602 35.0333 12.689 34.7585 12.689 34.4059C12.689 34.0533 12.9602 33.7834 13.3127 33.7834ZM18.9365 33.7834C19.2891 33.7834 19.564 34.0533 19.564 34.4059C19.564 34.7585 19.2891 35.0333 18.9365 35.0333C18.5839 35.0333 18.3127 34.7585 18.3127 34.4059C18.3127 34.0533 18.5839 33.7834 18.9365 33.7834ZM24.5652 33.7834C24.9178 33.7834 25.1877 34.0533 25.1877 34.4059C25.1877 34.7585 24.9178 35.0333 24.5652 35.0333C24.2126 35.0333 23.9377 34.7585 23.9377 34.4059C23.9377 34.0533 24.2126 33.7834 24.5652 33.7834Z"
                                      fill="#021226"/>
                            </svg>
                            <span class="regular-p1 mt-8">
                            풀 크레인
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-24 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="무진동 트레일러">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M38.75 32.5C39.125 32.5 39.375 32.25 39.375 31.875V21.75L36.25 14.4375C35.6875 13.25 34.5 12.5 33.25 12.5H28.875C27.75 12.5 26.875 13.375 26.875 14.5V28.75H17.625C17.25 28.75 17 29 17 29.375C17 29.75 17.25 30 17.625 30H28.5625C28.375 30.375 28.25 30.8125 28.1875 31.25H11.8125C11.75 30.8125 11.625 30.375 11.4375 30H15.0625C15.4375 30 15.6875 29.75 15.6875 29.375C15.6875 29 15.4375 28.75 15.0625 28.75H13.125V26L22.1875 20.5625C22.5 20.375 22.5625 20 22.375 19.6875C22.1875 19.375 21.8125 19.3125 21.5 19.5L13.125 24.5C13.125 24.5 13.25 22.5 12.9375 22.3125L22.875 16.375C23.1875 16.1875 23.5625 16.1875 23.875 16.375C24.1875 16.5625 24.375 16.875 24.375 17.25C24.375 17.625 24.1875 17.9375 23.875 18.125C23.5625 18.3125 23.5 18.6875 23.6875 19C23.875 19.3125 24.25 19.375 24.5625 19.1875C25.25 18.8125 25.625 18.0625 25.625 17.25C25.625 16.4375 25.1875 15.6875 24.5 15.3125C23.8125 14.9375 22.9375 14.9375 22.25 15.3125C22.25 15.3125 12.125 21.4375 12.0625 21.4375C11.8125 21.3125 11.5625 21.25 11.25 21.25H3.6875C2.6875 21.25 1.875 22.0625 1.875 23.0625V28.75H1.25C0.875 28.75 0.625 29 0.625 29.375V31.875C0.625 32.25 0.875 32.5 1.25 32.5H3.1875C3.3125 33.5 3.8125 34.3125 4.4375 35H1.25C0.875 35 0.625 35.25 0.625 35.625C0.625 36 0.875 36.25 1.25 36.25H12.5C12.875 36.25 13.125 36 13.125 35.625C13.125 35.25 12.875 35 12.5 35H10.5625C11.25 34.3125 11.6875 33.5 11.8125 32.5H28.1875C28.3125 33.5 28.8125 34.3125 29.4375 35H27.5C27.125 35 26.875 35.25 26.875 35.625C26.875 36 27.125 36.25 27.5 36.25H38.75C39.125 36.25 39.375 36 39.375 35.625C39.375 35.25 39.125 35 38.75 35H35.5625C36.25 34.3125 36.6875 33.5 36.8125 32.5H38.75ZM3.125 23.0625C3.125 22.75 3.375 22.5 3.6875 22.5H11.25C11.5625 22.5 11.8125 22.75 11.8125 23.0625V28.75H10.5C9.6875 28 8.625 27.5 7.4375 27.5C6.25 27.5 5.1875 28 4.375 28.75H3.125V23.0625ZM3.1875 31.25H1.875V30H3.5625C3.375 30.375 3.25 30.8125 3.1875 31.25ZM7.5 35C5.75 35 4.375 33.625 4.375 31.875C4.375 30.125 5.75 28.75 7.5 28.75C9.25 28.75 10.625 30.125 10.625 31.875C10.625 33.625 9.25 35 7.5 35ZM28.125 28.75V22.5H33.5C33.875 22.5 34.125 22.25 34.125 21.875C34.125 21.5 33.875 21.25 33.5 21.25H28.125V14.5C28.125 14.0625 28.4375 13.75 28.875 13.75H33.25C34.0625 13.75 34.75 14.25 35.125 14.9375L37.8125 21.25H36.25C35.875 21.25 35.625 21.5 35.625 21.875C35.625 22.25 35.875 22.5 36.25 22.5H38.125V23.75H37.5C37.125 23.75 36.875 24 36.875 24.375C36.875 24.75 37.125 25 37.5 25H38.125V26.25H37.5C37.125 26.25 36.875 26.5 36.875 26.875C36.875 27.25 37.125 27.5 37.5 27.5H38.125V28.75H35.5625C34.75 28 33.6875 27.5 32.5 27.5C31.3125 27.5 30.25 28 29.4375 28.75H28.125ZM32.5 35C30.75 35 29.375 33.625 29.375 31.875C29.375 30.125 30.75 28.75 32.5 28.75C34.25 28.75 35.625 30.125 35.625 31.875C35.625 33.625 34.25 35 32.5 35ZM38.125 30V31.25H36.8125C36.75 30.8125 36.625 30.375 36.4375 30H38.125Z"
                                      fill="#021226"/>
                                <path d="M25 35H15C14.625 35 14.375 35.25 14.375 35.625C14.375 36 14.625 36.25 15 36.25H25C25.375 36.25 25.625 36 25.625 35.625C25.625 35.25 25.375 35 25 35Z"
                                      fill="#021226"/>
                                <path d="M7.5 30C6.4375 30 5.625 30.8125 5.625 31.875C5.625 32.9375 6.4375 33.75 7.5 33.75C7.875 33.75 8.125 33.5 8.125 33.125C8.125 32.75 7.875 32.5 7.5 32.5C7.125 32.5 6.875 32.25 6.875 31.875C6.875 31.5 7.125 31.25 7.5 31.25C7.875 31.25 8.125 31.5 8.125 31.875C8.125 32.25 8.375 32.5 8.75 32.5C9.125 32.5 9.375 32.25 9.375 31.875C9.375 30.8125 8.5625 30 7.5 30Z"
                                      fill="#021226"/>
                                <path d="M32.5 30C32.125 30 31.875 30.25 31.875 30.625C31.875 31 32.125 31.25 32.5 31.25C32.875 31.25 33.125 31.5 33.125 31.875C33.125 32.25 32.875 32.5 32.5 32.5C32.125 32.5 31.875 32.25 31.875 31.875C31.875 31.5 31.625 31.25 31.25 31.25C30.875 31.25 30.625 31.5 30.625 31.875C30.625 32.9375 31.4375 33.75 32.5 33.75C33.5625 33.75 34.375 32.9375 34.375 31.875C34.375 30.8125 33.5625 30 32.5 30Z"
                                      fill="#021226"/>
                                <path d="M31.6875 16.4375C31.4375 16.1875 31.0625 16.1875 30.8125 16.4375L29.5625 17.6875C29.3125 17.9375 29.3125 18.3125 29.5625 18.5625C29.8125 18.875 30.3125 18.6875 30.4375 18.5625L31.6875 17.3125C31.9375 17.0625 31.9375 16.6875 31.6875 16.4375Z"
                                      fill="#021226"/>
                                <path d="M34.1875 16.4375C33.9375 16.1875 33.5625 16.1875 33.3125 16.4375L32.0625 17.6875C31.8125 17.9375 31.8125 18.3125 32.0625 18.5625C32.1875 18.6875 32.6875 18.8125 32.9375 18.5625L34.1875 17.3125C34.4375 17.0625 34.4375 16.6875 34.1875 16.4375Z"
                                      fill="#021226"/>
                                <path d="M30 25H31.25C31.625 25 31.875 24.75 31.875 24.375C31.875 24 31.625 23.75 31.25 23.75H30C29.625 23.75 29.375 24 29.375 24.375C29.375 24.75 29.625 25 30 25Z"
                                      fill="#021226"/>
                                <path d="M3.6875 15H8.75C9.125 15 9.375 14.75 9.375 14.375C9.375 14 9.125 13.75 8.75 13.75H3.6875C3.375 13.75 3.125 13.5 3.125 13.1875V7.5H11.875V13.1875C11.875 13.5 11.625 13.75 11.3125 13.75C10.9375 13.75 10.6875 14 10.6875 14.375C10.6875 14.75 10.9375 15 11.3125 15C11.8125 15 12.25 14.8125 12.5625 14.5L17.3125 16.875C17.375 16.9375 17.9375 17.0625 18.125 16.625C18.25 16.3125 18.125 15.9375 17.875 15.8125L13.125 13.375C13.125 13.3125 13.125 11.6875 13.125 11.6875L20.1875 15.25C20.25 15.3125 20.6875 15.5 21 15C21.1875 14.6875 21 14.3125 20.75 14.1875L13.125 10.25V4.375C13.125 4 12.875 3.75 12.5 3.75H6.875C6.5 3.75 6.25 4 6.25 4.375C6.25 4.75 6.5 5 6.875 5H11.875V6.25H3.125V5H4.5C4.875 5 5.125 4.75 5.125 4.375C5.125 4 4.875 3.75 4.5 3.75H2.5C2.125 3.75 1.875 4 1.875 4.375V13.1875C1.875 14.1875 2.6875 15 3.6875 15Z"
                                      fill="#021226"/>
                                <path d="M5 26.25C5.375 26.25 5.625 26 5.625 25.625V25H6.25C6.625 25 6.875 24.75 6.875 24.375C6.875 24 6.625 23.75 6.25 23.75H5C4.625 23.75 4.375 24 4.375 24.375V25.625C4.375 26 4.625 26.25 5 26.25Z"
                                      fill="#021226"/>
                                <path d="M8.75 25H10C10.375 25 10.625 24.75 10.625 24.375C10.625 24 10.375 23.75 10 23.75H8.75C8.375 23.75 8.125 24 8.125 24.375C8.125 24.75 8.375 25 8.75 25Z"
                                      fill="#021226"/>
                            </svg>
                            <span class="regular-p1 mt-8">
                            무진동 트레일러
                        </span>
                        </div>
                    </button>
                </div>
                <div class="pt-24 pl-24">
                    <button type="button" class="btn btn-block btn-car" data-type="공사" data-car="펌프카">
                        <div class="d-flex flex-column bd-highlight w-100">
                            <svg class="mr-auto ml-auto mt-12" width="40" height="40" viewBox="0 0 40 40" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_312_618)">
                                    <path d="M38.8743 25.8982H38.6633V24.5924C38.6633 23.9929 38.1755 23.5051 37.576 23.5051H36.4723L31.7101 18.7428C31.6898 18.7225 31.6681 18.7047 31.6458 18.688V12.1676H35.0829C35.3081 12.1676 35.5136 12.0393 35.6126 11.8369C35.7115 11.6346 35.6867 11.3936 35.5485 11.2158L33.1896 8.18229C33.0779 8.03863 32.9061 7.95458 32.724 7.95458H31.4775L12.2981 0.341697C12.2795 0.334227 12.2604 0.327701 12.2408 0.322119C12.2346 0.32031 12.2283 0.319131 12.222 0.317558C12.2103 0.314649 12.1986 0.311582 12.1866 0.309381C12.1753 0.307258 12.164 0.305921 12.1526 0.304506C12.1457 0.303641 12.1387 0.302462 12.1317 0.301833C12.1178 0.300574 12.1041 0.300103 12.0904 0.299867C12.0864 0.299788 12.0826 0.299316 12.0786 0.299316H12.0699C12.0679 0.299316 12.0659 0.299316 12.064 0.299316H10.6125C10.3067 0.299316 10.0516 0.533079 10.025 0.837685L9.40317 7.95466H5.42387C5.40445 7.1929 4.78006 6.57882 4.01367 6.57882H1.41201C0.63343 6.57874 0 7.21217 0 7.99075V12.2158C0 12.9943 0.63343 13.6278 1.41201 13.6278H4.01367C4.79224 13.6278 5.42567 12.9943 5.42567 12.2158V12.1676H9.1676L8.46749 35.4614H7.92944C6.76558 35.4614 5.81874 36.4082 5.81874 37.5721V39.1112C5.81874 39.4368 6.08277 39.7009 6.40845 39.7009H7.46718C7.79286 39.7009 8.0569 39.4368 8.0569 39.1112C8.0569 38.7855 7.79286 38.5215 7.46718 38.5215H6.99816V37.5721C6.99816 37.0586 7.41592 36.6408 7.92944 36.6408H9.67295H15.3943C15.9078 36.6408 16.3255 37.0586 16.3255 37.5721V38.5215H9.82596C9.50028 38.5215 9.23624 38.7855 9.23624 39.1112C9.23624 39.4368 9.50028 39.7009 9.82596 39.7009H16.9153C17.2409 39.7009 17.505 39.4368 17.505 39.1112V37.5721C17.505 36.4082 16.5581 35.4614 15.3943 35.4614H14.2262L13.5261 12.1676H16.7873V15.1089C16.7873 15.9516 17.473 16.6373 18.3157 16.6373H22.8402C23.683 16.6373 24.3686 15.9516 24.3686 15.1089V12.1676H30.4661V18.6388C30.4156 18.6656 30.368 18.7002 30.3254 18.7428L25.5631 23.5051H24.3787C23.7792 23.5051 23.2914 23.9929 23.2914 24.5924V25.8982H22.7423C22.1216 25.8982 21.6166 26.4032 21.6166 27.0239V28.1332C21.6166 28.7539 22.1216 29.2589 22.7423 29.2589H24.3246C24.6503 29.2589 24.9144 28.9948 24.9144 28.6692C24.9144 28.3435 24.6503 28.0794 24.3246 28.0794H22.796V27.0776H38.8203V28.0794H26.6837C26.358 28.0794 26.094 28.3435 26.094 28.6692C26.094 28.9948 26.358 29.2589 26.6837 29.2589H38.8743C39.495 29.2589 40 28.7539 40 28.1332V27.0239C40 26.4032 39.495 25.8982 38.8743 25.8982ZM11.1529 1.47874H11.5382L12.104 7.95466H10.5871L11.1529 1.47874ZM4.24625 12.2158C4.24625 12.344 4.14191 12.4483 4.01367 12.4483H1.41201C1.28377 12.4483 1.17943 12.344 1.17943 12.2158V7.99075C1.17943 7.8625 1.28377 7.75816 1.41201 7.75816H4.01367C4.14191 7.75816 4.24625 7.8625 4.24625 7.99075V8.54437V11.5779V12.2158ZM5.42567 9.13408H17.3772C17.7029 9.13408 17.9669 8.87005 17.9669 8.54437C17.9669 8.21869 17.7029 7.95466 17.3772 7.95466H13.2878L12.7491 1.78964L28.2806 7.95466H19.736C19.4104 7.95466 19.1463 8.21869 19.1463 8.54437C19.1463 8.87005 19.4104 9.13408 19.736 9.13408H31.3612C31.3623 9.13408 31.3634 9.13424 31.3645 9.13424C31.3652 9.13424 31.3658 9.13408 31.3665 9.13408H32.4355L33.8772 10.9882H23.779H17.3771H5.4256V9.13408H5.42567ZM10.2064 16.8678L11.986 18.1563L10.0889 20.7767L10.2064 16.8678ZM10.3087 29.1505L12.7645 26.0823L12.9135 31.0378L10.3087 29.1505ZM10.4913 22.232L12.5629 19.3707L12.6968 23.8299L10.4913 22.232ZM10.0118 23.3411L12.1867 24.9168L9.87777 27.8013L10.0118 23.3411ZM12.1867 31.9676L9.65761 35.1272L9.80441 30.2417L12.1867 31.9676ZM10.659 15.7395L12.385 13.4505L12.4937 17.0678L10.659 15.7395ZM11.8751 12.1676L10.2842 14.2776L10.3476 12.1676H11.8751ZM10.9009 35.4613L12.9688 32.8779L13.0464 35.4613H10.9009ZM23.1894 15.1089C23.1894 15.3013 23.0329 15.4579 22.8405 15.4579H18.3159C18.1235 15.4579 17.967 15.3013 17.967 15.1089V12.1676H23.1894V15.1089ZM34.8044 23.5051H31.6458V20.3465L34.8044 23.5051ZM30.4664 20.2701V23.5052H27.2313L30.4664 20.2701ZM24.471 24.6845H37.4839V25.8982H24.471V24.6845Z"
                                          fill="#021226"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_312_618">
                                        <rect width="40" height="40" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>
                            <span class="regular-p1 mt-8">
                            펌프카
                        </span>
                        </div>
                    </button>
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
                    <button type="button" class="btn btn-block btn-box is-active" data-work="전체">
                        <span class="medium-h6 my-auto">
                            전체
                        </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-work="일반">
                        <span class="medium-h6 my-auto">
                            일반
                        </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-work="긴급">
                        <span class="medium-h6 my-auto">
                            긴급
                        </span>
                    </button>
                </div>
            </div>
            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-work-time="오전 09:00 ~ 12:00">
                        <span class="medium-h6 my-auto">
                            오전 09:00 ~ 12:00
                        </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-work-time="오후 12:00 ~ 18:00">
                        <span class="medium-h6 my-auto">
                            오후 12:00 ~ 18:00
                        </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-work-time="야간 18:00 ~ 22:00">
                        <span class="medium-h6 my-auto">
                            야간 18:00 ~ 22:00
                        </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-work-time="야간(오전) 22:00 ~ 09:00">
                        <span class="medium-h6 my-auto">
                            야간(오전) 22:00 ~ 09:00
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
                    <button type="button" class="btn btn-block btn-box is-active" data-day="전체">
                        <span class="medium-h6 my-auto">전체</span>
                    </button>
                </div>

                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="평일 월 ~ 금">
                        <span class="medium-h6 my-auto">평일 월 ~ 금</span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="주말 토 ~ 일">
                        <span class="medium-h6 my-auto">주말 토 ~ 일</span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="월">
                        <span class="medium-h6 my-auto">월</span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="화">
                        <span class="medium-h6 my-auto">화</span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="수">
                        <span class="medium-h6 my-auto">수</span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="목">
                        <span class="medium-h6 my-auto">목</span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="금">
                        <span class="medium-h6 my-auto">금</span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="토">
                        <span class="medium-h6 my-auto">토</span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-day="토">
                        <span class="medium-h6 my-auto">일</span>
                    </button>
                </div>
            </div>
            <div class="row m-0">
                <div class="col-12 pl-24 pr-24 pb-24 pt-24">
                    <button type="button" class="btn btn-block btn-blue justify-content-center">
                        <span class="medium-h5 ml-auto mr-auto">요일 설정 완료</span>
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
                    <button type="button" class="btn btn-block btn-box is-active" data-location="전체">
                <span class="medium-h6 my-auto">
                    전체
                </span>
                    </button>
                </div>

                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-location="1~5km 이내">
                <span class="medium-h6 my-auto">
                    1~5km 이내
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-location="5km~10km 이내">
                <span class="medium-h6 my-auto">
                    5km~10km 이내
                </span>
                    </button>
                </div>
            </div>

            <div class="row m-0">
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-location="10 ~ 20km 이내">
                <span class="medium-h6 my-auto">
                    10 ~ 20km 이내
                </span>
                    </button>
                </div>
                <div class="pt-16 pl-16">
                    <button type="button" class="btn btn-block btn-box" data-location="20km 이상">
                <span class="medium-h6 my-auto">
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
    </div>
    <!--footer-->
    <jsp:include page="../../view/common/footer.jsp" flush="false">
        <jsp:param name="type" value="main"/>
    </jsp:include>
</div>
<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="/resources/js/module/work-filter.js"></script>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        let btn_region = document.querySelectorAll('.btn-box[data-region]');
        btn_region.forEach(function (region) {
            region.addEventListener('click', regionButtonClickEventListener);
        });
        let btn_cars = document.querySelectorAll('.btn-car');
        btn_cars.forEach(function (car) {
            car.addEventListener('click', carButtonClickEventListener);
        });

        let btn_work = document.querySelectorAll('.btn-box[data-work]');
        btn_work.forEach(function (work) {
            work.addEventListener('click', workButtonClickEventListener)
        });

        let btn_work_time = document.querySelectorAll('.btn-box[data-work-time]');
        btn_work_time.forEach(function (work_time) {
            work_time.addEventListener('click', workTimeButtonClickEventListener);
        });

        let btn_day = document.querySelectorAll('.btn-box[data-day]')
        btn_day.forEach(function (day) {
            day.addEventListener('click', workDayButtonClickEventListener);
        });

        let btn_location = document.querySelectorAll('.btn-box[data-location]');
        btn_location.forEach(function (location) {
            location.addEventListener('click', workLocationButtonClickEventListener);
        });
    });

    function regionButtonClickEventListener(event) {
        console.log('regionButtonClickEventListener', this, event);
        let region = this.dataset.region;
        let type = this.dataset.type;
        if (this.classList.contains('is-active')) {
            this.classList.remove('is-active');
            //해제시
            return;
        }
        //등록시
        if (type === '전체') {
            let buttons = document.querySelectorAll('[data-region="' + region + '"]');
            buttons.forEach(function (button) {
                if (button.classList.contains('is-active')) {
                    button.classList.remove('is-active');
                }
            });
            if (!this.classList.contains('is-active')) {
                this.classList.add('is-active');
            }
        } else {
            document.querySelector('[data-region="' + region + '"][data-type="전체"]').classList.remove('is-active');
            if (!this.classList.contains('is-active')) {
                this.classList.add('is-active');
            }
            let buttons = document.querySelectorAll('[data-region="' + region + '"]:not([data-type="전체"])');
            let check = false;
            buttons.forEach(function (button) {
                if (!button.classList.contains('is-active')) {
                    check = true;
                }
            });
            if (!check) {
                document.querySelector('[data-region="' + region + '"][data-type="전체"]').classList.add('is-active');
                buttons.forEach(function (button) {
                    if (button.getAttribute('data-type') !== '전체') {
                        button.classList.remove('is-active');
                    }
                });
            }
        }
        event.stopPropagation();
        event.preventDefault();
    }

    function carButtonClickEventListener(event) {
        console.log('carButtonClickEventListener', this, event);
        let type = this.dataset.type;
        //해제시
        if (this.classList.contains('is-active')) {
            this.classList.remove('is-active');
            return;
        }
        //등록시
        let buttons = document.querySelectorAll('[data-type]');

        //다중선택이면 이부분 주석처리
        buttons.forEach(function (button) {
            if (button.classList.contains('is-active')) {
                button.classList.remove('is-active');
            }
        });
        this.classList.add('is-active');
        event.stopPropagation();
        event.preventDefault();
    }

    function workButtonClickEventListener(event) {
        console.log('workButtonClickEventListener', this, event);
        if (this.classList.contains('is-active')) {
            this.classList.remove('is-active');
            //해제시
            return;
        }
        let type = this.dataset.work;
        //등록시
        if (type === '전체') {
            let buttons = document.querySelectorAll('[data-work]');
            buttons.forEach(function (button) {
                if (button.classList.contains('is-active')) {
                    button.classList.remove('is-active');
                }
            });
            if (!this.classList.contains('is-active')) {
                this.classList.add('is-active');
            }
        } else {
            document.querySelector('[data-work="전체"]').classList.remove('is-active');
            let buttons = document.querySelectorAll('[data-work]');
            if (!this.classList.contains('is-active')) {
                this.classList.add('is-active');
            }
            let check = false;
            buttons.forEach(function (button) {
                if (button.dataset.work !== '전체') {
                    if (!button.classList.contains('is-active')) {
                        check = true;
                    }
                }
            });
            if (!check) {
                document.querySelector('[data-work="전체"]').classList.add('is-active');
                buttons.forEach(function (button) {
                    if (button.dataset.work !== '전체') {
                        button.classList.remove('is-active');
                    }
                });
            }
        }
    }

    function workTimeButtonClickEventListener(event) {
        console.log('workTimeButtonClickEventListener', this, event);
        if (this.classList.contains('is-active')) {
            this.classList.remove('is-active');
            return;
        } else {
            this.classList.add('is-active');
        }
    }

    function workDayButtonClickEventListener(event) {
        console.log('workDayButtonClickEventListener', this, event);
        let all = document.querySelector('.btn-box[data-day="전체"]');
        let weekday = document.querySelector('.btn-box[data-day="평일 월 ~ 금"]');
        let weekend = document.querySelector('.btn-box[data-day="주말 토 ~ 일"]');
        let days = document.querySelectorAll('.btn-box[data-day]:not([data-day="전체"]):not([data-day="주말 토 ~ 일"]):not([data-day="평일 월 ~ 금"])');
        //전체 선택 했을 때
        if (this.dataset.day === '전체') {
            let buttons = document.querySelectorAll('.btn-box[data-day]');
            buttons.forEach(function (button) {
                if (button.classList.contains('is-active')) {
                    button.classList.remove('is-active');
                }
            });
            all.classList.add('is-active');
        }
        //평일 월금 선택했을 때
        else if (this.dataset.day === '평일 월 ~ 금') {
            all.classList.remove('is-active');
            weekend.classList.remove('is-active');
            days.forEach(function (day) {
                day.classList.remove('is-active');
            });
            if (!weekday.classList.contains('is-active')) {
                weekday.classList.add('is-active');
            }
        }
        //주말 토일 선택했을 때
        else if (this.dataset.day === '주말 토 ~ 일') {
            all.classList.remove('is-active');
            weekday.classList.remove('is-active');
            days.forEach(function (day) {
                day.classList.remove('is-active');
            });
            if (!weekend.classList.contains('is-active')) {
                weekend.classList.add('is-active');
            }
        }
        //요일로 선택했을 때
        else {
            all.classList.remove('is-active');
            weekday.classList.remove('is-active');
            weekend.classList.remove('is-active');
            //요일 선택 제거
            if (this.classList.contains('is-active')) {
                this.classList.remove('is-active');
                return;
            }
            this.classList.add('is-active');
            let check = false;
            days.forEach(function (day) {
                if (!day.classList.contains('is-active')) {
                    check = true;
                }
            });
            if (!check) {
                let buttons = document.querySelectorAll('.btn-box[data-day]');
                buttons.forEach(function (button) {
                    if (button.classList.contains('is-active')) {
                        button.classList.remove('is-active');
                    }
                });
                all.classList.add('is-active');
            }
        }
    }

    function workLocationButtonClickEventListener(event) {
        console.log('workLocationButtonClickEventListener', this, event);
        let buttons = document.querySelectorAll('.btn-box[data-location]');
        buttons.forEach(function (location) {
            location.classList.remove('is-active');
        });

        if (!this.classList.contains('is-active')) {
            this.classList.add('is-active');
        }
    }
</script>
</body>
</html>