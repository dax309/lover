<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: dax30
  Date: 2019/7/19
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>生日快乐</title>
    <link rel="stylesheet" type="text/css" href="static/css/normalize.css" /><!--CSS RESET-->
    <link rel="stylesheet" type="text/css" href="static/dist/css/main.min.css">

    <style type="text/css">
        @font-face {
            font-family: digit;
            src: url('digital-7_mono.ttf') format("truetype");
        }
    </style>

    <link href="static/css/default.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/js/garden.js"></script>
    <script type="text/javascript" src="static/js/functions.js"></script>

</head>
<body>


<%
    Date date =new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date time = sdf.parse("2019-8-12");
    if(date.before(time)){
%>
<jsp:forward page="time.jsp"></jsp:forward>
<%
    }
%>


<audio src="static/music/happy.m4a" autoplay="autoplay" loop=""></audio>
<div id="mainDiv">
    <div id="content">
        <div id="code">
				<span class="keyword"><br />
				<span class="space"/><br />
				<span class="space"/><br />
				<span class="space"/><br />
				<span style="font-size: 50px" class="space"/>生日快乐！<br /></span> <br />
            <br />
        </div>
        <div id="loveHeart">
            <canvas id="garden"></canvas>
            <div id="words">
                <div id="messages">

                    <!-- <div id="elapseClock"></div> -->
                </div>
                <div id="loveu">
                    Love u forever and ever.<br/>
                    <!-- <div class="signature">- 大神</div> -->
                </div>
            </div>
        </div>
    </div>

</div>
<script type="text/javascript">
    var offsetX = $("#loveHeart").width() / 2;
    var offsetY = $("#loveHeart").height() / 2 - 55;
    var together = new Date();
    together.setFullYear(2018, 8, 20);
    together.setHours(15);
    together.setMinutes(45);
    together.setSeconds(0);
    together.setMilliseconds(0);

    if (!document.createElement('canvas').getContext) {
        var msg = document.createElement("div");
        msg.id = "errorMsg";
        msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+";
        document.body.appendChild(msg);
        $("#code").css("display", "none")
        $("#copyright").css("position", "absolute");
        $("#copyright").css("bottom", "10px");
        document.execCommand("stop");
    } else {
        setTimeout(function () {
            startHeartAnimation();
        }, 5000);

        timeElapse(together);
        setInterval(function () {
            timeElapse(together);
        }, 500);

        adjustCodePosition();
        $("#code").typewriter();
    }
</script>

</body>
</html>
