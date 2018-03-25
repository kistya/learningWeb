<head>
  <title>Web Storage API</title>
  <link href="WebStorage.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
<nav>
    <ul>
        <li><a href="/kk/App/ImageSlider/ImageSlider.jsp">Image slider</a></li>
        <li><a href="/kk/App/Drag/Drag.jsp">Drag and drop</a></li>
        <li><a href="/kk/App/Video/Video.jsp">Video player</a></li>
        <li><a href="/kk/App/Audio/Audio.jsp">Audio player</a></li>
        <li><a href="/kk/App/WebStorage/WebStorage.jsp" class = "active">Web storage API</a></li>
        <li><a href="/kk/App/Geolocation/Geolocation.jsp">Geolocation</a></li>
        <li><a href="/kk/App/Progress/Progress.jsp">Progress</a></li>
        <li><a href="/kk/App/SVG/SVG.jsp">SVG</a></li>
        <li><a href="/kk/App/Angular/Angular.jsp">Angular</a></li>
        <li><a href="/kk/App/Shop/Shop.jsp">Shop</a></li>
    </ul>
    <a href="/kk/Login/LoginPage.jsp" id="logOut">Log out</a>
</nav>

<script type = "text/javascript">
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

    function saveSmthToStorage(kkey, vvalue) {
        localStorage.paramParam = vvalue;
        document.getElementById("kkk").innerHTML = localStorage.paramParam;
    }

    //function getSavedParam (paramName){
    //    <!--return localStorage.getItem(paramName);-->
    //    document.getElementById("k_outp").innerHTML = localStorage.getItem(paramName);
    //}
</script>

<br><br><br>
<p><button class="btn btn-4 btn-4a" onclick="clickCounter()">Click me!</button></p>
<div id="result"></div>
<p>Click the button to see the counter increase.</p>
<p>Close the browser tab (or window), and try again, and the counter will continue to count.</p>
<br><br><br>
<hr>
<br><br><br>

<p>This part still doesn't work correctly:</p>
<input type="text" id="k_input" placeholder="text to remember"></input>
<div id="kkk"></div>
<button onclick="saveSmthToStorage('keyy', 'vallluuueee')"  class="btn btn-4 btn-4a">Save</button>


<!--<br><br>
<p id="k_outp"><p>
<button onclick="getSavedParam("k_outp")">Get saved param</button>-->



</body>
