<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%--
  Created by IntelliJ IDEA.
  User: 小恙
  Date: 2018/8/26
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><sitemesh:title></sitemesh:title></title>

    <%@include file="phone_css.jsp"%>

</head>
<body>
<%@include file="phone_nav.jsp"%>

<div class="container-fluid">
    <div class="row">
        <%@include file="phone_menu.jsp"%>
        <%@include file="phone_js.jsp"%>
        <%@include file="phone_body.jsp"%>
    </div>
</div>

</body>
</html>
