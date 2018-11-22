<%-- 
    Document   : AjaxPlace
    Created on : 12 Aug, 2018, 11:20:55 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"> </jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<option value="">select</option>
<% 
    String id=request.getParameter("id");
    String sel="select dis_id,dis_name from tbl_district where state_id="+id;
    ResultSet rs=obj.select(sel);
        while(rs.next())
        {
            %>
            <option value="<%=rs.getString("dis_id")%>"><%=rs.getString("dis_name")%></option>
            <%
        }
    %>