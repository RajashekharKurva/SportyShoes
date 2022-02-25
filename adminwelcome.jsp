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
                <input type="submit" value="LogOut">
            </form>
        </span>
      </div>
    </div>
  </nav>
  <br>

	
	<h4 align ="center" style ="color:#8946A6"> Welcome to administration of SportShoes   .............. !</h4>

  <div class="container">

    <span >
      <a href="passwordChange.jsp" target="">PasswordReset</a>
  </span>

  </div>

  <div class="container">
    <h2 align="center" >Add Product Details</h2>
    <form action="addProducts">
      <select class="form-select" aria-label="Default select example" name ="brandName">
        <option selected>select Brand</option>
        <option value="Addidas">Addidas</option>
        <option value="Nike">Nike</option>
        <option value="Puma">Puma</option>
      </select>
      <br>

      <select class="form-select" aria-label="Default select example" name ="model">
        <option selected>model</option>
        <option value="Runnig">Runnig</option>
        <option value="Casual">Casual</option>
        <option value="FormalShoes">FormalShoes</option>     
      </select>

      <br>
      <select class="form-select" aria-label="Default select example" name ="size">
        <option selected value="0">size</option>
        <option value="8">08</option>
        <option value="9">09</option>
        <option value="10">10</option>
      </select>

      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Quantity</label>
        <input type="text" class="form-control"  name="quantity"  placeholder="08">
      </div>

      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Price</label>
        <input type="text" class="form-control"  name="price"  placeholder="Rs.1499">
      </div>

      <button type="submit" class="btn btn-primary">Add</button>
    </form>
    
  </div>


</body>
</html>
