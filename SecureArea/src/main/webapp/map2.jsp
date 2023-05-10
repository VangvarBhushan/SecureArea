<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>


<div id="googleMap" style="width:100%;height:400px;"></div>

<script>

function myMap() {
var mapProp= {
  center:new google.maps.LatLng(18.51957, 73.85535),
  zoom:15,
};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
</script>

 <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIrVCYRHJH2LZ_8YWKs8ax4nWPiiAilrU&callback=myMap">
  </script>
  

</body>
</html>

    