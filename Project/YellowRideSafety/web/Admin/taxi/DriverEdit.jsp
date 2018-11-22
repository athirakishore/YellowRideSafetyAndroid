<%-- 
    Document   : DriverEdit
    Created on : 30 Aug, 2018, 3:20:52 PM
    Author     : ASUS
--%>
<%@include file="header.jsp" %>
<br><br>
<br><br>
<br><br>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>

<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Edit</title>
        <script src="jquery.js" type="text/javascript"></script>
        
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
    </head>
    
    <body>
          <div id="main">
     
        <form action="DriverUploadAction.jsp" method="post" enctype="multipart/form-data">
        <h2>Driver MoreData</h2>
        
       <div>       
            
       <table id="customers">
  <tr>
    <th>No</th>
    
    
    <th>Gender</th>
    <th>State</th>
    <th>District</th>
    <th>Place</th>
    <th>Address</th>
    <th>Pincode</th>
    <th>DoB</th>
    <th><a href="Driver.jsp">Previous</a></th>
  </tr>
        

          <% String p="select * from tbl_driver d inner join tbl_place p on d.place_id=p.place_id inner join tbl_district dis on p.dis_id=dis.dis_id inner join tbl_state s on dis.state_id=s.state_id";
                ResultSet r4=obj.select(p);
                int i=1;
                while(r4.next())
                {
                    
                String nam=r4.getString("place_name");
                %>
                <tr> 
                    <td><%=i%></td>
                    
                    
                    <td><%=r4.getString("dvr_gender")%></td>
                    <td><%=r4.getString("state_name")%></td>
                    <td><%=r4.getString("dis_name")%></td>
                    <td><%=nam%></td>
                    <td><%=r4.getString("dvr_hsname")%></td>
                    <td><%=r4.getString("dvr_pin")%></td>
                    <td><%=r4.getString("dvr_dob")%></td>
                   
                </tr>
                <% i++;
                
                }
                %>
        </table>
        
        </div>
      
        
        </form>
          </div>
    </body>
</html><br>
<br><br>
<%@include file="footer.jsp" %>

