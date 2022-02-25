<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="home.jsp">SportShoes</a>
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
            <a class="nav-link active" aria-current="page" href="/JSP/home.jsp" target="_blank" >Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/JSP/adminlogin.jsp" target="_blank" >AdminLogin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/JSP/login.jsp" target="_blank" >CustomerLogin</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="registration.jsp" >CustomerSignUp</a>
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

  <h1 align ="center" style="color: #20c497;">Customer Registration</h1>
<div class ="container">
  <form action="registration">
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label">Full Name</label>
      <input type="text" class="form-control" name="fullName" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Rajashekhar Kurva">
    </div>
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label">Email address</label>
      <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="abc@gmail.com">
    </div>
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label">Phone Number</label>
      <input type="text" class="form-control" name="phoneNumber" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="45524855">
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label">Password</label>
      <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="******">
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
      <input type="password" class="form-control" name="confirmPassword" id="exampleInputPassword1" placeholder="******">
    </div>
    <div class="mb-3 form-check">
      <input type="checkbox" class="form-check-input" id="exampleCheck1">
      <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">SignUp</button>
    
  </form>
  <p>If already registered please login</p>
  <a class="nav-link" href="/JSP/login.jsp" target="_blank" ><button type="submit" class="btn btn-primary">SignIn</button></a>

</div>
</body>

</html>