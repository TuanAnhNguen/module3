<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
  <title>Product Discount Calculator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }

    h2 {
      text-align: center;
    }

    form {
      text-align: center;
      margin: 0 auto;
      width: 300px;
      padding: 10px;
      justify-content: space-between;
    }

    input {
      margin: 10px;
      padding: 10px;
      align-items: center;
    }

    button {
      margin: 10px;
      padding: 10px;
      align-items: center;
      justify-content: center;
    }
  </style>
</head>

<body>
<h2>Product Discount Calculator</h2>
<form action="/display-discount" method="post">
  <div class="discount">
    <input type="text" name="desc" placeholder="Product Description"/>
    <input type="text" name="price" placeholder="List Price"/>
    <input type="text" name="percent" placeholder="Discount Percent"/>
    <br/>
    <button type="submit" id="submit">Calculate Discount</button>
  </div>
</form>
</body>
</html>
