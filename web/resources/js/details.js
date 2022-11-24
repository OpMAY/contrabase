$(document).ready(function () {
    document.querySelector('#bottom-tab-application-trigger')?.addEventListener('click', function (event) {
        let bottom_tab = document.querySelector('#bottom-tab-application');
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
    document.querySelector('#bottom-tab-declaration-trigger')?.addEventListener('click', function (event) {
        let bottom_declaration_tab = document.querySelector('#bottom-tab-declaration');
        let overlay = document.querySelector('#overlay');

        if (!bottom_declaration_tab.classList.contains('is-active')) {
            bottom_declaration_tab.classList.add('is-active');
        } else {
            bottom_declaration_tab.classList.remove('is-active');
        }

        if (!overlay.classList.contains('is-active')) {
            overlay.classList.add('is-active');
        } else {
            overlay.classList.remove('is-active');
        }
        event.stopPropagation();
        event.preventDefault();
    });

    let bottom_tab_kakao_triggers = document.querySelectorAll('.bottom-tab-kakao-trigger');
    bottom_tab_kakao_triggers.forEach(function (trigger) {
        trigger?.addEventListener('click', function (event) {
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
        });
    });

    document.querySelector('#overlay')?.addEventListener('click', function (event) {
        let bottom_applitcation_tab = document.querySelector('#bottom-tab-application');
        let bottom_declaration_tab = document.querySelector('#bottom-tab-declaration');
        let declaration_modal = document.querySelector('#declaration-modal');
        let declaration_modal_myself = document.querySelector('#declaration-modal-myself');
        let bottom_kakao_tab = document.querySelector('#bottom-tab-kakao');


        let overlay = document.querySelector('#overlay');

        if (bottom_applitcation_tab?.classList.contains('is-active')) {
            bottom_applitcation_tab.classList.remove('is-active');
        }

        if (bottom_declaration_tab?.classList.contains('is-active')) {
            bottom_declaration_tab.classList.remove('is-active');
        }


        if (bottom_kakao_tab?.classList.contains('is-active')) {
            bottom_kakao_tab.classList.remove('is-active');
        }


        if (overlay?.classList.contains('is-active')) {
            overlay.classList.remove('is-active');
        }

        declaration_modal?.classList.remove('d-none');
        declaration_modal_myself?.classList.add('d-none');

        event.stopPropagation();
        event.preventDefault();
    });
    document.querySelector('#declaration-btn')?.addEventListener('click', function (event) {
        let declaration_modal = document.querySelector('#declaration-modal');
        let declaration_modal_myself = document.querySelector('#declaration-modal-myself');

        declaration_modal.classList.add('d-none');
        declaration_modal_myself.classList.remove('d-none');
    });
});