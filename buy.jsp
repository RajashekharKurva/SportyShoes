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

<div class="container">
    
  <h3 align="center">Proceed to buy</h3>
  <form action="buy">  
    <address align="center">
        <label for="">Full Address</label> <br>
        <input type="text" name="address" placeholder="colony landmark town/village"><br>
        <label for="">Pincode</label> <br>
        <input type="text" name="pincode" placeholder="509125"><br>
        <p>please verify address before buy</p><br>
    </address>

  <h3>Total Amount: Rs: <i>1999${totalAmount}</i></h3>

  <input type="checkbox" name="checkBox" >
  <p>please click checkbox for Payment</p>
   
   
    
        <button  align="center" type="submit" class="btn btn-primary">Buy</button>
       
    
   
</form>
      
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>