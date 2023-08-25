<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
	<link rel="stylesheet" href="style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
  </head>
  <body>

  
  
  <%@include file="navbar.jsp" %>
    <div
      class="vw-100 vh-100 bg-body d-flex justify-content-center align-items-center"
    >
      <div
      id="loginForm"
        class="w-50 h-50 d-flex flex-column justify-content-center align-items-center border shadow border-1 p-5"
      >
        <h1   class="mb-5">Login Here.</h1>
        <form  class="gap-2" method="post" action="loginAdmin">
          <label class="form-label mb-1">Email</label>
          <input
            class="form-control mb-3 mt-2"
            type="text"
            name="email"
            id="email"
            placeholder="Email"
          />
          <label class="form-label">Password</label>
          <input
            class="form-control mb-3 mt-2"
            type="password"
            name="password"
            id="password"
            placeholder="Password"
          />
          <button class="btn btn-primary w-100 mt-3">Login</button>
        </form>
      </div>
    </div>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
  <script>
  	gsap.to("#loginForm", {duration:2, x:100});
  
  </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
