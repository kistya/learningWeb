

<head>
  <title>Photo album</title>
  <link href="MainApp.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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

<script>
var num = 0;
//var source = num+".png"

function nextPict(){
    var image = document.getElementById("k_img");
    num++;
    if (num>4){
        num = 0;
    }
    image.src = num+".png";
}

function prevPict(){
    var image = document.getElementById("k_img");
    num--;
    if (num<0){
        num = 4;
    }
    image.src = num+".png";
}
</script>

<br><br><br>
           <!--<button type = "button" onclick=prevPict() ID = "okButton">Prev</button>
           <button type = "button"  ID = "okButton">Next</button> -->

           <button onclick=prevPict() class="btn btn-4 btn-4a"><i class="material-icons">chevron_left</i></button>
           <button onclick=nextPict() class="btn btn-4 btn-4b"><i class="material-icons">chevron_right</i></button> <br><br>

           <img id = "k_img" src ="0.png"/>


</body>
