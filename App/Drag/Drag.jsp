

<head>
  <title>Drag and drop</title>
  <link href="Drag.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

      <script type = "text/javascript">
      function allowDrop(ev) {
         ev.preventDefault();
      }

      function drag(ev) {
         ev.dataTransfer.setData("text", ev.target.id);
      }

      function drop(ev) {
         ev.preventDefault();
         var data = ev.dataTransfer.getData("text");
         ev.target.appendChild(document.getElementById(data));
      }
      </script>

</head>
<body>
<nav>
    <ul>
        <li><a href="/kk/App/ImageSlider/ImageSlider.jsp">Image slider</a></li>
        <li><a href="/kk/App/Drag/Drag.jsp" class = "active">Drag and drop</a></li>
        <li><a href="/kk/App/Video/Video.jsp">Video player</a></li>
        <li><a href="/kk/App/Audio/Audio.jsp">Audio player</a></li>
        <!--<li><a href="/kk/App/Magic/Magic.jsp">Some JavaScript magic</a></li>-->
        <li><a href="/kk/App/WebStorage/WebStorage.jsp">Web storage API</a></li>
        <li><a href="/kk/App/Geolocation/Geolocation.jsp">Geolocation</a></li>
        <li><a href="/kk/App/Progress/Progress.jsp">Progress</a></li>
        <li><a href="/kk/App/SVG/SVG.jsp">SVG</a></li>
        <li><a href="/kk/App/Angular/Angular.jsp">Angular</a></li>
        <li><a href="/kk/App/Bootstrap/Bootstrap.jsp">Bootstrap</a></li>
        <li><a href="/kk/App/Shop/Shop.jsp">Shop</a></li>
    </ul>
    <a href="/kk/Login/LoginPage.jsp" id="logOut">Log out</a>
</nav>

<br><br><br>

<p>On this page you can move picture to the box by drag and drop:</p>
<div id="box" ondrop="drop(event)"
  ondragover="allowDrop(event)"
  style="border:1px solid white;
  width:200px; height:200px"></div>

  <br><br><br><br><br>
  <img id="image" src="kotik.png" draggable="true"
  ondragstart="drag(event)" width="75"/>





</body>
