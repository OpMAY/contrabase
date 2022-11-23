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
        <jsp:param name="title" value="일자리 공고 현황"/>
        <jsp:param name="type" value="text-left"/>
        <jsp:param name="icon" value="alarm"/>
    </jsp:include>

    <div class="container common-container">
        <div class="row">
            <div class="col-12 pr-0 pl-0">
                <section id="tabs2" class="project-tab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 p-0">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-work-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-alarm-supply-details-tab"
                                           data-toggle="tab" href="#nav-work-supply-details" role="tab"
                                           data-type="recruit"
                                           aria-controls="nav-work-supply-details" aria-selected="true">모집 중</a>
                                        <a class="nav-item nav-link" id="nav-work-completed-details-tab"
                                           data-toggle="tab" href="#nav-work-completed-details" role="tab"
                                           data-type="complete"
                                           aria-controls="nav-work-completed-details" aria-selected="false">운행 완료</a>
                                        <a class="nav-item nav-link" id="nav-work-cancel-details-tab"
                                           data-toggle="tab" href="#nav-work-cancel-details" role="tab"
                                           data-type="cancel"
                                           aria-controls="nav-work-cancel-details" aria-selected="false">배차 취소</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-workContent">
                                    <div class="tab-pane fade show active" id="nav-work-supply-details" role="tabpanel"
                                         aria-labelledby="nav-work-supply-details-tab">
                                        <div class="work-container">
                                            <div class="col-12 p-24 work">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <div class="bold-h5 c-brand-blue">
                                                            1일 남음
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
                                                <div class="media-container">
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 p-24 work">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <div class="bold-h5 c-brand-blue">
                                                            1일 남음
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
                                                <div class="media-container">
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-work-completed-details" role="tabpanel"
                                         aria-labelledby="nav-alarm-work-completed-tab">
                                        <div class="work-container">
                                            <div class="col-12 p-24 work">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <div class="bold-h5 c-brand-blue">
                                                            1일 남음
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
                                                <div class="media-container">
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 p-24 work">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <div class="bold-h5 c-brand-blue">
                                                            1일 남음
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
                                                <div class="media-container">
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-work-cancel-details" role="tabpanel"
                                         aria-labelledby="nav-work-cancel-details-tab">
                                        <div class="work-container">
                                            <div class="col-12 p-24 work">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <div class="bold-h5 c-brand-blue">
                                                            1일 남음
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
                                                <div class="media-container">
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 p-24 work">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <div class="bold-h5 c-brand-blue">
                                                            1일 남음
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
                                                <div class="media-container">
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="_profile align-self-start mr-2"
                                                             style="background-image: url('https://via.placeholder.com/350x150')"></div>
                                                        <div class="media-body">
                                                            <div class="mt-0 d-flex">
                                                                <div class="name my-auto bold-h5">김우식</div>
                                                                <div class="transport ml-auto my-auto d-flex">
                                                                    <div class="regular-h6 c-brand-red _cancel">취소</div>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _call">
                                                                        <svg width="20" height="20" viewBox="0 0 24 24"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <g clip-path="url(#clip0_408_492)">
                                                                                <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z"
                                                                                      fill="#015ADC"/>
                                                                            </g>
                                                                            <defs>
                                                                                <clipPath id="clip0_408_492">
                                                                                    <rect width="24" height="24"
                                                                                          fill="white"/>
                                                                                </clipPath>
                                                                            </defs>
                                                                        </svg>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-sm btn-block opacity my-auto _report">
                                                                        <svg width="20" height="20" viewBox="0 0 19 20"
                                                                             fill="none"
                                                                             xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z"
                                                                                  fill="#FF4E4E"/>
                                                                        </svg>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <p class="regular-p1">차량 번호 : 34가 20394</p>
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
                    </div>
                </section>
            </div>
        </div>
    </div>
    <footer class="floating-bottom bottom-nav-animation" id="footer" style="z-index: 10">
        <div class="row m-0">
            <div class="col-12 p-24">
                <button type="button" class="btn btn-block btn-blue justify-content-center">
                <span class="medium-h5 ml-auto mr-auto">
                    운행 기사님 구하기
                </span>
                </button>
            </div>
        </div>
    </footer>
</div>
<jsp:include page="../../view/common/js.jsp"></jsp:include>
<script src="/resources/js/module/work.js"></script>
<script src="/resources/js/module/work-filter.js"></script>
<script>
    /**
     * Static JS
     * Static JS는 특정 페이지 에서만 작동하는 부분으로 Event 및 Element 생성 및 화면에 진입했을 때의
     * 해당 화면만의 특정 로직을 수행하는 Javascript를 Static JS라고 한다.
     * */
    $(document).ready(function () {
        console.log('Static JS is ready');
        $('a[data-toggle="tab"]').on('show.bs.tab', function (event) {
            let newly_content = document.querySelector('#' + event.target.getAttribute('aria-controls'));
            let previous_content = document.querySelector('#' + event.relatedTarget.getAttribute('aria-controls'));

            //recruit, complete, cancel
            let type = event.target.dataset.type, container, work;
            container = newly_content.querySelector('.work-container');
            deleteChild(container);
            switch (type) {
                case 'recruit':
                    /*TODO Fetch*/
                    work = {
                        users : [{},{},{}],
                    }
                    container.appendChild(createWorkRecruitElement(work));
                    container.appendChild(createWorkRecruitElement(work));
                    container.appendChild(createWorkRecruitElement(work));
                    break;
                case 'complete':
                    /*TODO Fetch*/
                    work = {
                        users : [{},{},{}],
                    }
                    container.appendChild(createWorkCompleteElement(work));
                    container.appendChild(createWorkCompleteElement(work));
                    container.appendChild(createWorkCompleteElement(work));
                    break;
                case 'cancel':
                    /*TODO Fetch*/
                    work = {
                        users : [{},{},{}],
                    }
                    container.appendChild(createWorkCancelElement(work));
                    container.appendChild(createWorkCancelElement(work));
                    container.appendChild(createWorkCancelElement(work));
                    break;
            }
        });
    });
</script>
</body>
</html>