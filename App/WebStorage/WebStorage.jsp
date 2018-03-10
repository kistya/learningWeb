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

<script>
function clickCounter() {
    if(typeof(Storage) !== "undefined") {
        if (localStorage.clickcount) {
            localStorage.clickcount = Number(localStorage.clickcount)+1;
        } else {
            localStorage.clickcount = 1;
        }
        document.getElementById("result").innerHTML = "<p>You have clicked the button " + localStorage.clickcount + " time(s).</p>";
    } else {
        document.getElementById("result").innerHTML = "Sorry, your browser does not support web storage...";
    }
}

function saveSmthToStorage(paramName, value){
    localStorage.setItem(paramName, value);
}

function getSavedParam (paramName){
    <!--return localStorage.getItem(paramName);-->
    document.getElementById("k_outp").innerHTML = localStorage.getItem(paramName);
}
</script>

<br><br><br>

<p><button class="btn btn-4 btn-4a" onclick="clickCounter()">Click me!</button></p>
<div id="result"></div>
<p>Click the button to see the counter increase.</p>
<p>Close the browser tab (or window), and try again, and the counter will continue to count (is not reset).</p>

<br><br><br>


<input type="text" id="k_input" placeholder="text to remember"></input>

<button onclick="k_param, saveSmthToStorage(document.getElementById('i_input').innerHTML)">Save</button>


<br><br>
<p id="k_outp"><p>
<button onclick="getSavedParam("k_outp")">Get saved param</button>



</body>
