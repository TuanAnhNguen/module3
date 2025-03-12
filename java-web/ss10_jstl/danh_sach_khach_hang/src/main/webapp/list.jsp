<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background-color:#f8f9fa;
            padding:20px;
        }
        #customer {
            width: 80%;
            margin: 0 auto;
            border: 5px solid dodgerblue;
            border-radius: 10px;
            background-color: white;
            padding: 20px;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            text-align: center;
            background-color: #f1f1f1;
            font-size: 18px;
            font-weight: bold;
        }

        td {
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        td img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 5px;
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div id="customer">
    <h1>Danh sách khách hàng</h1>
    <table>
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        <c:forEach items="${customers}" var="customer" varStatus="status">
            <tr>
                <td>${customer.getName()}</td>
                <td>${customer.getBirthday()}</td>
                <td>${customer.getAddress()}</td>
                <td>
                    <img src="${customer.getPicture()}">
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>