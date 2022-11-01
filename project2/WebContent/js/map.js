var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
         mapOption = {
            center: new kakao.maps.LatLng(35.110400427887825, 126.87747820480708), // 지도 중심좌표
            level: 3 // 지도 확대 정도(낮을 수록 확대)
         };
      // 지도 생성
      var map = new kakao.maps.Map(mapContainer, mapOption);
      // 지도 확대/축소
      var zoomControl = new kakao.maps.ZoomControl();

      var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
         mapOption = {
            center: new kakao.maps.LatLng(35.110400427887825, 126.87747820480708), // 지도 중심좌표
            level: 3 // 지도 확대 정도(낮을 수록 확대)
         };
      // 지도 생성
      var map1 = new kakao.maps.Map(mapContainer, mapOption);
      // 지도 확대/축소
      var zoomControl = new kakao.maps.ZoomControl();