<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="include/header.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <style>
    body {
      border: red;
    }
  </style>
  <body>
    <!-- 지도영역 -->
    <div
      id="map"
      style="width: 100%; height: 600px"
    ></div>

    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a5c28d99bb31ae88bf5a825a4fd77ac6&libraries=services,clusterer,drawing"
    ></script>
    <script
      src="https://code.jquery.com/jquery-3.7.0.min.js"
      integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
      crossorigin="anonymous"
    ></script>

    <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
          level: 12, // 지도의 확대 레벨
        };

      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
      // var map = new kakao.maps.Map(mapContainer, mapOption);

      let map = new kakao.maps.Map(mapContainer, mapOption),
        customOverlay = new kakao.maps.CustomOverlay({});

      var jsonLocation = '/resources/external_json//sido.json';

      let detailMode = false; // level에 따라 다른 json 파일 사용
      let level = '';
      let polygons = [];
      // var polygonPath = [];
      var points = [];

      $.getJSON(jsonLocation, function (data) {
        var data = data.features;
        var coordinates = [];
        var name = '';
        $.each(data, function (i, val) {
          if (val.geometry.type == 'Polygon') {
            coordinates = val.geometry.coordinates;
            name = val.properties.CTP_KOR_NM;

            displayArea(coordinates, name); // 호출!!
          }
        });
      });

      //폴리곤 표시
      function displayArea(coordinates, name) {
        var polygonPath = [];
        $.each(coordinates[0], function (i, coordinate) {
          var point = new Object();
          point.x = coordinate[1];
          point.y = coordinate[0];
          points.push(point);
          polygonPath.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
        });

        var polygon = new kakao.maps.Polygon({
          path: polygonPath, // 그려질 다각형의 좌표 배열입니다
          strokeWeight: 3, // 선의 두께입니다
          strokeColor: '#39DE2A', // 선의 색깔입니다
          strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
          strokeStyle: 'longdash', // 선의 스타일입니다
          fillColor: '#A2FF99', // 채우기 색깔입니다
          fillOpacity: 0.7, // 채우기 불투명도 입니다
        });

        polygon.setMap(map); // 지도에 다각형 표시
      }

      kakao.maps.event.addListener(map, 'zoom_changed', function () {
        level = map.getLevel();
        if (!detailMode && level <= 10) {
          // level 에 따라 다른 json 파일을 사용한다.
          detailMode = true;
          removePolygon();
          init('json/sig.json');
        } else if (detailMode && level > 10) {
          // level 에 따라 다른 json 파일을 사용한다.
          detailMode = false;
          removePolygon();
          init('json/sido.json');
        }
      });

      // 모든 폴리곤을 지우는 함수
      function removePolygon() {
        for (let i = 0; i < polygons.length; i++) {
          polygons[i].setMap(null);
        }
        areas = [];
        polygons = [];
      }

      ///////////////////////////////////////////////////
      // 다각형에 마우스오버 이벤트가 발생했을 때 변경할 채우기 옵션입니다
      var mouseoverOption = {
        fillColor: '#A2FF99', // 채우기 색깔입니다
        fillOpacity: 0.7, // 채우기 불투명도 입니다
      };

      // 다각형에 마우스아웃 이벤트가 발생했을 때 변경할 채우기 옵션입니다
      var mouseoutOption = {
        fillColor: '#EFFFED', // 채우기 색깔입니다
        fillOpacity: 0.8, // 채우기 불투명도 입니다
      };

      //
      kakao.maps.event.addListener(polygon, 'mouseover', function (mouseEvent) {
        polygon.setOptions({ fillColor: '#09f' });
        customOverlay.setContent('<div class="area">' + area.name + '</div>');
        customOverlay.setPosition(mouseEvent.latLng);
        customOverlay.setMap(map);
      });

      kakao.maps.event.addListener(polygon, 'mousemove', function (mouseEvent) {
        customOverlay.setPosition(mouseEvent.latLng);
      });

      kakao.maps.event.addListener(polygon, 'mouseout', function () {
        polygon.setOptions({ fillColor: '#fff' });
        customOverlay.setMap(null);
      });

      kakao.maps.event.addListener(polygon, 'click', function (mouseEvent) {
        if (!detailMode) {
          map.setLevel(10); // level에 따라 이벤트 변경
          var latlng = mouseEvent.latLng;

          // 지도의 중심을 부드럽게 클릭한 위치로 이동시킵니다.
          map.panTo(latlng);
        } else {
          // 클릭 이벤트 함수
          // callFunctionWithRegionCode(area.location);
        }
      });
    </script>
  </body>
</html>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
