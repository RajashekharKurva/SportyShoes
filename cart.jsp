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


  <h3 align="center">Proceed to buy</h3>
  
  <form action="cartList">
    <button type="submit" class="btn btn-primary">CartList</button>
  </form>

  
    <c:if test ="${!empty(cartProducts)}" >
  <div class="container">
  <h4 align ="center" style="color: darkgoldenrod;">Collection of <i style="color: orangered;">${brand}</i>  </h4>
  <table class="table table-bordered table-hover table-striped" >
    <thead class="table-dark" >
      <tr>
         
          <th>Brand_Name</th>
          <th>Brand_Mode</th>
          <th>Size</th>
          <th>Quantity</th>
          <th>Price/Qty</th>
      </tr>
  </thead>
  
  
  <c:forEach var="product" items="${cartProducts}">
  <tr>

    <td>
      ${product.brandName}
    </td>
    <td >
      ${product.brandModel}
    </td>
    <td >
      ${product.size}
    </td>
    <td>
    ${product.quantity}
    </td>
    <td >
      ${product.price}
    </td>

  </tr>
  
  </c:forEach>
  </table>
  </div>
    </c:if>


   <span align ="center">
  
        <a href="buy.jsp"><button type="submit" class="btn btn-primary">Buy</button></a>
   
   </span>

      


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>