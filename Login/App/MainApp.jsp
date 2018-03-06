

<head>
  <title>Photo album</title>
  <link href="MainApp.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
<nav>
<a href="">Image slider</a>
<a href="">Drag and drop</a>
<a href="">Video player</a>
<a href="Audio/Audio.jsp">Audio player</a>
<a href="">Some JavaScript magic</a>
<a href="">Web storage API</a>
<a href="">Geolocation</a>
<a href="">Progress</a>
<a href="">SVG</a>

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
