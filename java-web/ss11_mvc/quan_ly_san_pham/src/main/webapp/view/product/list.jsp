<%--
  Created by IntelliJ IDEA.
  User: Nitro V
  Date: 3/21/2025
  Time: 2:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<c:import url="/view/layout/header.jsp"/>
<div class="container">
    <div class="input-group">
        <form action="/products" method="get">
            <input type="hidden" name="action" value="searchProduct">
            <input type="search" name="name" class="form-control rounded" placeholder="Tìm kiếm" aria-label="Search"
                   aria-describedby="search-addon">
            <button type="submit" class="btn btn-outline-primary" data-mdb-ripple-init>Tìm kiếm</button>
        </form>
    </div>
    <table class="table table-striped">
        <tr>
            <th>STT</th>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá sản phẩm</th>
            <th>Chi tiết sản phẩm</th>
            <th>Sửa thông tin sản phẩm</th>
            <th>Xoá sản phẩm</th>
        </tr>
        <c:forEach items="${products}" var="product" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${product.getId()}</td>
                <td>${product.getName()}</td>
                <td>${product.getPrice()}</td>
                <td>
                    <button onclick="productInfo(`${product.getId()}`, `${product.getName()}`, `${product.getPrice()}`,
                            `${product.getDescription()}`, `${product.getManufacturer()}`)"
                            type="button" class="btn btn-info btn-sm" data-bs-toggle="modal"
                            data-bs-target="#infoModal">
                        Chi tiết
                    </button>
                </td>
                <td>
                    <button onclick="updateInfo(`${product.getId()}`,`${product.getName()}`, `${product.getPrice()}`,
                            `${product.getDescription()}`, `${product.getManufacturer()}`)"
                            type="button"
                            class="btn btn-warning btn-sm" data-bs-toggle="modal"
                            data-bs-target="#updateModal">
                        Chỉnh sửa
                    </button>
                </td>
                <td>
                    <button onclick="deleteInfo(`${product.getId()}`,`${product.getName()}`)" type="button"
                            class="btn btn-danger btn-sm" data-bs-toggle="modal"
                            data-bs-target="#deleteModal">
                        Xoá
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="infoModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="infoModalLabel">Thông tin sản phẩm</h5>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <tr>
                            <td>Id</td>
                            <td id="idProductInfo"></td>
                        </tr>
                        <tr>
                            <td>Tên sản phẩm</td>
                            <td id="nameProductInfo"></td>
                        </tr>
                        <tr>
                            <td>Giá sản phẩm</td>
                            <td id="priceProductInfo"></td>
                        </tr>
                        <tr>
                            <td>Mô tả sản phẩm</td>
                            <td id="descriptionProductInfo"></td>
                        </tr>
                        <tr>
                            <td>Nhà sản xuất</td>
                            <td id="producerProductInfo"></td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <form>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Cập nhật thông tin sản phẩm</h5>
                </div>
                <form>
                    <div class="modal-body">
                        <span>Cập nhật thông tin sản phẩm có ID <span id="updateId"></span>?</span><br>
                        <input type="hidden" name="action" value="updateProduct">
                        <input type="hidden" name="id" id="updateIdForm">
                        <input type="text" name="name" id="updateName"><br>
                        <input type="number" name="price" id="updatePrice"><br>
                        <input type="text" name="description" id="updateDescription"><br>
                        <input type="text" name="producer" id="updateManufacturer"><br>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                        <button type="submit" class="btn btn-primary">Xác nhận</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Xoá sản phẩm</h5>
                </div>
                <div class="modal-body">
                    Bạn muốn xoá sản phẩm <span id="deleteName"></span> có ID <span id="deleteId"></span>?
                </div>
                <div class="modal-footer">
                    <form>
                        <input type="hidden" name="action" value="deleteProduct">
                        <input type="hidden" name="id" id="deleteIdForm">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                        <button type="submit" class="btn btn-primary">Xác nhận</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function productInfo(id, name, price, description, manufacturer) {
        document.getElementById("idProductInfo").innerText = id;
        document.getElementById("nameProductInfo").innerText = name;
        document.getElementById("priceProductInfo").innerText = price;
        document.getElementById("descriptionProductInfo").innerText = description;
        document.getElementById("producerProductInfo").innerText = manufacturer;
    }

    function updateInfo(id, name, price, description, manufacturer) {
        document.getElementById("updateId").innerText = id;
        document.getElementById("updateName").value = name;
        document.getElementById("updatePrice").value = price;
        document.getElementById("updateDescription").value = description;
        document.getElementById("updateProducer").value = manufacturer;
        document.getElementById("updateIdForm").value = id;
    }

    function deleteInfo(id, name) {
        document.getElementById("deleteId").innerText = id;
        document.getElementById("deleteName").innerText = name;
        document.getElementById('deleteIdForm').value = id;
    }
</script>
</body>
</html>
