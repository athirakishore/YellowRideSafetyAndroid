<%-- 
    Document   : GenerateQRode
    Created on : Nov 6, 2018, 5:13:09 PM
    Author     : asus
--%>
<%@page import="database.QrGen"%>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Students QR</h1>
        <%
            String str= "select * from tbl_student";
            ResultSet r = obj.select(str);
            while(r.next()){
                String id= r.getString("stud_id");
                QrGen q = new QrGen();
                q.GenQr(id);
                
                
            }
            
        
        %>
        
        
    </body>
</html>
