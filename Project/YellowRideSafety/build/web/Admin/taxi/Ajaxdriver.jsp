<%-- 
    Document   : Ajaxdriver
    Created on : 30 Aug, 2018, 12:58:02 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<option value="">select</option>
<% 
    String id=request.getParameter("id");
    String sel="select place_id,place_name from tbl_place where dis_id="+id;
    ResultSet rs=obj.select(sel);
        while(rs.next())
        {
            %>
            <option value="<%=rs.getString("place_id")%>"><%=rs.getString("place_name")%></option>
            <%
        }
    %>
