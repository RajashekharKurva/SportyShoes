<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
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

<div class="container">

	<form action="customersList">
		<button type="submit" class="btn btn-primary">GetList</button>
	</form>

	<div class=row>
		<h1 align="center"style="color: orangered;">List of Customers</h1>	
		<table class="table table-bordered table-hover table-striped" >
		  <thead class="table-dark" >
            <tr>
                <th>CustomerID</th>
                <th>CustomerName</th>
                <th>Email</th>
                <th>PhoneNumber</th>
                <th>Password</th>
            </tr>
		  </thead>
		  <c:forEach var="customer" items="${customers}">
			<tr>
			  <td>
				${customer.custometId}
			  </td>
			  <td>
				${customer.fullName}
			  </td>
			  <td>
				${customer.email}
			  </td>
			  <td>
				${customer.phoneNumber}
			  </td>
			  <td>
				${customer.password}
			  </td>

			</tr>
			
			</c:forEach>
			</table>
			</div>
			
	</div>

</div>

</body>
</html>