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
                                           data-type="운행 신청"
                                           aria-controls="nav-work-supply-details" aria-selected="true">운행 신청</a>
                                        <a class="nav-item nav-link" id="nav-work-completed-details-tab"
                                           data-toggle="tab" href="#nav-work-completed-details" role="tab"
                                           data-type="운행 완료"
                                           aria-controls="nav-work-completed-details" aria-selected="false">운행 완료</a>
                                        <a class="nav-item nav-link" id="nav-work-cancel-details-tab"
                                           data-toggle="tab" href="#nav-work-cancel-details" role="tab"
                                           data-type="배차 취소"
                                           aria-controls="nav-work-cancel-details" aria-selected="false">배차 취소</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-workContent">
                                    <div class="tab-pane fade show active" id="nav-work-supply-details" role="tabpanel"
                                         aria-labelledby="nav-work-supply-details-tab">
                                        <div class="work-container">
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                    <div class="tab-pane fade" id="nav-work-completed-details" role="tabpanel"
                                         aria-labelledby="nav-alarm-work-completed-tab">
                                        <div class="work-container">
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                    <div class="tab-pane fade" id="nav-work-cancel-details" role="tabpanel"
                                         aria-labelledby="nav-work-cancel-details-tab">
                                        <div class="work-container">
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
                                            <div class="col-12 p-24 work" data-hash="fjdksfjdsakf">
                                                <div class="d-flex flex-column">
                                                    <div class="d-flex justify-content-between">
                                                        <div class="bold-h5">
                                                            운송 운반 | 덤프트럭 2대
                                                        </div>
                                                        <%--Active -> _like is-active --%>
                                                        <%--InActive -> _like --%>
                                                        <svg class="cursor-pointer _like is-active my-auto" width="24"
                                                             height="24" viewBox="0 0 24 24" fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                                                  fill="#D5D8E1"/>
                                                        </svg>
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
        let likes = document.querySelectorAll('._like');
        likes.forEach(function (like) {
            like.addEventListener('click', likeClickEventListener);
        });

        $('a[data-toggle="tab"]').on('shown.bs.tab', function (event) {
            event.target // newly activated tab
            event.relatedTarget // previous active tab
            let type = event.target.dataset.type;
            console.log('type', type);
            let newly_content = document.querySelector('#' + event.target.getAttribute('aria-controls'));
            let previous_content = document.querySelector('#' + event.relatedTarget.getAttribute('aria-controls'));
            deleteChild(previous_content);
            deleteChild(newly_content);
            /*TODO Fetch And Display Item*/
            for (let i = 0; i < 10; i++) {
                let work = {
                    hash: tokenGenerator(8),
                }
                newly_content.append(createWorkElement(work));
            }
        });
    });

    function likeClickEventListener(event) {
        console.log('likeClickEventListener', this, event);
        let hash = this.closest('[data-hash]').dataset.hash;
        if (!this.classList.contains('is-active')) {
            /*TODO FETCH*/
            console.log('hash', hash);
            this.classList.add('is-active');
        } else {
            /*TODO FETCH*/
            console.log('hash', hash);
            this.classList.remove('is-active');
        }
        event.preventDefault();
        event.stopPropagation();
    }
</script>
</body>
</html>