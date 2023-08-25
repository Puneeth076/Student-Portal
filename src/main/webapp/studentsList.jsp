<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.conn.Dbconfig"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Student's list</title>
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
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
  
  <%@include file="navbar.jsp" %>
    <h1 class="text-center my-5 z-5">Student's list</h1>
    <div class="d-flex justify-content-between">
    <a href="/Student_Portal/register.jsp">
    
      <button class="btn btn-primary ms-5">Add new</button>
    </a>
    
    
    
      <input class="border-2 rounded px-2 me-5" type="text" placeholder="search through name"/>
    
    
    </div>
    <div
      class="bg-light mt-2 rounded shadow mx-5"
    >
      <table class="table table-striped" >
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">Branch</th>
            <%
          	String status3 = (String) session.getAttribute("status");
          	if(status3 == "true"){
          					       					
          					%>
            <th scope="col">Actions</th>   
          				<% 
          				}
          				else{
          					
          				}
          				
          				
          				%>
          </tr>
        </thead>
        <tbody>
          <%
          	try{
          		
          		Connection con = Dbconfig.getConnection();
          		
          		Statement st = con.createStatement();
          		PreparedStatement pst = con.prepareStatement("select * from students");
          		
          		ResultSet rs = pst.executeQuery();
          		int i=1;
          		while(rs.next()){
          			%>
          			<tr >
          				<th scope="row"><%= i++ %></th>
          				<td><%= rs.getString("name") %></td>
          				<td><%= rs.getString("email") %></td>
          				<td><%= rs.getString("phone") %></td>
          				<td><%= rs.getString("branch") %></td>
          				
          				<td class="gap-2">
          				
          				<%
          				String status1 = (String) session.getAttribute("status");
          				
          				
          				if(status1 == "true"){
          					       					
          					%>
          				<a href="/Student_Portal/view.jsp?id=<%= rs.getInt("id") %>" >
          				<img src="./assets/view.svg"/>
          				</a>
                  		<a href="/Student_Portal/delete?id=<%= rs.getInt("id") %>" >
          				<img src="./assets/delete.svg"/>
                  		</a>
                  		<a href="/Student_Portal/Qrcode?id=<%= rs.getInt("id") %>">
          				<img class="ms-4" src="./assets/qr-code.png" width="20" height="20"/>
                  		
                  		</a>
          				<% 
          				}
          				else{
          					
          				}
          				
          				
          				%>
          					   				
            			</td>
          			</tr>
          			
          			<%
          		}
          		
          	}catch(Exception e){
          		e.printStackTrace();
          	}
          %>
        </tbody>
      </table>
    </div>
    <%@include file="./footer.jsp" %>
    <script type="text/javascript">
    
    
    
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
