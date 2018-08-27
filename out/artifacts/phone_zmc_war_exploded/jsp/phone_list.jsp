<%--
  Created by IntelliJ IDEA.
  User: 小恙
  Date: 2018/8/22
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.nf147.entity.Phone" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>手机列表</title>
</head>
<body>
<div class="container">
    <form action="/phone/del" method="post">
        <table class="table table-striped">
            <tr>
                <th scope="col"><input id="all" type="checkbox">&nbsp;全选</th>
                <th scope="col">id</th>
                <th scope="col">手机名</th>
                <th scope="col">价格</th>
                <th scope="col">品牌</th>
                <th scope="col">厂商</th>
                <th scope="col">其他</th>
            </tr>
            <c:forEach var="phone" items="${requestScope.phones}">
                <tr>
                    <td><input class="id" name="id" type="checkbox" value="${phone.id}" /></td>
                    <td>${phone.id}</td>
                    <td><a href="#">${phone.name}</a></td>
                    <td><f:formatNumber value="${phone.price}" pattern="￥.00" type="CURRENCY"/> </td>
                    <td>${phone.brand}</td>
                    <td>${phone.firm}</td>
                    <td><input type="button" data-target="#myModal" data-toggle="modal" onclick="values(${phone.id})" class="btn btn-primary" value="修改信息"></td>
                </tr>
            </c:forEach>
        </table>
        <div>
            <input type="submit" value="删除" class="btn btn-danger" />
            <a href="/phone/add" class="btn btn-primary">添加新手机</a>
        </div>
    </form>

    <form action="/phone/update" method="post" class="form-horizontal">
        <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="Label">修改手机信息</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="id">ID</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="id" value="${requestScope.phone.id}" readonly="readonly" name="id"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="name">手机名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="name" value="${requestScope.phone.name}" name="name"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="price">价格</label>
                            <div class="col-sm-10">
                                <input type="number" step="0.001" class="form-control" id="price" value="${requestScope.phone.price}"  name="price"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="brand">品牌</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="brand" value="${requestScope.phone.brand}"  name="brand"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="firm">厂商</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="firm" value="${requestScope.phone.firm}" name="firm"/>
                            </div>
                        </div>
                        <div class="form-group"><input type="submit"  class="btn btn-primary" value="提交修改"  /></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="/assets/js/show.js"></script>
    <script>
        $(function () {
            $("#all").click(function (e) {
                var checkboxs = $(".id");
                checkboxs.prop("checked",!checkboxs.prop("checked"));
            });
        });
    </script>
</div>
</body>
</html>
