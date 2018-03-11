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
        <!--<li><a href="/kk/App/Magic/Magic.jsp">Some JavaScript magic</a></li>-->
        <li><a href="/kk/App/WebStorage/WebStorage.jsp">Web storage API</a></li>
        <li><a href="/kk/App/Geolocation/Geolocation.jsp">Geolocation</a></li>
        <li><a href="/kk/App/Progress/Progress.jsp">Progress</a></li>
        <li><a href="/kk/App/SVG/SVG.jsp" class = "active">SVG</a></li>
    </ul>
</nav>

<script type = "text/javascript">
        function doSmth(){

        }
</script>

<br><br><br>
<p>SVG:</p>
<svg width = "750" height = "500">
    <rect width="10" height = "10" fill="orange">
        <animate attributeName="x" from="0" to="740" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName="y" from="0" to="300" dur="6s" fill="freeze" repeatCount="1"/>
    </rect>

    <rect width="10" height = "10" fill="red">
        <animate attributeName="x" from="740" to="0" dur="3s" fill="freeze" repeatCount="2"/>
        <animate attributeName="y" from="500" to="0" dur="3s" fill="freeze" repeatCount="2"/>
    </rect>

    <circle r="10" fill="lime">
        <animate attributeName="cx" from="250" to="100" dur="6s" fill="freeze" repeatCount="1"/>
        <animate attributeName="cy" from="0" to="490" dur="6s" fill="freeze" repeatCount="1"/>
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
<p>Canvas:</p>
<canvas id="canvas1" width="750" height="500" >
</canvas>

<script>
    var can = document.getElementById("canvas1");
    var ctx = can.getContext("2d");

    ctx.fillStyle = "orange";
    ctx.fillRect(20,20,25,50);

    ctx.translate (300,300);
    ctx.rotate ((Math.PI/180)*25);
    ctx.scale (1, 2.5);
    ctx.fillRect(20,20,25,50);
    //ctx.moveTo(40,50);
    //ctx.lineTo(300, 400);
</script>




<br><br><br>
<p><button class="btn btn-4 btn-4a" onclick="doSmth()">Click me!</button></p>



</body>
