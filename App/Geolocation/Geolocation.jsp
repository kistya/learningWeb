

<head>
  <title>Geolocation</title>
  <link href="Geolocation.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">



</head>
<body>
<nav>
    <ul>
        <li><a href="/kk/App/ImageSlider/ImageSlider.jsp">Image slider</a></li>
        <li><a href="/kk/App/Drag/Drag.jsp">Drag and drop</a></li>
        <li><a href="/kk/App/Video/Video.jsp">Video player</a></li>
        <li><a href="/kk/App/Audio/Audio.jsp">Audio player</a></li>
        <li><a href="/kk/App/WebStorage/WebStorage.jsp">Web storage API</a></li>
        <li><a href="/kk/App/Geolocation/Geolocation.jsp" class = "active">Geolocation</a></li>
        <li><a href="/kk/App/Progress/Progress.jsp">Progress</a></li>
        <li><a href="/kk/App/SVG/SVG.jsp">SVG</a></li>
        <li><a href="/kk/App/Angular/Angular.jsp">Angular</a></li>
        <li><a href="/kk/App/Shop/Shop.jsp">Shop</a></li>
    </ul>
    <a href="/kk/Login/LoginPage.jsp" id="logOut">Log out</a>
</nav>

<br><br><br><br>
<button onclick="getLocation()" class="btn btn-4 btn-4a">Check your location</button>

<p id="demo"></p>

<div id="mapholder"></div>

<script type = "text/javascript">
var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    var latlon = position.coords.latitude + "," + position.coords.longitude;
    var img_url = "https://maps.googleapis.com/maps/api/staticmap?center="
    +latlon+"&zoom=14&size=600x400&key=AIzaSyBBUG6afaohX9Lnc6oXAArocSHllm3O4dI";
    document.getElementById("mapholder").innerHTML = "<img src='"+img_url+"'>";
}
//To use this code on your website, get a free API key from Google.
//Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp

function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
            x.innerHTML = "User denied the request for Geolocation."
            break;
        case error.POSITION_UNAVAILABLE:
            x.innerHTML = "Location information is unavailable."
            break;
        case error.TIMEOUT:
            x.innerHTML = "The request to get user location timed out."
            break;
        case error.UNKNOWN_ERROR:
            x.innerHTML = "An unknown error occurred."
            break;
    }
}
</script>


<br><br>
<hr>
<br><br>

<p> Just some map:</p>
<div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC-cSgN9GeWSw6e8ZeZ7-4aZE30w-ADU5c&callback=initMap">
    </script>



</body>
