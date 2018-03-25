<html ng-app>
<head>
  <title>Angular stuff</title>
  <link href="Angular.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<body>
<nav>
    <ul>
        <li><a href="/kk/App/ImageSlider/ImageSlider.jsp">Image slider</a></li>
        <li><a href="/kk/App/Drag/Drag.jsp">Drag and drop</a></li>
        <li><a href="/kk/App/Video/Video.jsp">Video player</a></li>
        <li><a href="/kk/App/Audio/Audio.jsp">Audio player</a></li>
        <!--<li><a href="/kk/App/Magic/Magic.jsp">Some JavaScript magic</a></li>-->
        <li><a href="/kk/App/WebStorage/WebStorage.jsp">Web storage API</a></li>
        <li><a href="/kk/App/Geolocation/Geolocation.jsp">Geolocation</a></li>
        <li><a href="/kk/App/Progress/Progress.jsp">Progress</a></li>
        <li><a href="/kk/App/SVG/SVG.jsp">SVG</a></li>
        <li><a href="/kk/App/Angular/Angular.jsp" class = "active">Angular</a></li>
    </ul>
</nav>

<br><br><br><br>

<label>Name: </label>
<input type="text" ng-model="name" placeholder="Enter a name">

<p>Hello {{name}}!</p>

<hr>
<p>This angular code summs 2 and 2 and result is: {{2+2}}</p>

</body>
</html>
