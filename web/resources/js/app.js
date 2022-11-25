const APPLY_STATUS = {
    WORK_APPLY: {
        name: 'WORK_APPLY',
        keyword: '운행 신청'
    },
    WORK_COMPLETE: {
        name: 'WORK_COMPLETE',
        keyword: '운행 완료'
    },
    WORK_CANCEL: {
        name: 'WORK_CANCEL',
        keyword: '배차 취소'
    }
}

const VEHICLE_TYPE = {
    TRUCK: {
        name: 'TRUCK',
        keyword: '트럭',
    }
}

const DISHING_INFO = {
    AVAILABLE: {
        name: 'AVAILABLE',
        keyword: '식사 제공',
    },
    UNAVAILABLE: {
        name: 'UNAVAILABLE',
        keyword: '식사 미제공',
    },
}

const PARKING_INFO = {
    AVAILABLE: {
        name: 'AVAILABLE',
        keyword: '주차 가능',
    },
    UNAVAILABLE: {
        name: 'UNAVAILABLE',
        keyword: '주차 불가',
    },
}

Object.freeze(APPLY_STATUS);
Object.freeze(VEHICLE_TYPE);
Object.freeze(DISHING_INFO);
const findApplyStatus = (name) => {
    switch (name) {
        case APPLY_STATUS.WORK_APPLY.name:
            return APPLY_STATUS.WORK_APPLY;
        case APPLY_STATUS.WORK_COMPLETE.name:
            return APPLY_STATUS.WORK_COMPLETE;
        case APPLY_STATUS.WORK_CANCEL.name:
            return APPLY_STATUS.WORK_CANCEL;
        default:
            return undefined;
    }
}
const findVehicleType = (name) => {
    switch (name) {
        case VEHICLE_TYPE.TRUCK.name:
            return VEHICLE_TYPE.TRUCK;
        default:
            return undefined;
    }
}
const findParkingType = (name) => {
    switch (name) {
        case PARKING_INFO.AVAILABLE.name:
            return PARKING_INFO.AVAILABLE;
        case PARKING_INFO.UNAVAILABLE.name:
            return PARKING_INFO.UNAVAILABLE;
        default:
            return undefined;
    }
}
const findDishingType = (name) => {
    switch (name) {
        case DISHING_INFO.AVAILABLE.name:
            return DISHING_INFO.AVAILABLE;
        case DISHING_INFO.UNAVAILABLE.name:
            return DISHING_INFO.UNAVAILABLE;
        default:
            return undefined;
    }
}

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