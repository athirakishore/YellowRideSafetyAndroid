<%-- 
    Document   : ViewParent
    Created on : Nov 12, 2018, 3:07:43 PM
    Author     : asus
--%>

<%@include file="header.jsp" %>
<br>
<br><br><br>
<br><br><br><br><br><br><br><br><br>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view parent</title>
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
    width: 30%;
    background-color: blueviolet;
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
    background-color:transparent;
    padding: 20px;
    margin-left:  350px;
    width: 40%;
}
label{
    color: brown;
}
</style>

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
    background-color: peru;
    color: white;
}
</style>
    </head>
    <body>
        <form>
            <table id="customers">
         <tr>
    <th>No</th>
    <th>Parent Name</th>
    <th>Child Admno</th>
    <th>Address</th>
    <th>Age</th>
    <th>Gender</th>
    <th>Phno</th>
    <th>Email</th>
    
  </tr>
        

          <% String p="select * from tbl_parent ";
                ResultSet r3=obj.select(p);
                int i=1;
                while(r3.next())
                {
                    
               // String nam=r3.getString("bus_vehno");
                %>
                <tr> 
                    <td><%=i%></td>
                     <td><%=r3.getString("prnt_name")%></td>
                    <td><%=r3.getString("prnt_admno")%></td>
                     <td><%=r3.getString("prnt_address")%></td>
                     <td><%=r3.getString("prnt_age")%></td>
                      <td><%=r3.getString("prnt_gender")%></td>
                       <td><%=r3.getString("prnt_phno")%></td>
                        <td><%=r3.getString("prnt_email")%></td>
                </tr>    
                <% i++;
                
                }
                
        %>
         </table>
  </form>

            
    </body>
</html>
<br><br><br><br><br><br><br><br><br>

<%@include file="footer.jsp" %>