<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;1,500&family=Roboto:wght@300;400&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./style.css" />
  </head>
  <body>
  	<%@include file="navbar.jsp" %>
	  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>"/>
    <h1 class="text-center my-5">Registration form</h1>

    <div
      class="bg-light d-flex justify-content-around my-5 flex-sm-column flex-lg-row rounded-5 shadow mx-5 register"
    >
      <img
        class="z-1 girl "
        src="./assets//girl.svg"
        alt=""
        width="1000"
        height="800"
      />
      <form id="myForm" action="register" method="post" class="ms-5 mt-5">
        <label class="form-label" class="form-label">Name</label>
        <input
          class="form-control"
          type="text"
          name="name"
          id="name"
          placeholder="name"
          required
        />
        <label class="form-label">Email</label>
        <input
          class="form-control"
          type="email"
          name="email"
          id="email"
          placeholder="email"
          required
        />
        <label class="form-label">Age</label>
        <input
          class="form-control"
          type="number"
          name="age"
          id="age"
          placeholder="age"
          required
        />
        <label class="form-label">Branch</label>
        <input
          class="form-control"
          type="text"
          name="branch"
          id="branch"
          placeholder="branch"
          required
        />
        <label class="form-label">Phone</label>
        <input
          class="form-control"
          type="text"
          min="10"
          name="phone"
          id="phone"
          placeholder="phone"
          required
        />
        <label class="form-label">Address</label>
        <textarea
          class="form-control"
          name="addres"
          id="address"
          cols="30"
          rows="5"
          placeholder="address"
          required
        ></textarea>
        <div class="mt-5">
          <button type="submit" class="btn btn-primary me-5">Register</button>
          <button type="reset" class="btn btn-dark" onClick="clearForm()">Clear</button>
        </div>
      </form>
    </div>
    <%@include file="./footer.jsp" %>
    <script>
    
    const clearForm = () =>{
    	
    	document.getElementById("myForm").reset();
    	
    }
    
    
    	var status = document.getElementById("status");
    	if(status == "success"){
    		
    		swal({
        		title:"Congrats",
        		text:"register successfully",
        		icon:"success"
        	});
    	}
    </script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
