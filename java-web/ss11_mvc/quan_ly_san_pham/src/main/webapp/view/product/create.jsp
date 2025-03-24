<%--
  Created by IntelliJ IDEA.
  User: Nitro V
  Date: 3/21/2025
  Time: 2:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Form nhập sản phẩm</title>
</head>
<body>
<c:import url="/view/layout/header.jsp"></c:import>
<h1>Nhập thông tin sản phẩm</h1>
<form action="/products" method="get">
    <input type="hidden" name="action" value="createProduct">
    <input type=number placeholder="ID sản phẩm" name="id"><br>
    <input type=text placeholder="Tên sản phẩm" name="name"><br>
    <input type=number placeholder="Giá sản phẩm" name="price"><br>
    <input type=text placeholder="Mô tả của sản phẩm" name="description"><br>
    <input type=text placeholder="Nhà sản xuất" name="manufacturer"><br>
    <button>Tạo</button>
</form>
</body>
</html>