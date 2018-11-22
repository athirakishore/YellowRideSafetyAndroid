<%-- 
    Document   : RouteAssign
    Created on : 15 Sep, 2018, 12:07:26 PM
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
        <title>Route Assign Page</title>
        <script src="jquery.js" type="text/javascript"></script>
        <script> function displayplace(id)
            {
               // alert(id);
                $.ajax(
                        {
                            url: "Ajaxdriver.jsp?id="+id,
                    success: function(result){
                        $("#place").html(result);
                    }
                        });
            }
            
        </script>
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
         String mainrouteid="";
         String place="";
         String main="";
         String busid="";
         if(request.getParameter("submit")!=null){
         mainrouteid=request.getParameter("placename");
         busid=request.getParameter("busregno");
         
         String hid=request.getParameter("hid");
         if(!hid.equals(""))
         {
             String update="update tbl_routeassign set mainroute_id='"+mainrouteid+"' and bus_id='"+mainrouteid+"' where routeassign_id='"+hid+"'";
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
         String insert="insert into tbl_routeassign(mainroute_id,bus_id)values('"+mainrouteid+"','"+busid+"')";
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
            String del="delete from tbl_routeassign where routeassign_id='"+a+"'";
            
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
         String id="";
         String mainroute="";
         String bus="";
              if(request.getParameter("edtid")!=null)
              {
                  id=request.getParameter("edtid");
                  String sel="select * from tbl_routeassign r inner join tbl_bus b on r.bus_id=b.bus_id inner join tbl_mainroute m on r.mainroute_id=m.mainroute_id  where routeassign_id="+id;
                  System.out.println(sel);
                  ResultSet r = obj.select(sel);
                  if(r.next())
                  {
                   
                      mainroute=r.getString("mainroute_id");
                      bus=r.getString("bus_id");
                  }
              }
              
         
         %>
        <div id="main">
            <form>
        <h2>Route Assign</h2>
       
          <div>
          <label for="PlaceName">Route</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <Select name="placename" id="place">
        <option selected="selected"value="">Select</option>
        <%
        String sss="select * from tbl_mainroute m inner join tbl_place p on m.place_id=p.place_id inner join tbl_district d on d.dis_id=p.dis_id inner join tbl_state s on s.state_id= d.state_id";
        ResultSet r3=obj.select(sss);
        while(r3.next())
        {
            %>
            <option  <%if(mainroute.equals(r3.getString("mainroute_id"))){%> selected=""<%}%> value="<%=r3.getString("mainroute_id")%>"><%=r3.getString("state_name")%>-<%=r3.getString("dis_name")%>-<%=r3.getString("place_name")%></option>
         <%
        }
        %>
          </select>
          </div>
       
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
          <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input type="submit" name="submit" value="ASSIGN ROUTE">
  
          </div>
        
         <table id="customers">
         <tr>
    <th>No</th>
    <th>MainRoute</th>
    <th>BusVehicleNo</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
        

          <% String p="select * from tbl_routeassign r inner join tbl_bus b on r.bus_id=b.bus_id inner join tbl_mainroute m on r.mainroute_id=m.mainroute_id inner join tbl_place p on m.place_id=p.place_id inner join tbl_district d on d.dis_id=p.dis_id inner join tbl_state s on s.state_id= d.state_id";
                ResultSet r44=obj.select(p);
                int i=1;
                while(r44.next())
                {
                    
               
                
                %>
                <tr> 
                    <td><%=i%></td>
                    <td><%=r44.getString("state_name")%>-<%=r44.getString("dis_name")%>-<%=r44.getString("place_name")%></td>
                    <td><%=r44.getString("bus_vehno")%></td>
                    <td><a href ="RouteAssign.jsp?delid=<%=r44.getString("routeassign_id")%>"><img src="../../Admin/taxi/Design/Icon/delete5.jfif" width="35" height="35"></a></td>
                    <td><a href ="RouteAssign.jsp?edtid=<%=r44.getString("routeassign_id")%>"><img src="../../Admin/taxi/Design/Icon/edit3.jfif" width="35" height="35"></a></td>
                </tr>
                <% i++;
                
                }
                
        %>
         </table>
        </div>
            </form>
    </body>
</html>
<br>
<br><br>
<%@include file="footer.jsp" %>

