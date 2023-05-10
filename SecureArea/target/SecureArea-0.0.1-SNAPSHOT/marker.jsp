<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

   <meta charset="UTF-8">

   <title>My Map With Marker</title>

   <style>

       #map {

           height: 100%;

           width: 100%;

       }

       html, body {

           height: 100%;

           margin: 0;

           padding: 0;

       }

       .label {

           color: #000;

           background-color: white;

           border: 1px solid #000;

           font-family: "Lucida Grande", "Arial", sans-serif;

           font-size: 12px;

           text-align: center;

           white-space: nowrap;

           padding: 2px;

       }

       .label.green {

           background-color: #58D400;

       }

       .label.red {

           background-color: #D80027;

           color: #fff;

       }

       .label.yellow {

           background-color: #FCCA00;

       }

      

   </style>

   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIrVCYRHJH2LZ_8YWKs8ax4nWPiiAilrU&v=3.exp" type="text/javascript"></script>

   <script src="http://cdn.sobekrepository.org/includes/gmaps-markerwithlabel/1.9.1/gmaps-markerwithlabel-1.9.1.js" type="text/javascript"></script>

</head>

<body>

<div id="map"></div>

<div class=''>
		
		
		  out.println("<script> alert('Green - Safe Area 70% - 100%,  Yellow - Average Area 50%,  Red - Unsafe Area 30% - 50%')</script>");  
		
		
		</div>
		

<script>

 function initMap() {

   var bp = {lat: 18.51957, lng:73.85535 };

   var map = new google.maps.Map(document.getElementById('map'), {

     zoom: 11,

     center: bp

   });

   var locations = [

     ['kothrud',  18.50989,  73.807182, 'green', 38, -3],

     ['katraj',  18.445089,73.86898, 'yellow', -10, 20],

     ['Hinjewadi',  18.5913, 73.7389,'red', 23, -3],
     
     
     ['Baner',  18.559658,  73.779938, 'green', 38, -3],

     ['Koregaon Park',  18.5362,73.894, 'green', -10, 20],

     ['Akurdi',  18.6508, 73.7841,'red', 23, -3],

    

     ['kharadi',  18.5538, 73.9477,'green', 23, -3],
     ['Hadapsar',  18.5089, 73.9259,'yellow', 23, -3],
     
     ['Viman Nagar',  18.5679, 73.9143,'green', 23, -3],
     ['LoheGaon',  18.5945, 73.9276,'red', 23, -3],
     
     ['Yerawada',  18.5529, 73.8797,'red', 23, -3],
     ['wakad',  18.6011, 73.7641,'yellow', 23, -3],
     
     
     ['Dehu Road',  18.6868, 73.7419,'red', 23, -3],
     ['Talegaon',  18.7351, 73.6722,'green', 23, -3],
     
     
     ['Lavale',  18.5235, 73.7184,'yellow', 23, -3],



   ];

   var icons = {

     'green': {

       url: 'https://goo.gl/qvLZ4R',

       color: '#58D400'

     },

     'yellow': {

       url: 'https://goo.gl/G6HyHS',

       color: '#FCCA00'

     },

     'red': {

       url: 'https://goo.gl/6hkqX1',

       color: '#D80027'

     },

    

   };

   var image = 'https://goo.gl/dqvvFA';

   for (var i = 0; i < locations.length; i++) {

     var item = locations[i];

     var marker = new MarkerWithLabel({

       position: {lat: item[1], lng: item[2]},

       map: map,

       icon: icons[item[3]].url,

       labelContent: item[0],

       labelAnchor: new google.maps.Point(item[4], item[5]),

       // the CSS class for the label

       labelClass: "label " + item[3],

       labelInBackground: true

     });

   }

 }

 initMap();

</script>

</body>

</html>



