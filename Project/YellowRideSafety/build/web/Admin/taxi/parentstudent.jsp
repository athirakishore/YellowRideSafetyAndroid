<%-- 
    Document   : parentstudent
    Created on : Oct 21, 2018, 10:39:48 AM
    Author     : asus
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
        <title>student Parent Page</title>
    </head>
         <script src="jquery.js" type="text/javascript"></script>
        
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
        String prntid="";
        String admno="",studid="";
       
          if(request.getParameter("submit")!=null)
    {
       String  parentid =request.getParameter("parentname");
         studid=request.getParameter("studentname");
        String idd=request.getParameter("hid");
        if(!idd.equals("null"))
        {
            String upd= "update tbl_parstudent set prnt_id='"+prntid+"',stud_admno='"+admno+"' where ps_id="+idd+"'";
            if(obj.insert(upd))
            {
                System.out.println("Updated Successfully");
                
            }
            else
            {
                
        String insert="insert into tbl_parstudent(prnt_id,stud_admno)values('"+parentid+"','"+studid+"')";
        
        
         boolean b=obj.insert(insert);
        
        if(b)
        {
            %>
            <script>
                alert("Inserted successfully");
            </script>
            <%
        }
        else
         {
            System.out.println("Failed to insert");
          }
        }
          
        }
    }
    
            
             if(request.getParameter("delid")!=null)
        {
            String a=request.getParameter("delid");
            String del="delete from tbl_parstudent where ps_id='"+a+"'";
            
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
//        }
//              if(request.getParameter("edtid")!=null)
//              {
//                  id=request.getParameter("edtid");
//                  String sel="select place_name,p.dis_id,state_id from tbl_place p inner join tbl_district d on p.dis_id=d.dis_id where place_id="+id;
//                  System.out.println(sel);
//                  ResultSet r = obj.select(sel);
//                  if(r.next())
//                  {
//                     placeid =r.getString("place_name");
//                     districtid= r.getString("dis_id");
//                      stateid=r.getString("state_id");
//                  }
//              }
//              
            
               
        
    %>
    
     


        
       
       
        
        
  
<div id="main">
    <form>
      <div>
          <label for="parent">Parent</label>
          <input type="hidden" name="hid" value="<%=id%>"> &nbsp;
              &nbsp; &nbsp;
              &nbsp; &nbsp;
              &nbsp;
          <Select name="parentname" >
              
        <option selected="selected"value="">Select</option>
        <%
        String s ="select * from tbl_parent";
        ResultSet rl=obj.select(s);
        while(rl.next())
        {
            
        
         %>
         <option value="<%=rl.getString("prnt_id")%>"> <%=rl.getString("prnt_name")%></option>
         <%
        }
        %>
          </select>
          
      </div>
          <div>
              <label for="StudentName">Student</label> &nbsp;&nbsp;
              &nbsp; &nbsp;
              &nbsp;
          <Select name="studentname" id="studid">
        <option selected="selected"value="">Select</option>
        <% String ss="select * from tbl_student";
        ResultSet r2=obj.select(ss);
        while(r2.next())
        {
            
        
         %>
         <option value="<%=r2.getString("stud_id")%>"><%=r2.getString("stud_admno")%></option>
         <%
        }
        %>
          </select>
          
          </div>
	 &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
              &nbsp;
              
      <input type="submit" name="submit" value="Submit">&nbsp;
             
        </form>
                </div>
    </body>
    
    
</html><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>


<%@include file="footer.jsp" %>

       
   