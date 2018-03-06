

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
    <a href="/kk/App/MainApp.jsp">Image slider</a>
    <a href="/kk/App/Drag/Drag.jsp">Drag and drop</a>
    <a href="/kk/App/Video/Video.jsp">Video player</a>
    <a href="/kk/App/Audio/Audio.jsp">Audio player</a>
    <a href="/kk/App/Magic/Magic.jsp">Some JavaScript magic</a>
    <a href="/kk/App/WebStorage/WebStorage.jsp">Web storage API</a>
    <a href="/kk/App/Geolocation/Geolocation.jsp">Geolocation</a>
    <a href="/kk/App/Progress/Progress.jsp">Progress</a>
    <a href="/kk/App/SVG/SVG.jsp">SVG</a>
</nav>


<div id="box" ondrop="drop(event)"
  ondragover="allowDrop(event)"
  style="border:1px solid black;
  width:200px; height:200px"></div>

  <br><br><br><br><br>
  <img id="image" src="kotik.png" draggable="true"
  ondragstart="drag(event)" width="75"/>





</body>
