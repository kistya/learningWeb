<head>
  <title>Web Storage API</title>
  <link href="SVG.css" rel="stylesheet" type="text/css"/>
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
        <li><a href="/kk/App/Geolocation/Geolocation.jsp">Geolocation</a></li>
        <li><a href="/kk/App/Progress/Progress.jsp">Progress</a></li>
        <li><a href="/kk/App/SVG/SVG.jsp" class = "active">SVG</a></li>
        <li><a href="/kk/App/Angular/Angular.jsp">Angular</a></li>
        <li><a href="/kk/App/Shop/Shop.jsp">Shop</a></li>
    </ul>
    <a href="/kk/Login/LoginPage.jsp" id="logOut">Log out</a>
</nav>

<script type = "text/javascript">
        function doSmth(){
                if (document.getElementById("limeCirc").getAttribute("fill") == "lime") {
                    document.getElementById("limeCirc").setAttribute("fill", "pink");
                }
                else{
                    document.getElementById("limeCirc").setAttribute("fill", "lime");
                }

                //setInterval(timerFunction, 100);

                //svgRect = document.getElementById("limeCirc");
                //var fillColor = svgRect.getAttribute("fill");
        }

        // timerFunction{
        //     var myCirc = document.getElementById("limeCirc");
        //     myCirc.setAttribute("r", myCirc.getAttribute("r")++);
        // }
</script>

<br><br><br>
<p>SVG:</p>
<svg width = "750" height = "500">
    <rect id="k_anim" width="10" height = "10">
        <animate attributeName="x" from="0" to="740" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName="y" from="0" to="300" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName= "fill" from="green" to="red" dur="3s"/ repeatCount=indefinite>
        <!--<animate attributeName= "fill" from="blue" to="orange" dur="3s" begin = "3s" repeatCount="indefinite"/>-->

    </rect>

    <rect width="10" height = "10" fill="red">
        <!--<animate attributeName="x" from="740" to="0" dur="3s" fill="freeze" repeatCount="2"/>
        <animate attributeName="y" from="500" to="0" dur="3s" fill="freeze" repeatCount="2"/>-->
        <animate attributeName="height" from="5" to="40" dur="6s" fill="freeze" repeatCount="1"/>
        <animateTransform attributeName="transform"

                          type="rotate"
                          from="0 50 50"
                          to="360 50 50"
                          dur="9s"
                          repeatCount="1"/>
    </rect>

    <circle r="10" fill="lime" id = "limeCirc">
        <animate attributeName="cx" from="250" to="100" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName="cy" from="0" to="490" dur="6s" fill="freeze" repeatCount="1"/>
        <!--<animate attributeName="r" from="1" to="20" dur="6s" fill="freeze" repeatCount="1"/>-->
    </circle>

    <line x1="10" y1="10" x2="200" y2="100" style="stroke:#FFF; stroke-linecap:round; stoke-width:2">
        <animate attributeName="x1" from="10" to="700" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName="y1" from="10" to="500" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName="x2" from="500" to="0" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName="y2" from="10" to="300" dur="6s" fill="freeze" repeatCount="1"/>
    </line>

    <polyline style="stroke-linejoin:miter; stroke:white;
        stroke-width:2; fill: none;"
        points = "300 400, 250 250, 200 450"
    />

    <path d="M 10 10 L200 200 L200 17 Z" style = "stroke:#FFF; fill:none;"/>
    <!--
        M - move to
        L - line to
        Z - close path
    -->

</svg>
<br>
<p><button class="btn btn-4 btn-4a" onclick="doSmth()">This button changes smth on the scene above</button></p>
<br>

/*---------------------canvas below-------------------------------------------*/

<p>Canvas:</p>
<canvas id="canvas1" width="750" height="500" >
</canvas>

<script>
    var can = document.getElementById("canvas1");
    var ctx = can.getContext("2d");

    ctx.fillStyle = "orange";
    ctx.fillRect(20,20,25,50);

    ctx.translate (300,300);

    ctx.scale (1, 2.5);
    ctx.fillRect(20,20,25,50);
    //ctx.moveTo(40,50);
    //ctx.lineTo(300, 400);
</script>





<br><br><br>




</body>
