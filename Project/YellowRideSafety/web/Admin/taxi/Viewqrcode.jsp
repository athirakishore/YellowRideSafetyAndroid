<%-- 
    Document   : Viewqrcode
    Created on : Nov 17, 2018, 2:01:59 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<br>
<br><br><br>
<br><br><br><br>


<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view qrcode details</title>
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
    <th>Student Id</th>
    <th>Pickup Time</th>
    <th>Pickup Date</th>
    <th>Pickup Address</th>
    <th>Drop down Time</th>
    <th>Drop down Address</th>
    
  </tr>
        

          <% String p="select * from tbl_qrcode ";
                ResultSet m=obj.select(p);
                int i=1;
                while(m.next())
                {
                    
               // String nam=r3.getString("bus_vehno");
                %>
                <tr> 
                    <td><%=i%></td>
                     <td><%=m.getString("stud_id")%></td>
                    <td><%=m.getString("pickup_time")%></td>
                    <td><%=m.getString("pickup_date")%></td>
                    <td><%=m.getString("pickup_address")%></td>
                    <td><%=m.getString("dropdown_time")%></td>
                    <td><%=m.getString("dropdown_address")%></td>
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