<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
<title>HELLO</title>
<body>
<h1>HiHi</h1>
   <h2>${message}</h2>
   <pre>${result}</pre>
</body>
 --%>
<!DOCTYPE html>
<html>
 
<head>
  <meta charset='UTF-8'>
  <!-- 
  <script src='../node_modules/jquery/dist/jquery.slim.min.js'></script>
   -->
  <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
  <script src='../node_modules/jquery/dist/jquery.min.js'></script>
  <script src='../node_modules/bootstrap/dist/js/bootstrap.min.js'></script>
  
  <link rel='stylesheet' href='../css/common.css'>
  <link rel='stylesheet' href='../node_modules/bootstrap/dist/css/bootstrap.min.css'>
</head>
 
<body>
	<!--부트스트랩 class명과 겹쳐 containerA로 수정함-->
  <div class="containerA">
  <jsp:include page="header.jsp"/>
    <section class="content">
      <main>
        <div id="map" style="width:100%;height:600px;"></div>
      </main>
  <jsp:include page="nav.jsp"/>
    </section>
  <jsp:include page="footer.jsp"/>
  </div>
  
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16ef3e47337d70c66bfabe07d24311a7&libraries=services"></script>
  <script>
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
  };
	
  // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
  var map = new kakao.maps.Map(mapContainer, mapOption); 
  </script>
  
  <jsp:include page="searchModal.jsp"/>
</body>
 
</html>

