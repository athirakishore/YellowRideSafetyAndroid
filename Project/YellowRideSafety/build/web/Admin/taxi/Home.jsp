<%-- 
    Document   : Home
    Created on : 4 Aug, 2018, 12:58:29 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
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
<body>

<table id="customers">
  <tr>
    <th><a href ="State.jsp">State</a></th>
    <th><a href ="District.jsp">District</a></th>
    <th><a href ="Place.jsp">Place</a></th>
    <th> <a href ="Class.jsp">Class</a></th>
    <th><a href ="Division.jsp">Division</a></th>
  </tr>
</table></body>
</html>
