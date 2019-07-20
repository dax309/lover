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
</body>
</html>
