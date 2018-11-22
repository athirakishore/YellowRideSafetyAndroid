<%-- 
    Document   : DriverAssign
    Created on : 15 Sep, 2018, 12:20:21 PM
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
        <title>Driver Assign Page</title>
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
        
        <%
            String busid="";
            String bus="";
            String driverr="";
            String id="";
            if(request.getParameter("submit")!=null){
         busid=request.getParameter("busregno");
         driverr=request.getParameter("driver");
         
         String hid=request.getParameter("hid");
         if(!hid.equals(""))
         {
             String update="update tbl_driverassign set bus_id='"+busid+"' and dvr_id='"+driverr+"' where driverassign_id='"+hid+"'";
             if(obj.insert(update))
             {
                 %>
                 <script>
                     alert("Updated");
                 </script>
                 <%
             }
         }
         else
         {
         String insert="insert into tbl_driverassign(bus_id,dvr_id)values('"+busid+"','"+driverr+"')";
        boolean b=obj.insert(insert);
        
        if(b)
        {
            System.out.println("Successfully inserted");
        }
        else
        {
            System.out.println("Failed to insert");
        }
         }
         }
         if(request.getParameter("delid")!=null)
        {
            String a=request.getParameter("delid");
            String del="delete from tbl_driverassign where driverassign_id='"+a+"'";
            
            if(obj.insert(del))
            {%>
            <script>
                alert("Deleted");
                </script>
               <%
            }
            
            else
            {
                System.out.println("Failed to delete");
            }
            
        }
        
              if(request.getParameter("edtid")!=null)
              {
                  id=request.getParameter("edtid");
                  String sel="select * from tbl_driverassign d inner join tbl_bus b on d.bus_id=b.bus_id inner join tbl_driver dvr on d.dvr_id=dvr.dvr_id  where driverassign_id="+id;
                  System.out.println(sel);
                  ResultSet r = obj.select(sel);
                  if(r.next())
                  {
                   
                      
                      busid=r.getString("bus_id");
                      driverr=r.getString("dvr_lname");
                  }
              }
              
         
             
            %>
        <div id="main">
            <form>
        <h2>Driver Assign</h2>
        <div>
        <label for="busno">Bus No</label>&nbsp;&nbsp;&nbsp;
        <input type="hidden" name="hid" value="<%=id%>">
        <Select name="busregno">
             
        <option selected="selected"value="">Select</option>
        <%
        String ss="select bus_id,bus_vehno from tbl_bus";
        ResultSet r4=obj.select(ss);
        while(r4.next())
        {
            %>
         <option <%if(bus.equals(r4.getString("bus_id"))){%> selected=""<%}%> value="<%=r4.getString("bus_id")%>"><%=r4.getString("bus_vehno")%></option>
         <%
        }
        %>
          </select>
        </div>
        
        <label for="driver">Driver</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <Select name="driver">
             
        <option selected="selected"value="">Select</option>
        <%
        String sss="select dvr_id,dvr_lname from tbl_driver";
        ResultSet r5=obj.select(sss);
        while(r5.next())
        {
            %>
         <option <%if(driverr.equals(r5.getString("dvr_id"))){%> selected=""<%}%> value="<%=r5.getString("dvr_id")%>"><%=r5.getString("dvr_lname")%></option>
         <%
        }
        %>
          </select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="submit" value="DRIVER ASSIGN ">
        
        
        
        
         <table id="customers">
         <tr>
    <th>No</th>
    <th>Bus No</th>
    <th>Driver</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
        

          <% String p="select * from tbl_driverassign d inner join tbl_bus b on d.bus_id=b.bus_id inner join tbl_driver dvr on d.dvr_id=dvr.dvr_id";
                ResultSet r44=obj.select(p);
                int i=1;
                while(r44.next())
                {
                    
               
                
                %>
                <tr> 
                    <td><%=i%></td>
                    
                    <td><%=r44.getString("bus_vehno")%></td>
                    <td><%=r44.getString("dvr_lname")%></td>
                    <td><a href ="DriverAssign.jsp?delid=<%=r44.getString("driverassign_id")%>"><img src="../../Admin/taxi/Design/Icon/delete5.jfif" width="35" height="35"></a></td>
                    <td><a href ="DriverAssign.jsp?edtid=<%=r44.getString("driverassign_id")%>"><img src="../../Admin/taxi/Design/Icon/edit3.jfif" width="35" height="35"></a></td>
                </tr>
                <% i++;
                
                }
                
        %>
         </table>
            </form>
        </div>
    </body>
</html>
<br>
<br><br>
<%@include file="footer.jsp" %>

