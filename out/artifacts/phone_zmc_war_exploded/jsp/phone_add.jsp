<%--
  Created by IntelliJ IDEA.
  User: 小恙
  Date: 2018/8/23
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新手机</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form action="/phone/add" method="post">
        <div class="form-group"><input name="id" placeholder="id" type="text" class="form-control"></div>
        <div class="form-group"><input name="name" placeholder="手机名" type="text" class="form-control"></div>
        <div class="form-group"><input name="price" placeholder="价格" type="number" class="form-control"></div>
        <div class="form-group"><input name="brand" placeholder="品牌" type="text" class="form-control"></div>
        <div class="form-group"><input name="firm" placeholder="厂商" type="text" class="form-control"></div>
        <div class="form-group"><input type="submit" class="btn btn-primary"></div>
    </form>
</div>
</body>
</html>
