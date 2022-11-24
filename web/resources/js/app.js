$(document).ready(function () {
    let hrefs = document.querySelectorAll('[data-href]');
    hrefs.forEach(function (href) {
        href.addEventListener('click', function (event) {
            location.href = this.dataset.href;
            event.stopPropagation();
            event.preventDefault();
        });
    });
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

        if (bottom_tab?.classList.contains('is-active')) {
            bottom_tab.classList.remove('is-active');
        }

        if (bottom_tab_location?.classList.contains('is-active')) {
            bottom_tab_location.classList.remove('is-active');
        }

        if (bottom_tab_workday?.classList.contains('is-active')) {
            bottom_tab_workday.classList.remove('is-active');
        }

        if (bottom_tab_distance?.classList.contains('is-active')) {
            bottom_tab_distance.classList.remove('is-active');
        }

        if (bottom_tab_emergency?.classList.contains('is-active')) {
            bottom_tab_emergency.classList.remove('is-active');
        }

        if (bottom_tab_kakao?.classList.contains('is-active')) {
            bottom_tab_kakao.classList.remove('is-active');
        }

        if (overlay?.classList.contains('is-active')) {
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

        if (bottom_tab?.classList.contains('is-active')) {
            bottom_tab.classList.remove('is-active');
        }

        if (bottom_tab_location?.classList.contains('is-active')) {
            bottom_tab_location.classList.remove('is-active');
        }

        if (bottom_tab_workday?.classList.contains('is-active')) {
            bottom_tab_workday.classList.remove('is-active');
        }

        if (bottom_tab_distance?.classList.contains('is-active')) {
            bottom_tab_distance.classList.remove('is-active');
        }

        if (bottom_tab_emergency?.classList.contains('is-active')) {
            bottom_tab_emergency.classList.remove('is-active');
        }

        if (overlay?.classList.contains('is-active')) {
            overlay.classList.remove('is-active');
        }

        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('._logout')?.addEventListener('click', function (event) {
        viewAlert({content: '로그아웃'});
    });
});