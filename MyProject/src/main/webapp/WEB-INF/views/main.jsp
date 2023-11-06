<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="include/header.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <style>
    html,
    body {
      /* background-image: url(); */
      /* background: url(MyProject\src\main\webapp\resources\static\img\mountain.jpg);
      background-size: cover; */
      height: 100%;
      margin: 0;
      overflow: hidden;
      -ms-overflow-style: none;
    }

    ::-webkit-scrollbar {
      display: none;
    }

    body > #wrap {
      display: flex;
      justify-content: space-around;
      margin-top: 5px;
      margin-bottom: 5px;
      vertical-align: middle;
    }
    /*
    body > #wrap > #searchPart {
    }*/
    body > #wrap > #map {
      display: inline-block;
      width: 50%;
      height: 650px;
    }

    /* .container {
      width: 100vw;
      height: 100vh;
      background: pink;
    }  */
    /*** COLORS ***/
    @bg-color: #913D88;
    @txt-color: #FFFFFF;
    @icn-color: #FFFFFF;

    /*** DEMO ***/
    body {
      /* background: #913d88; */
      color: black;
    }
    p {
      margin-top: 30px;
    }
    .cntr {
      display: table;
      width: 50%;
      height: 40%;
    }
    .cntr .cntr-innr {
      display: table-cell;
      text-align: center;
      vertical-align: middle;
    }

    /*** STYLES ***/
    .search {
      display: inline-block;
      position: relative;
      height: 35px;
      width: 35px;
      box-sizing: border-box;
      margin: 0px 8px 7px 0px;
      padding: 7px 9px 0px 9px;
      border: 3px solid #0356a9;
      border-radius: 25px;
      transition: all 200ms ease;
      cursor: text;
      /* background: url(/resources/static/img/blueSearchIcon.png) no-repeat center; */
    }
    .search:after {
      content: '';
      position: absolute;
      width: 3px;
      height: 20px;
      right: -5px;
      top: 21px;
      background: #0356a9;
      border-radius: 3px;
      transform: rotate(-45deg);
      transition: all 200ms ease;
    }

    .search.active,
    .search:hover {
      width: 200px;
      margin-right: 0px;
    }
    .search:after {
      /* height: 0px; */
    }
    .search:after:hover,
    .search:after:active {
      content: '';
      position: absolute;
      width: 3px;
      height: 20px;
      right: -5px;
      top: 21px;
      height: 0px;
    }
    input {
      width: 100%;
      border: none;
      box-sizing: border-box;
      font-family: Helvetica;
      font-size: 15px;
      color: inherit;
      background: transparent;
      outline-width: 0px;
    }
    /* 마우스 오버레이 박스 */
    .area {
      position: relative;
      width: 30px;
      height: 20px;
      padding: 15px 10px;
      font-size: 16px;
      font-family: monospace;
      font-weight: bold;
      text-align: center;
      border-radius: 10px;
      margin-bottom: 15px;
    }
  </style>
  <body>
    <div id="wrap">
      <!-- 검색부  -->
      <!-- <div id="searchPart">
        <form>
          <label for="address">키워드</label>
          <input
            type="text"
            id="address"
            name="address"
            style="width: 300px; padding: 4px"
          />
          <button
            type="button"
            id="btn"
            onclick="exe()"
          >
            검색
          </button>
        </form>
      </div> -->

      <div class="cntr">
        <div class="cntr-innr">
          <label
            class="search"
            for="inpt_search"
          >
            <input
              id="inpt_search"
              type="text"
            />
          </label>
          <p>키워드 검색해 보세요.</p>
        </div>
      </div>
      <!-- 지도영역 -->
      <div id="map"></div>
    </div>

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
      let address = document.getElementById('inpt_search');

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
            name = val.properties.SIG_KOR_NM;

            displayArea(coordinates, name); // 호출!!
          }
        });
      });

      //검색 결과
      viewMap(null); //함수 호출

      //함수 선언
      function exe() {
        //input태그의 값을 저장
        //let address = frm.address.value;
        let addr = address.value; //사용자가 입력한 값
        if (addr.trim().length < 1) {
          alert('내용을 입력하세요');
          address.value = '';
          address.focus();
        } else {
          viewMap(addr); //주소 넣었으니까.. 지도 보여달라고 함수 호출
        }
      }

      function viewMap(addr1) {
        if (addr1 == null) {
          // addr1 = '서울특별시 마포구 백범로 23';
          init('json/sido.json');
        }

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();

        // 주소로 좌표를 검색합니다 '서울특별시 마포구 백범로 23'
        geocoder.addressSearch(addr1, function (result, status) {
          // 정상적으로 검색이 완료됐으면
          if (status === kakao.maps.services.Status.OK) {
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
              map: map,
              position: coords,
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new kakao.maps.InfoWindow({
              content:
                '<div style="width:150px;text-align:center;padding:6px 0;">' +
                addr1 +
                '</div>',
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
          }
        });
        //}

        // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
        var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
          mapOption = {
            center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
            level: 3, // 지도의 확대 레벨
          };

        // 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 장소 검색 객체를 생성합니다
        var ps = new kakao.maps.services.Places();

        // 키워드로 장소를 검색합니다
        ps.keywordSearch(addr1, placesSearchCB);

        // 키워드 검색 완료 시 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
          if (status === kakao.maps.services.Status.OK) {
            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            var bounds = new kakao.maps.LatLngBounds();

            for (var i = 0; i < data.length; i++) {
              displayMarker(data[i]);
              bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
            }

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
            map.setBounds(bounds);
          }
        }

        // 지도에 마커를 표시하는 함수입니다
        function displayMarker(place) {
          // 마커를 생성하고 지도에 표시합니다
          var marker = new kakao.maps.Marker({
            map: map,
            position: new kakao.maps.LatLng(place.y, place.x),
          });

          // 마커에 클릭이벤트를 등록합니다
          kakao.maps.event.addListener(marker, 'click', function () {
            // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
            infowindow.setContent(
              '<div style="padding:5px;font-size:12px;">' +
                place.place_name +
                '</div>'
            );
            infowindow.open(map, marker);
          });
        }
      } // viewMap() end

      // $.each(data, function (i, val) {
      //   if (val.geometry.type == 'Polygon') {
      //     coordinates = val.geometry.coordinates;
      //     name = val.properties.CTP_KOR_NM;

      //     displayArea(coordinates, name); // 호출!!
      //   }
      // });

      // 폴리곤 생성!!!!!!!!!
      function init(path) {
        //path 경로의 json 파일 파싱
        $.getJSON(path, function (geojson) {
          var units = geojson.features; // json key값이 "features"인 것의 value를 통으로 가져온다.

          $.each(units, function (index, unit) {
            // 1개 지역씩 꺼내서 사용. val은 그 1개 지역에 대한 정보를 담는다
            var coordinates = []; //좌표 저장할 배열
            var name = ''; // 지역 이름
            var cd_location = '';
            coordinates = unit.geometry.coordinates; // 1개 지역의 영역을 구성하는 다각형의 모든 좌표 배열
            name = unit.properties.SIG_KOR_NM; // 1개 지역의 이름
            cd_location = unit.properties.SIG_CD;

            var ob = new Object();
            ob.name = name;
            ob.path = [];
            ob.location = cd_location;
            $.each(coordinates[0], function (index, coordinate) {
              ob.path.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
            });

            areas[index] = ob;
          }); //each
        }); //getJSON

        // 지도에 영역데이터를 폴리곤으로 표시
        for (var i = 0, len = areas.length; i < len; i++) {
          displayArea(areas[i]);
        }
      } // init() end

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
          strokeColor: '#39DE2A', // 선의 색깔입니다 초록
          //strokeColor: '#0356a9', // 선의 색깔입니다 파랑
          strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
          strokeStyle: 'longdash', // 선의 스타일입니다
          // fillColor: '#A2FF99', // 채우기 색깔입니다
          fillColor: '#EFFFED', // 채우기 색깔입니다
          fillOpacity: 0.7, // 채우기 불투명도 입니다
        });

        polygon.setMap(map); // 지도에 다각형 표시

        //수정
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

        kakao.maps.event.addListener(
          polygon,
          'mouseover',
          function (mouseEvent) {
            polygon.setOptions({ fillColor: '#09f' });
            setTimeout(
              customOverlay.setContent('<div class="area">' + name + '</div>'),
              1000
            );
            // customOverlay.setContent('<div class="area">' + name + '</div>');
            customOverlay.setPosition(mouseEvent.latLng);
            customOverlay.setMap(map);
          }
        );

        kakao.maps.event.addListener(
          polygon,
          'mousemove',
          function (mouseEvent) {
            customOverlay.setPosition(mouseEvent.latLng);
          }
        );

        kakao.maps.event.addListener(polygon, 'mouseout', function () {
          polygon.setOptions({ fillColor: '#EFFFED' });
          customOverlay.setMap(null);
        });

        kakao.maps.event.addListener(polygon, 'click', function (mouseEvent) {
          if (!detailMode) {
            map.setLevel(10); // level에 따라 이벤트 변경
            var latlng = mouseEvent.latLng;

            // 지도의 중심을 부드럽게 클릭한 위치로 이동시킵니다.
            map.panTo(latlng);
          } else {
            // polygon.setOptions({ fillOpacity: 0 });
            // 클릭 이벤트 함수
            // callFunctionWithRegionCode(area.location);
          }
        });
      } // displayArea() end

      // kakao.maps.event.addListener(map, 'zoom_changed', function () {
      //   level = map.getLevel();
      //   if (!detailMode && level <= 10) {
      //     // level 에 따라 다른 json 파일을 사용한다.
      //     detailMode = true;
      //     removePolygon();
      //     init('json/sig.json');
      //   } else if (detailMode && level > 10) {
      //     // level 에 따라 다른 json 파일을 사용한다.
      //     detailMode = false;
      //     removePolygon();
      //     init('json/sido.json');
      //   }
      // });

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
      // kakao.maps.event.addListener(polygon, 'mouseover', function (mouseEvent) {
      //   polygon.setOptions({ fillColor: '#09f' });
      //   customOverlay.setContent('<div class="area">' + area.name + '</div>');
      //   customOverlay.setPosition(mouseEvent.latLng);
      //   customOverlay.setMap(map);
      // });

      // kakao.maps.event.addListener(polygon, 'mousemove', function (mouseEvent) {
      //   customOverlay.setPosition(mouseEvent.latLng);
      // });

      // kakao.maps.event.addListener(polygon, 'mouseout', function () {
      //   polygon.setOptions({ fillColor: '#fff' });
      //   customOverlay.setMap(null);
      // });

      // kakao.maps.event.addListener(polygon, 'click', function (mouseEvent) {
      //   if (!detailMode) {
      //     map.setLevel(10); // level에 따라 이벤트 변경
      //     var latlng = mouseEvent.latLng;

      //     // 지도의 중심을 부드럽게 클릭한 위치로 이동시킵니다.
      //     map.panTo(latlng);
      //   } else {
      //     // 클릭 이벤트 함수
      //     // callFunctionWithRegionCode(area.location);
      //   }
      // });
      $('#inpt_search').on('focus', function () {
        $(this).parent('label').addClass('active');
      });

      $('#inpt_search').on('blur', function () {
        if ($(this).val().length == 0)
          $(this).parent('label').removeClass('active');
      });
    </script>
  </body>
</html>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
