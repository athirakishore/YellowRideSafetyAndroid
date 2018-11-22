<%-- 
    Document   : Division
    Created on : 4 Aug, 2018, 2:15:15 PM
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
     <% 
         
         String classid="";
         String divid="";
         String id="";
        
        if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("divisionname");
        String cls=request.getParameter("classname"); 
        String idd=request.getParameter("hid");
        
      if(!idd.equals(""))
        { 
            String upd= "update tbl_division set div_name='"+name+"',class_id='"+cls+"' where div_id='"+idd+"'";
           
            if(obj.insert(upd))
            {
                System.out.println("Updated Successfully");
                
            }
        }  
      else
        {
        String insert="insert into tbl_division(div_name,class_id)values('"+name+"','"+cls+"')";
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
            String del="delete from tbl_division where div_id='"+a+"'";
            
            if(obj.insert(del))
            {  %>
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
                  String sel="select div_name,class_id from tbl_division where div_id="+id;
                  System.out.println(sel);
                  ResultSet r = obj.select(sel);
                  if(r.next())
                  {
                   
                      classid=r.getString("class_id");
                      divid=r.getString("div_name");
                  }
              }
              
            %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Division Page</title>
        
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
    
      <body><div>
        

        
<div id="main">
    <form>
      <div>
          <label for="ClassName">Class</label> &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
          <Select name="classname">
        <option selected="selected"value="">Select</option>
        <% String s="select * from tbl_class";
        ResultSet rl=obj.select(s);
        while(rl.next())
        {
            
        
         %>
         <option <% if(classid.equals(rl.getString("class_id"))){%>selected=""<%}%>value="<%=rl.getString("class_id")%>"><%=rl.getString("class_name")%></option>
         <%
        }
        %>
          </select>
          
      </div><div>
    <label for="DivisionName">Division</label> &nbsp;
              &nbsp;
              &nbsp;
              
              
    <input type="text" id="divisionname" name="divisionname" placeholder="Your divisionname.." required="" value="<%=divid%>" >
    <input type="hidden" name="hid" value="<%=id%>"></div>
       
              &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
              &nbsp; &nbsp;
             
	<input type="submit" name="submit" value="Submit">
        <table id="customers">
         <tr>
    <th>No</th>
    <th>Class</th>
    <th>Division</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
        

          <% String p="select * from tbl_division d inner join tbl_class c on d.class_id= c.class_id";
                ResultSet r3=obj.select(p);
                int i=1;
                while(r3.next())
                {
                     String divnam=r3.getString("div_name");
                %>
                <tr> 
                    <td><%=i%></td>
                    <td><%=r3.getString("class_name")%></td>
                    <td><%=divnam%></td>
                    <td><a href ="Division.jsp?delid=<%=r3.getString("div_id")%>"><img src="../../Admin/taxi/Design/Icon/delete5.jfif" width="35" height="35"></a></td>
                    <td><a href ="Division.jsp?edtid=<%=r3.getString("div_id")%>"><img src="../../Admin/taxi/Design/Icon/edit3.jfif" width="35" height="35"></a></td>
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


