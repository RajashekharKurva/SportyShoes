<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>SportShoes</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
    <%
    if(session.getAttribute("email") == null)
    {
        response.sendRedirect("login.jsp");
    }
    
    %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">SportShoes</a>
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarText"
        aria-controls="navbarText"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="home.jsp" >Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp" target="_blank" >CustomerLogin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="registration.jsp" target="_blank" >CustomerSignUp</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cart.jsp" target="_blank" >cart</a>
          </li>
        </ul>
        <span class="navbar-text">
            <form action="LogOut">
                <input type="submit" value="LogOut">
            </form>
        </span>
      </div>
    </div>
  </nav>


  <h3 align="center" style="color:blueviolet">Welcome to SportyShoes</h3>
  <h5 align="center" style="color:brown"><i>Buy Multiple Brand Shoes in One Place</i></h5>

  <div class="container">
    <form action="search">
  
      <h4 align="center">Search By Brand</h4>
      <select class="form-select" aria-label="Default select example" name ="brandName">
        
        <option value="Puma">Puma</option>
        <option value="Addidas">Addidas</option>
        <option value="Nike">Nike</option>
      </select>
      <br>
      <button type="submit" class="btn btn-primary">Search</button>
    </form>
    <br>
  </div>
  
    <c:if test ="${!empty(products)}" >
  <div class="container">
  <h4 align ="center" style="color: darkgoldenrod;">Collection of <i style="color: orangered;">${brand}</i>  </h4>
  <table class="table table-bordered table-hover table-striped" >
    <thead class="table-dark" >
      <tr>
          <th>Product_Id</th>
          <th>Brand_Name</th>
          <th>Brand_Mode</th>
          <th>Size</th>
          <th>Quantity</th>
          <th>Price/Qty</th>
      </tr>
  </thead>
  
  <form action="cart"
  <c:forEach var="product" items="${products}">
  <tr>
    <td >
      <input type="hidden"  name="productID" value="${product.productId}">
      ${product.productId}
    </td >
    <td  >
      <input type="hidden" name="brandName" value="${product.brandName}">
      ${product.brandName}
    </td>
    <td >
      <input type="hidden" name="brandModel" value="${product.brandModel}">
      ${product.brandModel}
    </td>
    <td>
      <input type="hidden"  name="size" value="${product.size}">
      ${product.size}
    </td>
    <td>
      <select name="quantity">
        <option value="1">01</option>
        <option value="2">02</option>
        <option value="3">03</option>
        <option value="4">04</option>
      </select>
    </td>
    <td >
      <input type="hidden"name="price" value="${product.price}">
      ${product.price}
    </td>
    <td>
      >
        <button type="submit" class="btn btn-primary">Cart</button>
      </form>
    </td>
  </tr>
  
  </c:forEach>
  </table>
  </div>
    </c:if>

    <a href="cart.jsp" target="_blank" ><button class="btn btn-primary">BuyNow</button></a>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>