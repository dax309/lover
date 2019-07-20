<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>倒计时</title>
<link rel="stylesheet" type="text/css" href="static/css/normalize.css" /><!--CSS RESET-->
<link rel="stylesheet" type="text/css" href="static/css/htmleaf-demo.css"><!--演示页面样式，使用时可以不引用-->
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Raleway:900,700,400,300'>
<style>
    a:hover {
        cursor: pointer;
    }
    body,
    html {
        height: 100%;
        font-family: 'Raleway', Helvetica, Roboto, Arial, sans-serif;
    }
    .changer {
        position: absolute;
        z-index: 30;
        width: 230px;
        left: 10%;
        bottom: 10%;
        padding: 0px;
        color: #777777;
    }
    .changer .sub {
        font-weight: 300;
    }
    .changer h1 {
        font-size: 2.25em;
        font-weight: 800;
    }
    .changer .demos {
        line-height: 1;
    }
    .changer .demos a {
        color: #fff;
        display: block;
        margin: 15px 0;
        font-size: 1.1875em;
    }
    .changer .demos a[data-go="1"] {
        color: #40BBB8;
    }
    .changer .demos a[data-go="2"] {
        color: #B24600;
    }
    .changer .demos a[data-go="3"] {
        color: #98ADA4;
    }
    #container {
        position: absolute;
        top: 20px;
        left: 20px;
        right: 20px;
        bottom: 20px;
        overflow: hidden;
    }
    #container > div {
        position: absolute;
        top: 0px;
        left: 0px;
        right: 0px;
        bottom: 0px;
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
    }
    [data-demo="1"] #container #f1 {
        left: 40%;
        right: auto;
        width: 100%;
        -webkit-animation: roll 60s linear infinite;
        -moz-animation: roll 60s linear infinite;
        animation: roll 60s linear infinite;
        -ms-animation: roll 60s linear infinite;
    }
    @-moz-keyframes roll {
        50% {
            -webkit-transform: translate(-40%, 0);
            -moz-transform: translate(-40%, 0);
            -ms-transform: translate(-40%, 0);
            -o-transform: translate(-40%, 0);
            transform: translate(-40%, 0);
        }
        100% {
            -webkit-transform: translate(0%, 0);
            -moz-transform: translate(0%, 0);
            -ms-transform: translate(0%, 0);
            -o-transform: translate(0%, 0);
            transform: translate(0%, 0);
        }
    }
    @-webkit-keyframes roll {
        50% {
            -webkit-transform: translate(-40%, 0);
            -moz-transform: translate(-40%, 0);
            -ms-transform: translate(-40%, 0);
            -o-transform: translate(-40%, 0);
            transform: translate(-40%, 0);
        }
        100% {
            -webkit-transform: translate(0%, 0);
            -moz-transform: translate(0%, 0);
            -ms-transform: translate(0%, 0);
            -o-transform: translate(0%, 0);
            transform: translate(0%, 0);
        }
    }
    @keyframes roll {
        50% {
            -webkit-transform: translate(-40%, 0);
            -moz-transform: translate(-40%, 0);
            -ms-transform: translate(-40%, 0);
            -o-transform: translate(-40%, 0);
            transform: translate(-40%, 0);
        }
        100% {
            -webkit-transform: translate(0%, 0);
            -moz-transform: translate(0%, 0);
            -ms-transform: translate(0%, 0);
            -o-transform: translate(0%, 0);
            transform: translate(0%, 0);
        }
    }
    [data-demo="2"] #container #f1 {
        -webkit-animation: zoomin 30s linear infinite;
        -moz-animation: zoomin 30s linear infinite;
        animation: zoomin 30s linear infinite;
        -ms-animation: zoomin 30s linear infinite;
    }
    @-moz-keyframes zoomin {
        50% {
            -webkit-transform: scale(1.2);
            -moz-transform: scale(1.2);
            -ms-transform: scale(1.2);
            -o-transform: scale(1.2);
            transform: scale(1.2);
        }
        100% {
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transform: scale(1);
        }
    }
    @-webkit-keyframes zoomin {
        50% {
            -webkit-transform: scale(1.2);
            -moz-transform: scale(1.2);
            -ms-transform: scale(1.2);
            -o-transform: scale(1.2);
            transform: scale(1.2);
        }
        100% {
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transform: scale(1);
        }
    }
    @keyframes zoomin {
        50% {
            -webkit-transform: scale(1.2);
            -moz-transform: scale(1.2);
            -ms-transform: scale(1.2);
            -o-transform: scale(1.2);
            transform: scale(1.2);
        }
        100% {
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transform: scale(1);
        }
    }
    [data-demo="2"] #container #f2 {
        -webkit-transform: scale(1.1);
        -moz-transform: scale(1.1);
        -ms-transform: scale(1.1);
        -o-transform: scale(1.1);
        transform: scale(1.1);
        -webkit-animation: zoomout 30s linear infinite;
        -moz-animation: zoomout 30s linear infinite;
        animation: zoomout 30s linear infinite;
        -ms-animation: zoomout 30s linear infinite;
    }
    @-moz-keyframes zoomout {
        50% {
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transform: scale(1);
        }
        100% {
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -ms-transform: scale(1.1);
            -o-transform: scale(1.1);
            transform: scale(1.1);
        }
    }
    @-webkit-keyframes zoomout {
        50% {
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transform: scale(1);
        }
        100% {
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -ms-transform: scale(1.1);
            -o-transform: scale(1.1);
            transform: scale(1.1);
        }
    }
    @keyframes zoomout {
        50% {
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transform: scale(1);
        }
        100% {
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -ms-transform: scale(1.1);
            -o-transform: scale(1.1);
            transform: scale(1.1);
        }
    }
    [data-demo="2"] #container #f3 {
        -webkit-transform: scale(1.1);
        -moz-transform: scale(1.1);
        -ms-transform: scale(1.1);
        -o-transform: scale(1.1);
        transform: scale(1.1);
        -webkit-animation: zoomout 30s linear infinite;
        -moz-animation: zoomout 30s linear infinite;
        animation: zoomout 30s linear infinite;
        -ms-animation: zoomout 30s linear infinite;
    }
    [data-demo="3"] #container #f1 {
        -webkit-transform: translate(10%, 0%);
        -moz-transform: translate(10%, 0%);
        -ms-transform: translate(10%, 0%);
        -o-transform: translate(10%, 0%);
        transform: translate(10%, 0%);
        opacity: 0;
        -webkit-opacity: 0;
        -moz-opacity: 0;
        -webkit-animation: opa 40s linear infinite;
        -moz-animation: opa 40s linear infinite;
        animation: opa 40s linear infinite;
        -ms-animation: opa 40s linear infinite;
    }
    @-moz-keyframes opa {
        30% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
        }
        50% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
            -webkit-transform: translate(0%, 0%);
            -moz-transform: translate(0%, 0%);
            -ms-transform: translate(0%, 0%);
            -o-transform: translate(0%, 0%);
            transform: translate(0%, 0%);
        }
        70% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
        }
        100% {
            opacity: 0;
            -webkit-opacity: 0;
            -moz-opacity: 0;
            -webkit-transform: translate(10%, 0%);
            -moz-transform: translate(10%, 0%);
            -ms-transform: translate(10%, 0%);
            -o-transform: translate(10%, 0%);
            transform: translate(10%, 0%);
        }
    }
    @-webkit-keyframes opa {
        30% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
        }
        50% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
            -webkit-transform: translate(0%, 0%);
            -moz-transform: translate(0%, 0%);
            -ms-transform: translate(0%, 0%);
            -o-transform: translate(0%, 0%);
            transform: translate(0%, 0%);
        }
        70% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
        }
        100% {
            opacity: 0;
            -webkit-opacity: 0;
            -moz-opacity: 0;
            -webkit-transform: translate(10%, 0%);
            -moz-transform: translate(10%, 0%);
            -ms-transform: translate(10%, 0%);
            -o-transform: translate(10%, 0%);
            transform: translate(10%, 0%);
        }
    }
    @keyframes opa {
        30% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
        }
        50% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
            -webkit-transform: translate(0%, 0%);
            -moz-transform: translate(0%, 0%);
            -ms-transform: translate(0%, 0%);
            -o-transform: translate(0%, 0%);
            transform: translate(0%, 0%);
        }
        70% {
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
        }
        100% {
            opacity: 0;
            -webkit-opacity: 0;
            -moz-opacity: 0;
            -webkit-transform: translate(10%, 0%);
            -moz-transform: translate(10%, 0%);
            -ms-transform: translate(10%, 0%);
            -o-transform: translate(10%, 0%);
            transform: translate(10%, 0%);
        }
    }
</style>
</head>
<body>
<div class="changer">
    <div class="sub">
        <div style="text-align: center">
            <audio src="static/music/love.mp3"  controls="controls" loop="loop" preload="auto" ></audio>
        </div>
    </div>
    <h1>还有</h1>
    <div class="demos"><a data-go="1"><span id="c1"></span></a><a data-go="2"><span id="c2"></span></a><a data-go="3"><span id="c3"></span></a></div>
</div>
<div id="container"></div>

<script src="static/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script>
    var demos = [];
    var cloudsuit = {
        one: {
            bg: "http://caraujo_pens.surge.sh/images/ZnkfwAR.jpg",
            bm: "none" },

        two: {
            bg: "http://caraujo_pens.surge.sh/images/ONBXKkS.jpg",
            bm: "lighten" },

        three: {
            bg: "http://caraujo_pens.surge.sh/images/qKNpn9G.png",
            bm: "multiply" } };


    demos.push(cloudsuit);


    var urbansky = {
        one: {
            bg: "http://caraujo_pens.surge.sh/images/l1MS7kk.jpg",
            bm: "none" },

        two: {
            bg: "http://caraujo_pens.surge.sh/images/6QBLNy6.jpg",
            bm: "multiply" },

        three: {
            bg: "http://caraujo_pens.surge.sh/images/bmnzJRs.png",
            bm: "none" } };


    demos.push(urbansky);


    var knowledge = {
        one: {
            bg: "http://caraujo_pens.surge.sh/images/YpTSfYD.jpg",
            bm: "none" },

        two: {
            bg: "http://caraujo_pens.surge.sh/images/ziAdjNM.jpg",
            bm: "multiply" },

        three: {
            bg: "http://caraujo_pens.surge.sh/images/dnfONso.png",
            bm: "none" } };


    demos.push(knowledge);


    var container = document.getElementById("container");
    var active;
    var applyDemo = function (number) {
        console.log(number);
        var go = demos[number - 1];

        container.innerHTML = "";



        var f1 = document.createElement("div");
        f1.setAttribute("id", "f1");
        var style = "background-image: url(" + go.one.bg + "); mix-blend-mode: " + go.one.bm + ";";
        f1.setAttribute("style", style);
        container.appendChild(f1);


        var f2 = document.createElement("div");
        f2.setAttribute("id", "f2");
        var style = "background-image: url(" + go.two.bg + "); mix-blend-mode: " + go.two.bm + ";";
        f2.setAttribute("style", style);
        container.appendChild(f2);

        var f3 = document.createElement("div");
        f3.setAttribute("id", "f3");
        var style = "background-image: url(" + go.three.bg + "); mix-blend-mode: " + go.three.bm + ";";
        f3.setAttribute("style", style);
        container.appendChild(f3);
        active = number;

        document.body.setAttribute("data-demo", number);
    };
    applyDemo(1);


    $('.demos').on('click', 'a', function (event) {
        event.preventDefault();
        var t = this;

        if (active == t.getAttribute("data-go")) return;

        $(container).fadeOut({
            duration: 1000,
            complete: function () {
                applyDemo(t.getAttribute("data-go"));
                $(container).fadeIn(1000);
            } });

    });
</script>

<p><span ></span></p>
<script>


    var oSpan = document.getElementById('c1');
    var oSpan2 = document.getElementById('c2');
    var oSpan3 = document.getElementById('c3');
    function tow(n) {
        return n >= 0 && n < 10 ? '0' + n : '' + n;
    }
    function getDate() {
        var oDate = new Date();//获取日期对象
        var oldTime = oDate.getTime();//现在距离1970年的毫秒数
        var newDate = new Date('2019/8/12 00:00:00');
        var newTime = newDate.getTime();//2019年距离1970年的毫秒数
        var second = Math.floor((newTime - oldTime) / 1000);//未来时间距离现在的秒数
        var day = Math.floor(second / 86400);//整数部分代表的是天；一天有24*60*60=86400秒 ；
        second = second % 86400;//余数代表剩下的秒数；
        var hour = Math.floor(second / 3600);//整数部分代表小时；
        second %= 3600; //余数代表 剩下的秒数；
        var minute = Math.floor(second / 60);
        second %= 60;
        var str = tow(day) + '<span class="time">天</span>'
            + tow(hour) + '<span class="time">小时</span></p>';
        var str2 = tow(minute) + '<span class="time">分钟</span>';
        var str3 = tow(second) + '<span class="time">秒</span>';
        oSpan.innerHTML = str;
        oSpan2.innerHTML = str2;
        oSpan3.innerHTML = str3;
    }
    getDate();
    setInterval(getDate, 1000);
</script>

</body>
</html>