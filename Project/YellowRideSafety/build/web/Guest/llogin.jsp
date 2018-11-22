<%-- 
    Document   : Login
    Created on : 4 Aug, 2018, 11:44:46 AM
    Author     : ASUS
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<html>
    <% if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("username");
        String pass=request.getParameter("password");
        
       
        String select= "select admin_id from tbl_admin where admin_username='"+name+"' and admin_password='"+pass+"'";
                ResultSet rs= obj.select(select);
       
        if(rs.next())
            
        {
            session.setAttribute("UserID", rs.getString("admin_id"));
            response.sendRedirect("../Admin/taxi/template.jsp");
            
           
        }
        else
        {
            System.out.println("Failed to insert");
        }
    }
      %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
    </head>
    
<style>
input[type=text],input[type=password],select {
    width: 50%;
    padding: 12px 25px;
    margin: 8px 15px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}


input[type=submit] {
    width: 50%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 50px;
    
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

#main {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    margin-left:  350px;
    width: 40%;
}
</style>
<body background="img.jpg">

<h2>Login</h2>

<div id="main">
  <form >
      <div>
    <label for="UserName">UserName</label>
    <input type="text" id="username" name="username" placeholder="Your username..">
      </div>
      <div>
    <label for="Password">Password</label>
    &nbsp;&nbsp;<input type="password" id="password" name="password" placeholder="Your password..">
      </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" name="submit" value="Login">
        
  </form>
</div>

</body>
</html>

 
