$(document).ready(function () {
    document.querySelector('#bottom-tab-car-trigger')?.addEventListener('click', function (event) {
        let bottom_tab = document.querySelector('#bottom-tab-car');
        let overlay = document.querySelector('#overlay');

        if (!bottom_tab.classList.contains('is-active')) {
            bottom_tab.classList.add('is-active');
        } else {
            bottom_tab.classList.remove('is-active');
        }

        if (!overlay.classList.contains('is-active')) {
            overlay.classList.add('is-active');
        } else {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('#bottom-tab-location-trigger')?.addEventListener('click', function (event) {
        let bottom_tab = document.querySelector('#bottom-tab-location');
        let overlay = document.querySelector('#overlay');

        if (!bottom_tab.classList.contains('is-active')) {
            bottom_tab.classList.add('is-active');
        } else {
            bottom_tab.classList.remove('is-active');
        }

        if (!overlay.classList.contains('is-active')) {
            overlay.classList.add('is-active');
        } else {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('#bottom-tab-emergency-trigger')?.addEventListener('click', function (event) {
        let bottom_tab = document.querySelector('#bottom-tab-emergency');
        let overlay = document.querySelector('#overlay');

        if (!bottom_tab.classList.contains('is-active')) {
            bottom_tab.classList.add('is-active');
        } else {
            bottom_tab.classList.remove('is-active');
        }

        if (!overlay.classList.contains('is-active')) {
            overlay.classList.add('is-active');
        } else {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('#bottom-tab-workday-trigger')?.addEventListener('click', function (event) {
        let bottom_tab = document.querySelector('#bottom-tab-workday');
        let overlay = document.querySelector('#overlay');

        if (!bottom_tab.classList.contains('is-active')) {
            bottom_tab.classList.add('is-active');
        } else {
            bottom_tab.classList.remove('is-active');
        }

        if (!overlay.classList.contains('is-active')) {
            overlay.classList.add('is-active');
        } else {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('#bottom-tab-distance-trigger')?.addEventListener('click', function (event) {
        let bottom_distance = document.querySelector('#bottom-tab-distance');
        let overlay = document.querySelector('#overlay');

        if (!bottom_distance.classList.contains('is-active')) {
            bottom_distance.classList.add('is-active');
        } else {
            bottom_distance.classList.remove('is-active');
        }

        if (!overlay.classList.contains('is-active')) {
            overlay.classList.add('is-active');
        } else {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('#overlay')?.addEventListener('click', function (event) {
        let bottom_tab = document.querySelector('#bottom-tab-car');
        let bottom_tab_location = document.querySelector('#bottom-tab-location');
        let bottom_tab_emergency = document.querySelector('#bottom-tab-emergency');
        let bottom_tab_workday = document.querySelector('#bottom-tab-workday');
        let bottom_tab_distance = document.querySelector('#bottom-tab-distance');
        let bottom_tab_kakao = document.querySelector('#bottom-tab-kakao');

        let overlay = document.querySelector('#overlay');

        if (bottom_tab.classList.contains('is-active')) {
            bottom_tab.classList.remove('is-active');
        }

        if (bottom_tab_location.classList.contains('is-active')) {
            bottom_tab_location.classList.remove('is-active');
        }

        if (bottom_tab_workday.classList.contains('is-active')) {
            bottom_tab_workday.classList.remove('is-active');
        }

        if (bottom_tab_distance.classList.contains('is-active')) {
            bottom_tab_distance.classList.remove('is-active');
        }

        if (bottom_tab_emergency.classList.contains('is-active')) {
            bottom_tab_emergency.classList.remove('is-active');
        }

        if (bottom_tab_kakao.classList.contains('is-active')) {
            bottom_tab_kakao.classList.remove('is-active');
        }

        if (overlay.classList.contains('is-active')) {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('#overlay')?.addEventListener('click', function (event) {
        let bottom_tab = document.querySelector('#bottom-tab-car');
        let bottom_tab_location = document.querySelector('#bottom-tab-location');
        let bottom_tab_emergency = document.querySelector('#bottom-tab-emergency');
        let bottom_tab_workday = document.querySelector('#bottom-tab-workday');
        let bottom_tab_distance = document.querySelector('#bottom-tab-distance');


        let overlay = document.querySelector('#overlay');

        if (bottom_tab.classList.contains('is-active')) {
            bottom_tab.classList.remove('is-active');
        }

        if (bottom_tab_location.classList.contains('is-active')) {
            bottom_tab_location.classList.remove('is-active');
        }

        if (bottom_tab_workday.classList.contains('is-active')) {
            bottom_tab_workday.classList.remove('is-active');
        }

        if (bottom_tab_distance.classList.contains('is-active')) {
            bottom_tab_distance.classList.remove('is-active');
        }

        if (bottom_tab_emergency.classList.contains('is-active')) {
            bottom_tab_emergency.classList.remove('is-active');
        }

        if (overlay.classList.contains('is-active')) {
            overlay.classList.remove('is-active');
        }


        event.stopPropagation();
        event.preventDefault();
    });
});
try {
    let container = document.getElementById('map');
    let options = {
        center: new kakao.maps.LatLng(33.450701, 126.570667),
        level: 3
    };
    let map = new kakao.maps.Map(container, options);
// 마커가 표시될 위치입니다
    let markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);
// 마커를 생성합니다
    let marker = new kakao.maps.Marker({
        position: markerPosition
    });
// 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
// 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', kakaoMapMarkerClickEventListener);

    function kakaoMapMarkerClickEventListener(event) {
        // 마커 위에 인포윈도우를 표시합니다
        let bottom_kakao = document.querySelector('#bottom-tab-kakao');
        let overlay = document.querySelector('#overlay');
        if (!bottom_kakao.classList.contains('is-active')) {
            bottom_kakao.classList.add('is-active');
        } else {
            bottom_kakao.classList.remove('is-active');
        }
        if (!overlay.classList.contains('is-active')) {
            overlay.classList.add('is-active');
        } else {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    }
} catch (error) {
    throw new Error(`javascript app.js kakao map error -> ${error}`);
}