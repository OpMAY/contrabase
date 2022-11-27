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
        <jsp:param name="type" value="auth"/>
    </jsp:include>
    <!--content-->
    <div class="container common-container">
        <div class="row">
            <div class="col-12 pl-24 pr-24 ml-auto text-center">
                <div class="progress-bar-container">
                    <progress id="progress" value="25" min="0" max="100"></progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">1/4</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    주로 근무하는<br/>지역이 어디신가요?
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-40 pl-24 pr-24 medium-h5 c-basic-black">
                서울
            </div>
        </div>
        <div class="row">
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
            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box" data-region="서울" data-type="없음">
                    <span class="medium-h6 my-auto">
                        없음
                    </span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                경기
            </div>
        </div>
        <div class="row">
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
            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box" data-region="경기" data-type="없음">
                    <span class="medium-h6 my-auto">
                        없음
                    </span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                지역
            </div>
        </div>
        <div class="row">
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
            <div class="pt-16 pl-24">
                <button type="button" class="btn btn-block btn-box" data-region="지역" data-type="없음">
                    <span class="medium-h6 my-auto">
                        없음
                    </span>
                </button>
            </div>
        </div>
    </div>
    <footer class="floating-bottom bottom-nav-animation" id="footer">
        <div class="row m-0">
            <div class="col-12 p-24 d-flex">
                <div class="bd-highlight">
                    <button type="button" class="btn btn-block btn-previous">
                        <span class="bold-h5 c-basic-black my-auto mr-auto">
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M10.6667 13.3334L5.33341 8.00004L10.6667 2.66671" stroke="#021226"
                                      stroke-width="2"
                                      stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                            이전
                        </span>
                    </button>
                </div>
                <div class="ml-auto bd-highlight">
                    <button type="button" class="btn btn-block btn-next">
                        <span class="bold-h5 c-basic-white my-auto mr-auto">
                            다음
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.33325 2.66663L10.6666 7.99996L5.33325 13.3333" stroke="white"
                                      stroke-width="2"
                                      stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </span>
                    </button>
                </div>
            </div>
        </div>
    </footer>
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
        let prev_data = JSON.parse(Storage.get('regions'))?.data;
        console.log(prev_data);
        let btn_region = document.querySelectorAll('.btn-box');
        if (prev_data) {
            //초기화
            btn_region.forEach(function (region) {
                if (region.classList.contains('is-active')) {
                    region.classList.remove('is-active');
                }
            });
            btn_region.forEach(function (region) {
                if (region.dataset.region === '서울') {
                    prev_data.seoul.forEach(function (location) {
                        if (region.dataset.type === location) {
                            if (!region.classList.contains('is-active')) {
                                region.classList.add('is-active');
                            } else {
                                region.classList.remove('is-active');
                            }
                        }
                    });
                } else if (region.dataset.region === '경기') {
                    prev_data.gyeonggi.forEach(function (location) {
                        if (region.dataset.type === location) {
                            if (!region.classList.contains('is-active')) {
                                region.classList.add('is-active');
                            } else {
                                region.classList.remove('is-active');
                            }
                        }
                    });
                } else {
                    //지역
                    prev_data.other.forEach(function (location) {
                        if (region.dataset.type === location) {
                            if (!region.classList.contains('is-active')) {
                                region.classList.add('is-active');
                            } else {
                                region.classList.remove('is-active');
                            }
                        }
                    });
                }
                region.addEventListener('click', regionButtonClickEventListener);
            });
        } else {
            btn_region.forEach(function (region) {
                region.addEventListener('click', regionButtonClickEventListener);
            });
        }
        let btn_previous = document.querySelector('.btn-previous');
        btn_previous.addEventListener('click', previousButtonClickEventListener);
        let btn_next = document.querySelector('.btn-next');
        btn_next.addEventListener('click', nextButtonClickEventListener)
    });

    function regionButtonClickEventListener(event) {
        console.log(this, event);
        let region = this.dataset.region;
        let type = this.dataset.type;
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
        } else if (type === '없음') {
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
            if (this.classList.contains('is-active')) {
                this.classList.remove('is-active');
                return;
            }
            document.querySelector('[data-region="' + region + '"][data-type="전체"]').classList.remove('is-active');
            document.querySelector('[data-region="' + region + '"][data-type="없음"]').classList.remove('is-active');
            if (!this.classList.contains('is-active')) {
                this.classList.add('is-active');
            }
            let buttons = document.querySelectorAll('[data-region="' + region + '"]:not([data-type="전체"],[data-type="없음"]');
            let check = false;
            buttons.forEach(function (button) {
                if (!button.classList.contains('is-active')) {
                    check = true;
                }
            });
            if (!check) {
                document.querySelector('[data-region="' + region + '"][data-type="전체"]').classList.add('is-active');
                buttons.forEach(function (button) {
                    if (button.dataset.type !== '전체' || button.dataset.type !== '없음') {
                        button.classList.remove('is-active');
                    }
                });
            }
        }
        event.stopPropagation();
        event.preventDefault();
    }

    function nextButtonClickEventListener(event) {
        let regions = ['서울', '경기', '지역'];
        let array1 = new Array();
        let array2 = new Array();
        let array3 = new Array();
        regions.forEach(function (region) {
            let items;
            switch (region) {
                case '서울':
                    items = document.querySelectorAll('[data-region="' + region + '"].is-active');
                    console.log(items);
                    items.forEach(function (item) {
                        array1.push(item.dataset.type);
                    });
                    break;
                case '경기':
                    items = document.querySelectorAll('[data-region="' + region + '"].is-active');
                    console.log(items);
                    items.forEach(function (item) {
                        array2.push(item.dataset.type);
                    });
                    break;
                case '지역':
                    items = document.querySelectorAll('[data-region="' + region + '"].is-active');
                    console.log(items);
                    items.forEach(function (item) {
                        array3.push(item.dataset.type);
                    });
                    break;
            }
        });
        let obj_region = {
            seoul: array1,
            gyeonggi: array2,
            other: array3
        }
        Storage.set('regions', JSON.stringify({data: obj_region, date: new Date().getTime()}));
        location.href = '/user/onboard/third';
        event.stopPropagation();
        event.preventDefault();
    }

    function previousButtonClickEventListener(event) {
        location.href = '/user/onboard/first';
        event.stopPropagation();
        event.preventDefault();
    }
</script>
</body>
</html>