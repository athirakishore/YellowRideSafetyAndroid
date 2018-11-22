<%-- 
    Document   : Ajaxdivision
    Created on : 15 Sep, 2018, 7:35:53 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<option value="">select</option>
<% 
    String id=request.getParameter("id");
    String sel="select div_id,div_name from tbl_division where class_id="+id;
    ResultSet rs=obj.select(sel);
        while(rs.next())
        {
            %>
            <option value="<%=rs.getString("div_id")%>"><%=rs.getString("div_name")%></option>
            <%
        }
    %>
