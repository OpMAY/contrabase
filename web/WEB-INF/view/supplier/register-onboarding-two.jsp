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
        <jsp:param name="title" value="일자리 등록"/>
        <jsp:param name="type" value="text-center"/>
    </jsp:include>

    <!--content-->
    <div class="container common-container">
        <div class="row">
            <div class="col-12 pt-16 pl-24 pr-24 ml-auto text-center">
                <div class="d-table-row">
                    <progress id="progress" value=33 min="0" max="100" style="width: 327px;"/>
                    </progress>
                    <div class="d-flex">
                        <div class="bd-highlight regular-p1 c-basic-black">꼭 필요한 질문만 간단히 여쭤볼게요.</div>
                        <div class="ml-auto regular-p1 c-basic-black bd-highlight">1/3</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-24 pl-24 pr-24 ml-auto text-left">
                <div class="bold-h2 c-basic-black">
                    현장 정보를<br/>
                    입력해주시겠어요?
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-40 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">회사 명</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="name" placeholder="회사 명을 입력해주세요." class="form-control input-box medium-h5">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">담당자 명</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="manager" placeholder="담당자 명을 입력해주세요."
                           class="form-control input-box medium-h5">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">주차</label>
            </div>
            <div class=" pl-24">
                <button type="button" class="btn btn-block btn-box is-active" data-parking="주차 가능">
                    <span class="medium-h6 my-auto">
                        주차 가능
                    </span>
                </button>
            </div>

            <div class=" pl-16">
                <button type="button" class="btn btn-block btn-box" data-parking="주차 불가능">
                    <span class="medium-h6 my-auto">
                        주차 불가능
                    </span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">식사</label>
            </div>
            <div class=" pl-24">
                <button type="button" class="btn btn-block btn-box is-active" data-meal="식사 제공">
                    <span class="medium-h6 my-auto">
                        식사 제공
                    </span>
                </button>
            </div>

            <div class=" pl-16">
                <button type="button" class="btn btn-block btn-box" data-meal="식사 미제공">
                    <span class="medium-h6 my-auto">
                        식사 미제공
                    </span>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-12 pt-32 pl-24 pr-24 medium-h5 c-basic-black">
                <label class="medium-h6 c-gray-dark-low">해쉬태그</label>
                <div class="form-group form-inner-button">
                    <input type="text" name="hash" placeholder="해쉬 태그를 입력해주세요."
                           class="form-control input-box medium-h5">
                </div>
            </div>
            <div class="hashs">
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
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.33325 2.66663L10.6666 7.99996L5.33325 13.3333" stroke="white" stroke-width="2"
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
        let prev_data = JSON.parse(Storage.get('second_register'))?.data;
        console.log(prev_data);
        if (prev_data !== undefined) {
            let name = document.querySelector('[name="name"]');
            name.value = prev_data.name;
            let manager = document.querySelector('[name="manager"]');
            manager.value = prev_data.manager;
            let parkings = document.querySelectorAll('.btn-box[data-parking]');
            parkings.forEach(function (parking) {
                if (parking.dataset.parking === prev_data.parking) {
                    if (!parking.classList.contains('is-active')) {
                        parking.classList.add('is-active');
                    }
                } else {
                    parking.classList.remove('is-active');
                }
            });
            let meals = document.querySelectorAll('.btn-box[data-meal]');
            meals.forEach(function (meal) {
                if (meal.dataset.meal === prev_data.meal) {
                    if (!meal.classList.contains('is-active')) {
                        meal.classList.add('is-active');
                    }
                } else {
                    meal.classList.remove('is-active');
                }
            });
            let hash_container = document.querySelector('.hashs');
            deleteChild(hash_container);
            prev_data.hashs.forEach(function (hash) {
                hash_container.appendChild(createHashTagElement(hash));
            });
        }

        let parkings = document.querySelectorAll('[data-parking]');
        parkings.forEach(function (parking) {
            parking.addEventListener('click', parkingClickEventListener);
        });
        let meals = document.querySelectorAll('[data-meal]');
        meals.forEach(function (meal) {
            meal.addEventListener('click', mealClickEventListener);
        });
        let hash = document.querySelector('[name="hash"]');
        hash.addEventListener('keyup', function (event) {
            let value = this.value;
            if (this.value.trim().length !== 0) {
                if (event.keyCode === 13 || event.key === 'Enter' || event.code === 'Enter' || event.which === 13) {
                    let container = document.querySelector('.hashs');
                    container.appendChild(createHashTagElement(value));
                    this.value = '';
                }
            } else {
                viewAlert({content: '해시태그를 한글자 이상 입력해주세요.'});
            }
        });

        let btn_previous = document.querySelector('.btn-previous');
        btn_previous.addEventListener('click', previousButtonClickEventListener);
        let btn_next = document.querySelector('.btn-next');
        btn_next.addEventListener('click', nextButtonClickEventListener);
    });

    function parkingClickEventListener(event) {
        let parkings = document.querySelectorAll('[data-parking]');
        parkings.forEach(function (parking) {
            parking.classList.remove('is-active');
        });
        this.classList.add('is-active');
        event.stopPropagation();
        event.preventDefault();
    }

    function mealClickEventListener(event) {
        let meals = document.querySelectorAll('[data-meal]');
        meals.forEach(function (meal) {
            meal.classList.remove('is-active');
        });
        this.classList.add('is-active');
        event.stopPropagation();
        event.preventDefault();
    }

    function nextButtonClickEventListener(event) {
        let name = document.querySelector('[name="name"]').value;
        let manager = document.querySelector('[name="manager"]').value;
        let parking = document.querySelector('.btn-box.is-active[data-parking]').dataset.parking;
        let meal = document.querySelector('.btn-box.is-active[data-meal]').dataset.meal;
        let hash_container = document.querySelector('.hashs');
        let hash_elements = hash_container.querySelectorAll('.hash');
        let hashs = new Array();
        hash_elements.forEach(function (element) {
            console.log(element.querySelector('span'));
            hashs.push(element.querySelector('span').innerText);
        });
        let second_register = {
            name,
            manager,
            parking,
            meal,
            hashs
        }
        Storage.set('second_register', JSON.stringify({data: second_register, date: new Date().getTime()}));
        location.href = '/supplier/work/register/third';
        event.stopPropagation();
        event.preventDefault();
    }

    function previousButtonClickEventListener(event) {
        location.href = '/supplier/work/register/first';
        event.stopPropagation();
        event.preventDefault();
    }

    function createHashTagElement(hash) {
        const __buildHashTagInnerElement = (hash) => {
            return `<button type="button" class="btn btn-block btn-box hashtag">
                            <span class="medium-h6 c-basic-black my-auto ">
                                \${hash}
                            </span>
                            <img class="pl-8 _cancel" src="/resources/assets/images/icon/icon-delete-black.svg" alt="" style="padding-top: 2px">
                         </button>`;
        }
        let div = document.createElement('div');
        div.classList.add('hash');
        div.innerHTML = __buildHashTagInnerElement(hash);
        /*TODO Add Event & Callback */
        div.querySelector('._cancel').addEventListener('click', function (event) {
            let hash = this.closest('.hash');
            hash.remove();
        });
        return div;
    }
</script>
</body>
</html>