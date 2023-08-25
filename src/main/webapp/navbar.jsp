
  <nav class="position-sticky navbar navbar-expand-lg mx-4">
    <div class="container-fluid gap-2">
      <a class="navbar-brand" href="#">Smile</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="/Student_Portal/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/Student_Portal/register.jsp">Student register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/Student_Portal/studentsList.jsp">Student list</a>
          </li>
        </ul>
      <div>
      <%
      String status = (String)session.getAttribute("status");
      if(status == "true"){
    	  %>
    	 <form method="post" action="logout">
      	<button class="btn  btn-primary login" onCLick="">Logout</button>
    	 </form>
     
    	  <%
    	  
      }
    	  else{
    		  %>
      <a href="/Student_Portal/login.jsp">
      	<button class="btn  btn-primary login">Admin Login</button>
      </a>
    		  <%
    	  }
      %>
      </div>
      </div>
    </div>
  </nav>
  <script>
  	
  </script>