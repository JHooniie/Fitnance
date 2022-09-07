<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"
        />
        <!-- head -->
        <c:import url="/WEB-INF/views/layout/head.jsp" />
        <!-- css -->
        <link rel="stylesheet" href="<c:url value='/css/intro.css'/>" />


        <meta charset="UTF-8" />
    </head>
    <body>
        <!-- top.jsp -->
        <c:import url="/WEB-INF/views/layout/top.jsp" />

        <div class="middle">
            <div class="middle1 wrap">
                <ul>
                    <li>
                        금융 상품을 fit:하게<br />
                        추천해드려요!
                    </li>
                    <li>ai기술을 이용해</li>
                    <li>최신 정보로 여러분에게 딱맞는</li>
                    <li>금융 상품을 소개해 드릴게요</li>
                </ul>
            </div>
            <div class="middle2">
                <ul>
                    <li>
                        <img
                            src="<c:url value='/images/lg_fitnance_b_white.png'/>"
                            class="middle2-image"
                            alt="fit:nacnce"
                        />
                    </li>
                    <li>가장 핏:한 금융 서비스</li>
                    <li>무엇을 필요로 하고 원하는지 분석해</li>
                    <li>고객마다 알맞은 정보를 제공합니다</li>
                    <li>금융 상품 선택에 대한 고민은 이제 NO!</li>
                </ul>
            </div>
            <div class="middle3 wrap">
                <div class="middle3-title">오시는 길</div>
                <div class="middle3-sub">
                    <div class="middle3-sub01">
                        <div class="sub1">주소</div>
                        <div class="sub1-detail">서울 강남구 선릉로 428 2층 (위워크)</div>
                    </div>
                    <div class="middle3-sub02">
                        <div class="sub2">전화번호</div>
                        <div class="sub2-detail">02-2442-0888</div>
                    </div>
                </div>
                <div class="middle3-box"><div id="map" style="width: 100%; height: 100%; border-radius: 15px;"></div></div>
                
            </div>
        </div>

        <!-- bottom.jsp -->
        <c:import url="/WEB-INF/views/layout/footer.jsp" />

        <!-- NAVER Map API v3 -->
        <script
            type="text/javascript"
            src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=qvhf9a9g08&callback=initMap"
        ></script>
        <script type="text/javascript">
            var map = null;

            function initMap() {
                const position = new naver.maps.LatLng(37.503784, 127.049657);
                const mapOptions = {
                    center: position, // 지도의 초기 중심 좌표
                    draggable: true, // 마우스 또는 손가락을 이용한 지도 이동(패닝) 허용 여부
                    zoom: 16, // 지도의 초기 줌 레벨
                    scrollWheel: true, // 마우스 스크롤 휠을 이용한 지도 확대/축소 허용 여부
                    pinchZoom: false, // 핀치 제스처를 이용한 지도 확대/축소 허용 여부
                    scaleControl: false, // 지도 축척 컨트롤의 표시 여부
                    mapDataControl: false, // 지도 데이터 저작권 컨트롤의 표시 여부
                    zoomOrigin: position, // 줌 효과 시 고정하여 적용할 기준 좌표
                };

                map = new naver.maps.Map('map', mapOptions);
                var marker = new naver.maps.Marker({
                    position: new naver.maps.LatLng(37.503784, 127.049657),
                    map: map
                });
            }
            
            

        
        </script>
    </body>
</html>