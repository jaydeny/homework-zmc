<%--
  Created by IntelliJ IDEA.
  User: 小恙
  Date: 2018/8/24
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>判断checkbox</title>
</head>
<body>
<script src="/js/jquery-1.11.3.min.js"></script>
<div id="contain">
    <input type="checkbox" value="苹果"/>苹果
    <input type="checkbox" value="桃子"/>桃子
    <input type="checkbox" value="梨"/>梨
    <input type="button" value="判断是否被选中" />
</div>

<script>
    $(function () {
        $("input[type=button]").click(function (e) {
            var result = [];
            $("input[type=checkbox]:checked").each(function (index,ele){
                result.push(ele.value);
            });
            console.log(result.length === 0?"没有选中":result.join("/"));
        });
    })

</script>
</body>
</html>
