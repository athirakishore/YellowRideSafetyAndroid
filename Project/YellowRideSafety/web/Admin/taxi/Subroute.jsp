<%-- 
    Document   : Mainroute
    Created on : 31 Aug, 2018, 11:51:18 AM
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
        <title>Subroute Route</title>
        <script src="jquery.js" type="text/javascript"></script>
        <script>
            function displaydistrict(id)
            {
                $.ajax(
                        {
                            url: "AjaxPlace.jsp?id="+id,
                    success: function(result){
                        $("#distid").html(result);
                    }
                        });
            } function displayplace(id)
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
        <%
            
            
                String id="";
        String stateid="";
        String placeid="";
        String districtid="";
          if(request.getParameter("submit")!=null)
    {
        String ins="insert into tbl_subroute(place_id,mainroute_id) values('"+request.getParameter("placename")+"','"+session.getAttribute("mainroute")+"')";
       
        if(obj.insert(ins))
        {
            %>
            <script>
                alert("Inserted");
            </script>
            <%
        }
    }
          if(request.getParameter("delid")!=null)
        {
            String a=request.getParameter("delid");
            String del="delete from tbl_subroute where subroute_id='"+a+"'";
            
            if(obj.insert(del))
            {%>
            <script>
                alert("Deleted");
                </script>
               <%
            } 
        }
          
          String pl="";
          String dis="";
          String st="";
          
            String sel="select mr.place_id,p.dis_id,d.state_id from tbl_mainroute mr inner join tbl_place p on mr.place_id=p.place_id inner join tbl_district d on p.dis_id =d.dis_id"; 
            ResultSet rsel=obj.select(sel);
            if(rsel.next())
            {
                pl=rsel.getString("place_id");
                dis=rsel.getString("dis_id");
                st=rsel.getString("state_id");
            }
            
               %>
    
     <form>
        
    <div id="main">
        <h2>Sub Route</h2>
   
      <div>
          <label for="StateName">State</label> &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
              
          <input type="hidden" name="hid" value="">
          <Select name="statename" onchange="displaydistrict(this.value)">
              
        <option selected="selected"value="">Select</option>
        <%
        String s ="select * from tbl_state";
        ResultSet rl=obj.select(s);
        while(rl.next())
        {
            
        
         %>
         <option <%if(st.equals(rl.getString("state_id"))){ %>selected="" <%}%> value="<%=rl.getString("state_id")%>"><%=rl.getString("state_name")%></option>
         <%
        }
        %>
          </select>
          
      </div>
          <div>
          <label for="DistrictName">District</label> &nbsp;
              &nbsp;
              
          <Select name="districtname" id="distid" onchange="displayplace(this.value)">
        <option selected="selected"value="">Select</option>
        <% String ss="select * from tbl_district";
        ResultSet r2=obj.select(ss);
        while(r2.next())
        {
            
        
         %>
         <option  <%if(dis.equals(r2.getString("dis_id"))){ %>selected="" <%}%> value="<%=r2.getString("dis_id")%>"><%=r2.getString("dis_name")%></option>
         <%
        }
        %>
          </select>
          
      </div>
          <div>
          <label for="PlaceName">Place</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <Select name="placename" id="place">
        <option selected="selected"value="">Select</option>
        <%
        String sss="select * from tbl_place";
        ResultSet r3=obj.select(sss);
        while(r3.next())
        {
            %>
         <option <%if(pl.equals(r3.getString("place_id"))){ %>selected="" <%}%>  value="<%=r3.getString("place_id")%>"><%=r3.getString("place_name")%></option>
         <%
        }
    %>          </select>

          </div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" name="submit" value="AddRoute">
      
      
      
       <table id="customers">
     <tr>
    <th>No</th>
    
    <th>Sub Route</th>
   
    <th>Delete</th>
  </tr>
        

  <% String p="select * from  tbl_subroute mr inner join tbl_place p on mr.place_id=p.place_id inner join tbl_district d on p.dis_id =d.dis_id inner join tbl_state s on d.state_id= s.state_id where mr.mainroute_id="+session.getAttribute("mainroute");
                ResultSet r4=obj.select(p);
                int i=1;
                while(r4.next())
                {
                    
                String nam=r4.getString("place_name");
                %>
                <tr> 
                    <td><%=i%></td>
                    <td><%=r4.getString("state_name")%>-<%=r4.getString("dis_name")%>-<%=nam%></td>
                    
                   
                    <td><a href ="Subroute.jsp?delid=<%=r4.getString("subroute_id")%>"><img src="../../Admin/taxi/Design/Icon/delete5.jfif" width="35" height="35"></a></td>
                    
                </tr>
                <% i++;
                
                }
                
        %>
  
    
       </table>
    </div>
        </form>
    

    </body>
</html>

<br><br>
<%@include file="footer.jsp" %>

