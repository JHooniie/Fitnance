/**
 * 
 */
	const position = new naver.maps.LatLng(37.3595704, 127.105399)
	const mapOptions = {
	      center: position, // 지도의 초기 중심 좌표
	      draggable: false, // 마우스 또는 손가락을 이용한 지도 이동(패닝) 허용 여부
	      zoom: 16, // 지도의 초기 줌 레벨
	      scrollWheel: false, // 마우스 스크롤 휠을 이용한 지도 확대/축소 허용 여부
	      pinchZoom: false, // 핀치 제스처를 이용한 지도 확대/축소 허용 여부
	      scaleControl: false, // 지도 축척 컨트롤의 표시 여부
	      mapDataControl: false, // 지도 데이터 저작권 컨트롤의 표시 여부
	      zoomOrigin: position // 줌 효과 시 고정하여 적용할 기준 좌표
	}
	const map = new naver.maps.Map('map', mapOptions);
