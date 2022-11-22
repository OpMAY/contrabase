class StickyNavigation {
    constructor(first_id, currentId, currentTab) {
        this.is_click = false;
        this.first_id = first_id;
        this.currentId = currentId ? currentId : undefined;
        this.currentTab = currentTab ? currentTab : undefined;
        this.tabContainerHeight = 56;
        let self = this;
        $('#nav-detail-tab .nav-item ').click(function () {
            self.onTabClick(event, $(this));
        });
        $(window).scroll(() => {
            this.onScroll();
        });
        $(window).resize(() => {
            this.onResize();
        });
    }

    onTabClick(event, element) {
        this.is_click = true;
        moveToScroll({move_id: $(element.attr('href')).attr('id'), top: (-70 - 56)});
        $('#nav-detail-tab .nav-item').removeClass('active');
        $('#nav-detail-tab .nav-item').attr('aria-selected', false);
        $(element).addClass('active');
        $(element).attr('aria-selected', true);
        event.stopPropagation();
        event.preventDefault();
        setTimeout(function () {
            this.is_click = false;
        }, 500);
    }

    onScroll() {
        if (!this.is_click) {
            this.findCurrentTabSelector();
        }
    }

    onResize() {
        if (this.currentId) {
            console.log('this.currentId', this.currentId);
        }
    }

    findCurrentTabSelector(element) {
        let newCurrentId;
        let newCurrentTab;
        let self = this;
        $('#nav-detail-tab .nav-item').each(function () {
            let id = $(this).attr('href');
            let offsetTop = $(id).offset().top - self.tabContainerHeight;
            let offsetBottom = $(id).offset().top + $(id).height() - self.tabContainerHeight;
            if ($(window).scrollTop() > (offsetTop - 70 - 56) && $(window).scrollTop() < offsetBottom) {
                newCurrentId = id;
                newCurrentTab = $(this);
            }
        });
        if (this.currentId != newCurrentId) {
            this.currentId = newCurrentId;
            this.currentTab = newCurrentTab;
            if (this.currentId === undefined && this.currentTab === undefined) {
                $('#nav-detail-tab .nav-item').removeClass('active');
                $('#nav-detail-tab .nav-item').attr('aria-selected', false);
                $('#' + this.first_id).addClass('active');
                $('#' + this.first_id).attr('aria-selected', true);
            } else {
                $('#nav-detail-tab .nav-item').removeClass('active');
                $('#nav-detail-tab .nav-item').attr('aria-selected', false);
                $(this.currentTab).addClass('active');
                $(this.currentTab).attr('aria-selected', true);
            }
        }
    }
}