<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
  <%
if(session.getAttribute("userName") == null)
{
	response.sendRedirect("adminlogin.jsp");
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
            <a class="nav-link active" aria-current="page" href="adminwelcome.jsp" " >AdminHome</a>
            </li>
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="customerList.jsp" target="_blank" >CustomerList</a>
            </li>
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="bookingOrders.jsp" target="_blank" >BookingOrders</a>
            </li>
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="search.jsp" target="_blank" >SearchProducts</a>
            </li>
        </ul>
        <span class="navbar-text">
            <form action="AdminLogout">
                <input type="submit" value="LogOut">
            </form>
        </span>
      </div>
    </div>
  </nav>
  <br>
    <br>
      <br>
        <br>
	
<div class="container">
  <form action="brand">

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


<c:forEach var="product" items="${products}">
<tr>
  <td>
    ${product.productId}
  </td>
  <td>
    ${product.brandName}
  </td>
  <td>
    ${product.brandModel}
  </td>
  <td>
    ${product.size}
  </td>
  <td>
    ${product.quantity}
  </td>
  <td>
    ${product.price}
  </td>
</tr>

</c:forEach>
</table>
</div>
  </c:if>

</body>
</html>
