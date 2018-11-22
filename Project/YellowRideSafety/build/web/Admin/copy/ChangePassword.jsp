<%-- 
    Document   : ChangePassword
    Created on : Aug 29, 2018, 9:37:37 PM
    Author     : sree
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
         <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
    </head>
   <style>
input[type=text], select {
    width: 50%;
    padding: 12px 25px;
    margin: 10px 20px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 10px 50px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
input[type=reset] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 10px 50px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=reset]:hover {
    background-color: #45a049;
}
#main {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    margin-left: 350px;
    margin-top: 100px;
    width: 30%;
}
</style>
<body>
     <%
        if(request.getParameter("submit")!=null)
        {
          String pswd=request.getParameter("txtcpswd"); 
          String retype=request.getParameter("txtnpass");   
          String cnfirm=request.getParameter("txtcfmpswd"); 
       
          if(retype.equals(cnfirm))
          {
        String slt="select admin_username from tbl_admin where admin_pswd='"+pswd+"'and admin_id="+session.getAttribute("UserID");
        ResultSet rs = obj.select(slt);
            if (rs.next())
           {
              String update="update tbl_admin set admin_pswd='"+cnfirm+"' where admin_id="+session.getAttribute("UserID");
              
              if (obj.insert(update))
                {
                  %>
            <script>
                alert("Password Updated");
                </script>
                <%  
                }
 
            }
            else
          {
            %>
            <script>
                alert("Password Wrong");
                </script>
                <%  
          }   
          }
           else
          {
            %>
            <script>
                alert("Password Missmatch");
                </script>
                <%  
              
          }
          }
        
        %>
    
    <form> 
            <div>
      <table id="customers">
  <tr>
    <th><a href="HomePage.jsp">Home</a></th>
    <th><a href="ChangePassword.jsp">Change Password</a></th>
    <th><a href="State.jsp">State</a></th>
    <th><a href="District.jsp">District</a></th>
    <th><a href="Place.jsp">Place</a></th>
     <th><a href="IncomeType.jsp">Income Type</a></th>
      <th><a href="ExpenseType.jsp">Expense Type</a></th>
  </tr>
    </table>
            </div>   
 <div id="main">
  
      <div>
    <label for="state">Current Password</label>&nbsp&nbsp&nbsp&nbsp&nbsp;
    <input type="password" name="txtcpswd" size="30" required="">  
     </div>    
   <div>
    <label for="state">New Password</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <input type="password" name="txtnpass" size="30"> 
     </div>  
<div>
    <label for="state">Confirm Password</label>&nbsp&nbsp&nbsp&nbsp;
    <input type="password" name="txtcfmpswd" size="30" >
     </div>  
     &nbsp<input type="submit" name="submit" value="submit">
     &nbsp<input type="reset" name="cancel" value="CANCEL">

  </table>
          
          
      </form> 
     
          
</body>
</html>
