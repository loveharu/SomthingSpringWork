<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이 페이지</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
  }

  .header {
    background-color: #333333;
    color: #ffffff;
    padding: 40px 40px;
    text-align: right;
  }

  .container {
    width: 90%;
    max-width: 800px;
    background-color: #ffffff;
    margin: 20px auto;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  .container h1 {
    color: #333333;
    margin-bottom: 20px;
  }

  .container form {
    margin-bottom: 10px;
  }

  .container form input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
  }

  .container form input[type="submit"]:hover {
    background-color: #45a049;
  }

  @media only screen and (max-width: 600px) {
    .container {
      width: 95%;
    }
  }
</style>
</head>
<body>
<div class="header">
  <div style="float: right;">
    <% String id = (String) session.getAttribute("id"); %>
    <span style="color: #ffffff; font-weight: bold;">User: <%= id %></span>
  </div>
</div>

<div class="container">
  <h1>마이 페이지</h1>
  
  <form action="/jdbc04/user/update.user" method="get">
    <input type="submit" value="회원정보수정">
  </form>
  
  <form action="/jdbc04/shop/order.shop" method="get">
    <input type="submit" value="주문 내역 확인하기">
  </form>
</div>

</body>
</html>
