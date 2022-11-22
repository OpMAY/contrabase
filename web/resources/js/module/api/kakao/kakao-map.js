/**
 * !!! 주의 사항
 * 해당 라이브러리는 map 객체가 하나만 있다고 가정하는 것이기에
 * control 가능한 map을 여러 개 두려면 custom이 필요함
 *
 * TODO 객체 지향의 방식으로 변경하려면 Class 화
 * TODO 마커 클릭 시 오버레이 데이터 불러오기
 * */

let map = null;
let overlay_container = $('#bottom-tab-kakao');
let markers = [];
const marker_image_src = window.location.origin + '/resources/assets/images/icon/icon-location-active.svg',
    marker_image_hover_src = window.location.origin + '/resources/assets/images/icon/icon-location.svg',
    marker_image_size = new kakao.maps.Size(32, 32),
    marker_image_option = {offset: new kakao.maps.Point(16, 32)};

const marker_image = new kakao.maps.MarkerImage(
    marker_image_src,
    marker_image_size,
    marker_image_option
)
const marker_hover_image = new kakao.maps.MarkerImage(
    marker_image_hover_src,
    marker_image_size,
    marker_image_option
)
let bounds = new kakao.maps.LatLngBounds();
let bound_points = [];

let clusterer = null;

/**
 * createKakaoMapElement,
 * 카카오 맵 element를 생성하는 함수
 * @version a.2
 * @Required kakao map sdk.js
 * @param {string} map_id kakao map이 그려질 div element
 * @param {number} map_x 기본 지도가 표시될 위치의 x좌표
 * @param {number} map_y 기본 지도가 표시될 위치의 y좌표
 * @param {number} level 지도 확대 레벨 (default : 3)
 * @param {boolean} draggable 드래그 가능한지 여부 (default : true)
 * @param {boolean} zoomable 확대 가능한지 여부 (default : true)
 * @example
 * createKakaoMapElement({map_id : 'map',
 *             map_x : 126.570667,
 *             map_y : 33.450701,
 *             level : 3
 *             });
 * */
async function createKakaoMapElement({
                                         map_id,
                                         map_x,
                                         map_y,
                                         level = 3,
                                         draggable = true,
                                         zoomable = true,
                                     }) {
    // Container -> 무조건 pure javascript element
    let container = document.getElementById(map_id);
    let options = {
        center: new kakao.maps.LatLng(map_y, map_x), //지도의 중심좌표.
        level: level //지도의 레벨(확대, 축소 정도)
    }
    map = new kakao.maps.Map(container, options);
    map.setDraggable(draggable);
    map.setZoomable(zoomable);
    kakao.maps.event.addListener(map, 'click', function () {
        removeMarkersClickedImage();
        closeOverlay();
    });


    console.log('clusterer before : ', clusterer);
    clusterer = new kakao.maps.MarkerClusterer({
        map: map,
        averageCenter: true,
        minLevel: 6
    })

    console.log('clusterer : ', clusterer);
}

/**
 * createMarkerOnMap,
 * 카카오 맵 내부에 marker를 생성하는 함수
 * @version a.2
 * @Required kakao map sdk.js
 * @Required map is not null
 * @param {number} map_x 기본 지도가 표시될 위치의 x좌표
 * @param {number} map_y 기본 지도가 표시될 위치의 y좌표
 * @param {function} onClick 이벤트에 해당하는 callback 함수
 * @param {function} onMouseOver 이벤트에 해당하는 callback 함수
 * @param {function} onMouseOut 이벤트에 해당하는 callback 함수
 * @param {function} onRightClick 이벤트에 해당하는 callback 함수
 * @param {function} onDragStart 이벤트에 해당하는 callback 함수
 * @param {function} onDragEnd 이벤트에 해당하는 callback 함수
 * @param {boolean} isBoundSet 마커 추가함에 따라 지도의 확대 범위를 초기화 할 것인지 (default : true)
 * @param no -> 데이터 구분자, 데이터 넣는 형식에 따라 변경될 예정
 * @example
 * createMarkerOnMap({
 *             map_x : 126.570667,
 *             map_y : 33.450701
 *             });
 * */
const createMarkerOnMap = ({
                               map_x,
                               map_y,
                               onClick,
                               onMouseOver,
                               onMouseOut,
                               onRightClick,
                               onDragStart,
                               onDragEnd,
                               isBoundSet = true,
                               no
                           }) => {
    if (map !== null) {
        const position = new kakao.maps.LatLng(map_y, map_x);
        let marker = new kakao.maps.Marker({
            position: position,
            image: marker_image
        })
        // 지도에 마커 세팅
        marker.setMap(map);
        // 클러스터 세팅
        clusterer.addMarker(marker);
        // Bound 세팅
        bound_points.push(position);
        bounds.extend(position);

        // Control할 마커 목록에 추가
        markers.push(marker);

        if (isBoundSet)
            setBounds();

        kakao.maps.event.addListener(marker, 'click', onClick ? onClick : function () {
            removeMarkersClickedImage();
            marker.setImage(marker_hover_image);
            showOverlay(no);
        });

        kakao.maps.event.addListener(marker, 'mouseover', onMouseOver ? onMouseOver : function () {
            marker.setOpacity(0.7);
        });

        kakao.maps.event.addListener(marker, 'mouseout', onMouseOut ? onMouseOut : function () {
            marker.setOpacity(1);
        });

        kakao.maps.event.addListener(marker, 'rightclick', onRightClick ? onRightClick : function () {

        });

        kakao.maps.event.addListener(marker, 'dragstart', onDragStart ? onDragStart : function () {

        });

        kakao.maps.event.addListener(marker, 'dragend', onDragEnd ? onDragEnd : function () {
            console.log('marker dragend!');
        });
    } else {
        console.log('kakao map error : map element가 세팅되지 않았습니다.');
    }
}

const closeOverlay = () => {
    overlay_container.css('bottom', '-40%');
}

const showOverlay = (data) => {
    // TODO FETCH CALL OVERLAY DATA
    // let overlay_html = createOverlayElement(data);
    // overlay_container.html(overlay_html);
    overlay_container.find('.bold-h5').html(`운송 운반 | 덤프트럭 2대, 데이터 ${data}번`); // SAMPLE
    // TODO EVENT LISTENER ON OVERLAY CHILDREN ELEMENTS
    // TODO 예상 이벤트 -> 일자리 지원하기, 즐겨찾기
    // overlay_container.on('click', 'element', function () {
    //
    // })

    overlay_container.css('bottom', 0);
}

const removeMarkersClickedImage = () => {
    for (let i = 0; i < markers.length; i++) {
        markers[i].setImage(marker_image);
    }
}

const removeAllMarkers = () => {
    for (let i = 0; i < markers.length; i++) {
        markers[i].setMap(null);
    }
    markers = [];
    clusterer.clear();
    bounds = new kakao.maps.LatLngBounds();
}

const removeMarker = (marker) => {
    if (marker !== undefined && marker !== null) {
        marker.setMap(null);
        clusterer.removeMarker(marker);
        markers.splice(markers.indexOf(marker), 1);
    }
}

const setOverlayContainer = (container_id) => {
    overlay_container = document.getElementById(container_id);
}

const createOverlayElement = (data) => {
    // TODO Overlay Element Create By DATA
}

// 마커 기준으로 지도 확대 범위, 위치 조정
// 모든 마커가 한 눈에 들어올 수 있게 해주는 함수
const setBounds = () => {
    map.setBounds(bounds);
}

// 필터를 초기화함에 따라 지도 내의 마커들을 특정 필터 기준에 따라 재설정
const resetMap = () => {
    removeAllMarkers();
    // SAMPLE
    let array = [
        {
            no: 1,
            start_place_x: 126.567803,
            start_place_y: 33.452278
        },
        {
            no: 2,
            start_place_x: 126.574792,
            start_place_y: 33.452671
        },
        {
            no: 3,
            start_place_x: 126.572441,
            start_place_y: 33.451744
        }
    ];

    array.forEach((element) => {
        createMarkerOnMap({
            map_x: element.start_place_x,
            map_y: element.start_place_y,
            no: element.no
        })
    })
}

// 필터 선택 시 현재 기준 맵에 마커가 있으면 그대로, 없으면 이동
const setMapByFilters = (filter) => {
    // TODO call list by filters
    console.log(filter);
    // remove All markers
    removeAllMarkers();
    // SAMPLE
    let array = [
        {
            no: 1,
            start_place_x: 126.567803,
            start_place_y: 33.452278
        },
        {
            no: 2,
            start_place_x: 126.574792,
            start_place_y: 33.452671
        },
        {
            no: 3,
            start_place_x: 126.572441,
            start_place_y: 33.451744
        }
    ];

    array.forEach((element) => {
        createMarkerOnMap({
            map_x: element.start_place_x,
            map_y: element.start_place_y,
            no: element.no,
            isBoundSet: false,
        })
    })
    // 맵의 표시 범위를 구함
    let map_bound = map.getBounds();
    let bound_contains = false;
    // 맵 범위 내에 마커가 있는지 체크
    markers.forEach((element) => {
        let marker_position = element.getPosition();
        bound_contains = map_bound.contains(marker_position)
    })

    // 맵 범위 안에 마커가 없으면 현재 있는 마커들 기준으로 범위 세팅
    if(!bound_contains && markers.length > 0) {
        setBounds();
    }
}