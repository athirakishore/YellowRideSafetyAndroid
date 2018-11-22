<%-- 
    Document   : Bus
    Created on : 31 Aug, 2018, 12:11:19 PM
    Author     : ASUS
--%>
<%@include file="header.jsp" %>
<br>
<br><br><br>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Page</title>
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
    background-color: #4CAF50;
    color: white;
}
</style>
    </head>
    <body background="ss.jpg">
        <% 
         String id="";
         String busid="";
         String vehno="";
         String insure="";
         String permit="";
         if(request.getParameter("submit")!=null)
    {
       
        String veh=request.getParameter("busno");
        String ins=request.getParameter("businsureno");
        String per=request.getParameter("buspermitno");
        
        String idd=request.getParameter("hid");
        if(!idd.equals(""))
        { 
            String upd= "update tbl_bus set bus_vehno='"+veh+"',bus_insure='"+ins+"',bus_permit='"+per+"' where bus_id='"+idd+"'";
            if(obj.insert(upd))
            {
                System.out.println("Updated Successfully");
                
            }
        }  
        else
        {
            
        String insert="insert into tbl_bus(bus_vehno,bus_insure,bus_permit)values('"+veh+"','"+ins+"','"+per+"')";
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
    } if(request.getParameter("delid")!=null)
        {
            String a=request.getParameter("delid");
            String del="delete from tbl_bus where bus_id='"+a+"'";
            
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
                  String sel="select bus_vehno,bus_insure,bus_permit from tbl_bus where bus_id="+id;
                  System.out.println(sel);
                  ResultSet r = obj.select(sel);
                  if(r.next())
                  {
                   
                      vehno=r.getString("bus_vehno");
                      insure=r.getString("bus_insure");
                      permit=r.getString("bus_permit");
                      
                      
                  }
              }
              
            
               
     
    
     %>
    <h2>Bus</h2>

<div id="main">
  <form>
      <div>
          <label for="busno">Bus Vehicle No</label>&nbsp;&nbsp;&nbsp;
    <input type="text" id="busno" name="busno" placeholder="busno.."  required="" value="<%=vehno%>" >
    <input type="hidden" name="hid" value="<%=id%>"
      </div>

          
      <div>
    <label for="businsure">Bus Insurance No</label>
    <input type="text" id="businsureno" name="businsureno" placeholder="bus insurance no.." required="" value="<%=insure%>" >
    </div>
      <div>
    <label for="buspermit">Bus Permit No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="buspermitno" name="buspermitno" placeholder="bus permit no.." required="" value="<%=permit%>" >
    </div>
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" name="submit" value="Add Bus">
         <table id="customers">
         <tr>
    <th>No</th>
    <th>Bus Vehicle No</th>
    <th>Bus Insurance No</th>
    <th>Bus Permit No</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
        

          <% String p="select * from tbl_bus ";
                ResultSet r3=obj.select(p);
                int i=1;
                while(r3.next())
                {
                    
                String nam=r3.getString("bus_vehno");
                %>
                <tr> 
                    <td><%=i%></td>
                    <td><%=nam%></td>
                    <td><%=r3.getString("bus_insure")%></td>
                    <td><%=r3.getString("bus_permit")%></td>
                    <td><a href ="Bus.jsp?delid=<%=r3.getString("bus_id")%>"><img src="../../Admin/taxi/Design/Icon/delete5.jfif" width="35" height="35"></a></td>
                    <td><a href ="Bus.jsp?edtid=<%=r3.getString("bus_id")%>"><img src="../../Admin/taxi/Design/Icon/edit3.jfif" width="35" height="35"></a></td>
                </tr>
                <% i++;
                
                }
                
        %>
         </table>
  </form>
</div>
</div>
  

</body>
   
</html>
<%@include file="footer.jsp" %>