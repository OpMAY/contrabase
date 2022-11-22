/**
 * !!! 주의 사항
 * 해당 라이브러리는 map 객체가 하나만 있다고 가정하는 것이기에
 * control 가능한 map을 여러 개 두려면 custom이 필요함
 *
 * TODO 객체 지향의 방식으로 변경하려면 Class 화
 * */

let map = null;
let overlay_container = $('.map-overlay-container');
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
                               no
                           }) => {
    if (map !== null) {
        const position = new kakao.maps.LatLng(map_y, map_x);
        let marker = new kakao.maps.Marker({
            position: position,
            image: marker_image
        })
        bound_points.push(position);
        bounds.extend(position);
        marker.setMap(map);
        clusterer.addMarker(marker);
        markers.push(marker);
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
}

const removeMarker = (marker) => {
    marker?.setMap(null);
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