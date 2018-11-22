<%-- 
    Document   : Bank
    Created on : Aug 23, 2018, 11:07:49 PM
    Author     : sree
--%>
<%@include file="AdminHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<html>
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank</title> 
        <script src="jquery.js" type="text/javascript"></script>
        <script>
            function getDistrict(id)
            {
                $.ajax(
                        {
                            url: "AjaxPlace.jsp?id="+id,
                            success: function (result) {
                            $("#districtid").html(result);
                        
                        
                    }
                        });
            }
             function getPlace(id)
            {
                $.ajax(
                        {
                            url: "AjaxBank.jsp?id="+id,
                            success: function (result) {
                            $("#place").html(result);
                        
                        
                    }
                        });
            }
            function getPin(id)
            {
                $.ajax(
                        {
                            url: "AjaxPin.jsp?id="+id,
                            success: function (result) {
                               
                            $("#pinno").html(result);
                           
                            
                        
                        
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
    background-color: grey;
    color: white;
}
</style>
    </head>
   <style>
input[type=text], select {
    width: 50%;
    padding: 12px 25px;
    margin: 10px 20px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 20%;
    background-color: grey;
    color: white;
    padding: 10px 8px;
    margin: 10px 30px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
input[type=reset] {
    width: 20%;
    background-color: grey;
    color: white;
    padding: 10px 8px;
    margin: 10px 30px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=reset]:hover {
    background-color: #45a049;
}

#main {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding:20px;
    margin-left: 160px;
    margin-top: 100px;
    width: 85%;
}

</style>
    </head>
<body>
      <%
          String id="";
          String stateid="";
          String distid="";
          String placeid="";
          String des1="";
          String phn1="";
          String email1="";
          String bank1="";
          String url1="";
          String pinno="";
          
          
        if(request.getParameter("submit")!=null)
        {
            String bank=request.getParameter("bank");
            String place=request.getParameter("place");
            String des=request.getParameter("des");
            String phone=request.getParameter("phn");
            String email=request.getParameter("email");
            String url=request.getParameter("url");
            String idd=request.getParameter("hid");
            if(!idd.equals(""))
            {
            String update="update tbl_bank set bank_name='"+bank+"',place_id='"+place+"',bank_discrptn='"+des+"',bank_phn='"+phone+"',bank_email='"+email+"',bank_link='"+url+"' where bank_id='"+idd+"'";
            if (obj.insert(update))
           {
               %>
            <script>
                alert("Updated Successfully!!");
                 setTimeout(function(){window.location.href='Bank.jsp'},100);
                </script>
                <%
               
           }
            }
            else
            
        {
            
             String insert="insert into tbl_bank(bank_name,place_id,bank_discrptn,bank_phn,bank_email,bank_link)values('"+bank+"','"+place+"','"+des+"','"+phone+"','"+email+"','"+url+"')";
         
            
            boolean b=obj.insert(insert);
            if (b)
            { %>
            <script>
                alert("Successfully inserted");
                 setTimeout(function(){window.location.href='Bank.jsp'},100);
                </script>
                <%
                
            }   
            else
            {
               System.out.println("Insertion Failed"); 
            }
                    
        }
        }
         if(request.getParameter("delid")!=null)
        {
        String a=request.getParameter("delid");
        String del="delete  from tbl_bank where bank_id='"+a+"'";
        if (obj.insert(del))
         { %>
            <script>
                alert("Successfully deleted");
                 setTimeout(function(){window.location.href='Bank.jsp'},100);
                </script>
                <%
                
            }
        else
        {
            System.out.println("Deletion Failed");
            
        }
        }
         if(request.getParameter("editid")!=null)
         {
             id=request.getParameter("editid");
             String sel="select bank_name,p.place_id,bank_discrptn,bank_phn,bank_email,bank_link,state_id,d.dist_id,place_pin  from tbl_bank b inner join tbl_place p on b.place_id=p.place_id inner join tbl_dist d on p.dist_id=d.dist_id where b.bank_id="+id;
             System.out.println(sel);
             ResultSet rs=obj.select(sel);
             if(rs.next())
             {
                 placeid=rs.getString("place_id");
                 distid=rs.getString("dist_id");
                 stateid=rs.getString("state_id");
                 
                 bank1=rs.getString("bank_name");
                 des1=rs.getString("bank_discrptn");
                 phn1=rs.getString("bank_phn");
                 email1=rs.getString("bank_email");
                url1=rs.getString("bank_link"); 
                pinno=rs.getString("place_pin");
             }
         }
        
        %>
    <form>

       
       
        <div id="main">
  
             <div>
    <label for="place">Bank Name</label>
    <input type="text" id="bank" name="bank" placeholder="Enter bank name" size="30" pattern="[A-Za-z ]{1,30}" required="" value="<%=bank1%> "  >
      </div>   
      <div>
    <label for="state">State</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <select name="state" onchange="getDistrict(this.value)" required="">
<option selected="selected" value="" >select</option>
<%
    String s ="select * from tbl_state ";
     ResultSet r = obj.select(s);
        
        while (r.next())
        {
       
%>
<option <%if(stateid.equals(r.getString("state_id"))){%>selected="" <%}%>value="<%=r.getString("state_id")%>"><%=r.getString("state_name")%></option>
<%

}
        %>
    </select>
      </div>
     <div>
    <label for="district">District</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <select name="district" id="districtid" required="" onchange="getPlace(this.value)">
<option selected="selected" value="" >select</option>
<%
    String d ="select * from tbl_dist";
     ResultSet r1 = obj.select(d);
        
        while (r1.next())
        {
       
%>
<option <%if(distid.equals(r1.getString("dist_id"))){%>selected="" <%}%>value="<%=r1.getString("dist_id")%>"><%=r1.getString("dist_name")%></option>
<%

}
        %>
        </select>
      </div>
       
        <div>
    <label for="place">Place</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <select name="place" id="place" onchange="getPin(this.value)"  required="">
<option selected="selected" value="" >select</option>
<%
    String e ="select * from tbl_place";
     ResultSet r3 = obj.select(e);
        
        while (r3.next())
        {
       
%>
<option <%if(placeid.equals(r3.getString("place_id"))){%>selected="" <%}%>value="<%=r3.getString("place_id")%>"><%=r3.getString("place_name")%></option>
<%

}
        %>
    </select>
      </div>    
        <div id="pinno">
           
    <label for="pin">Pin No</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    
    <input type="text"  name="pinno" placeholder="Enter your pin" size="30" readonly="" value="<%=pinno%>" >
    </div>
    
       
       <div>
            <input type="hidden" name="hid" value="<%=id%>">
    <label for="place">Bank Location</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <textarea id="des" name="des" placeholder="Enter bank details" size="30" required="" ><%=des1%></textarea>
      </div>   
     <div>
           
    <label for="pin">Phone No</label>&nbsp&nbsp&nbsp&nbsp&nbsp;
    <input type="text" id="phn" name="phn" placeholder="Enter your phone" size="30" pattern="[0-9 ]{10,11}" required="" value="<%=phn1%>" >
    </div>   
    <div>
           
    <label for="place">Email</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <input type="text" id="email" name="email" placeholder="Enter email" size="30" required="" value="<%=email1%> " >
      </div>    
    <div>
           
    <label for="place">URL</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <input type="url" id="url" name="url"  size="30" required="" value="<%=url1%> " >
      </div>   
      
      
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" name="submit" value="submit">
     <input type="reset" name="cancel" value="Cancel">   
   
      <table id="customers">
  <tr>
    <th>No</th>  
    <th>Bank Name</th>
    <th>State</th>
    <th>District</th>
    <th>Place</th>
    <th>Pin</th>
    <th>Location</th>
    <th>Phone No</th>
    <th>Email</th>
    <th>URL</th>
    <th>Delete</th>
    <th>Edit</th>
    </tr>
               
<%
  String p ="select bank_id,bank_name,bank_phn,bank_email,bank_link,bank_discrptn,place_name,place_pin,dist_name,state_name from tbl_bank b inner join tbl_place p on b.place_id=p.place_id inner join tbl_dist d on p.dist_id=d.dist_id inner join tbl_state s on  s.state_id=d.state_id";
        ResultSet r2 = obj.select(p);
        int i=1;
        while (r2.next())
        {
        String n=r2.getString("bank_name");
        %>
        <tr>
            <td><%=i%> </td>
            <td><%=n%></td>  
            <td><%=r2.getString("state_name")%></td>
            <td><%=r2.getString("dist_name")%></td> 
            <td><%=r2.getString("place_name")%></td>
            <td><%=r2.getString("place_pin")%></td>
            <td><%=r2.getString("bank_discrptn")%></td> 
            <td><%=r2.getString("bank_phn")%></td> 
            <td><%=r2.getString("bank_email")%></td> 
            <td><%=r2.getString("bank_link")%></td> 
            <td><a href ="Bank.jsp?delid=<%=r2.getString("bank_id")%>"><img src="../../Design/Icon/delete1.jpg" width="35" height="35"></a></td>
            <td><a href ="Bank.jsp?editid=<%=r2.getString("bank_id")%>"><img src="../../Design/Icon/edit1.jpg" width="35" height="35"></a></td>
        </tr>
        <% i++;
        
        }
       
        %>
  
  
  
         
  
</table>
        </div>
        </form>        
</body>
</html>
<%@include file="AdminFooter.jsp" %>