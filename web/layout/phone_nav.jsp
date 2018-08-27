<%--
  Created by IntelliJ IDEA.
  User: 小恙
  Date: 2018/8/26
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/phone/q" method="get">
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">

        <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">南方手机店</a>
        <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"
               name="condition">
        <ul class="navbar-nav px-3">
            <li class="nav-item text-nowrap">
                <input class="btn btn-primary" type="submit" value="搜索一下"/>
            </li>
        </ul>
    </nav>
</form>