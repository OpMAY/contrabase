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
                    <progress id="progress" value="0" min="0" max="100"></progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">0/4</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    어떤 이유로 서비스를<br/>방문하셨나요?
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-40 pl-24 pr-24">
                <button type="button" class="btn btn-block btn-category is-active" data-type="user">
                    <span class="medium-h5 my-auto mr-auto">
                        운행 일자리를 찾으려고 방문했어요.
                    </span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24">
                <button type="button" class="btn btn-block btn-category" data-type="supplier">
                    <span class="medium-h5 my-auto mr-auto">
                        특장차 기사를 찾으려고 방문했어요.
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
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.6667 13.3334L5.33341 8.00004L10.6667 2.66671" stroke="#021226" stroke-width="2"
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
        console.log(JSON.parse(Storage.get('type'))?.data);
        let prev_data = JSON.parse(Storage.get('type'))?.data;
        let btn_categories = document.querySelectorAll('.btn-category');
        btn_categories.forEach(function (category) {
            if (prev_data && category.dataset.type === prev_data) {
                category.classList.add('is-active');
            } else {
                category.classList.remove('is-active');
            }
            category.addEventListener('click', categoryButtonClickEventListener);
        });
        let btn_previous = document.querySelector('.btn-previous');
        btn_previous.addEventListener('click', previousButtonClickEventListener);
        let btn_next = document.querySelector('.btn-next');
        btn_next.addEventListener('click', nextButtonClickEventListener)
    });

    function nextButtonClickEventListener(event) {
        let type = getActiveCategoryButton();
        alert(type);
        if (type === 'user') {
            Storage.set('type', JSON.stringify({data: 'user', date: new Date().getTime()}));
            location.href = '/user/onboard/second';
        } else {
            Storage.set('type', JSON.stringify({data: 'supplier', date: new Date().getTime()}));
            location.href = '/supplier/onboard/first';
        }
        event.stopPropagation();
        event.preventDefault();
    }

    function categoryButtonClickEventListener(event) {
        let status = 'is-active';
        categoryButtonInitialize();
        if (!this.classList.contains(status)) {
            this.classList.add(status);
        }
        event.stopPropagation();
        event.preventDefault();
    }

    const categoryButtonInitialize = () => {
        let status = 'is-active';
        let categories = document.querySelectorAll('.btn-category');
        categories.forEach(function (category) {
            if (category.classList.contains(status)) {
                category.classList.remove(status);
            }
        });
    }
    const getActiveCategoryButton = () => {
        let status = 'is-active';
        return document.querySelector('.btn-category' + '.' + status).dataset.type;
    }

    function previousButtonClickEventListener(event) {
        event.stopPropagation();
        event.preventDefault();
    }
</script>
</body>
</html>