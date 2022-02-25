<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
                <button type="submit" class="btn btn-primary">AdminLogout</button>
            </form>
        </span>
      </div>
    </div>
  </nav>
  
  <h4 align="center" >Reset Password</h4>
<div class="container">
  <form action="passwordReset">
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Previous Password</label>
        <input type="password" class="form-control"  name="previousPassword" id="exampleInputPassword1" placeholder="******">
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">New Password</label>
        <input type="password" class="form-control"  name="newPassword" id="exampleInputPassword1" placeholder="******">
      </div>
      <button type="submit" class="btn btn-primary">PasswordChange</button>
</form>

</div>



</body>
</html>