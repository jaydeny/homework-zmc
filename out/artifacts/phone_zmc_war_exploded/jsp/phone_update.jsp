<%--
  Created by IntelliJ IDEA.
  User: 小恙
  Date: 2018/8/23
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html>
<head>
    <title>修改手机信息</title>
</head>
<body>
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
                        <div class="form-group"><input type="submit" value="提交修改"  /></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
<script>
    $("#myModal").on("show.bs.modal", function (e) {
        var id = $(e.relatedTarget).data("id");
        $.ajax({
            method: "post",
            url: "<c:url value="/phone/index" />",
            data: {id: id}
        }).done(function (data) {
            $("#id").val("001");
            $("#name").val(data.name);
            $("#price").val(data.price);
            $("#brand").val(data.brand);
            $("#firm").val(data.firm);
        }).fail(function (xhr, textStatus, errorThrown) {
            console.error(errorThrown);
        }).always(function () {
            console.log("不管成功还是失败，这段代码都会被执行。")
        });
    });
</script>
</body>
</html>
