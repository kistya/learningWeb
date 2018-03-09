<head>
  <title>Web Storage API</title>
  <link href="WebStorage.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

      <script type = "text/javascript">
          function finishProgress() {
              var x = document.getElementById("pr");
              x.value="100";
          }
      </script>
</head>
<body>
<nav>
    <ul>
        <li><a href="/kk/App/ImageSlider/ImageSlider.jsp">Image slider</a></li>
        <li><a href="/kk/App/Drag/Drag.jsp">Drag and drop</a></li>
        <li><a href="/kk/App/Video/Video.jsp">Video player</a></li>
        <li><a href="/kk/App/Audio/Audio.jsp">Audio player</a></li>
        <li><a href="/kk/App/Magic/Magic.jsp">Some JavaScript magic</a></li>
        <li><a href="/kk/App/WebStorage/WebStorage.jsp" class = "active">Web storage API</a></li>
        <li><a href="/kk/App/Geolocation/Geolocation.jsp">Geolocation</a></li>
        <li><a href="/kk/App/Progress/Progress.jsp">Progress</a></li>
        <li><a href="/kk/App/SVG/SVG.jsp">SVG</a></li>
    </ul>
</nav>

<br><br><br><br>
<div style="color:white;">Progress: </div> <progress id="pr" min="0" max="100" value = "35"></progress>

<br> <br>
<button onclick="finishProgress()" class="btn btn-4 btn-4a">Finish the process!</button>




</body>
