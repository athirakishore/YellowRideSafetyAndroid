<%-- 
    Document   : driveredit1
    Created on : 15 Sep, 2018, 1:39:02 AM
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
        <title>Driver Edit Details</title>
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
        String address="";
        String pincode="";
        String phno="";
        String email="";
        
        
          if(request.getParameter("submit")!=null)
    {
        
        String add=request.getParameter("address");
        String pinc=request.getParameter("pin");
        String ph=request.getParameter("phno");
        String mail=request.getParameter("email");
        String place=request.getParameter("placename");
        
        
            String upd= "update tbl_driver set dvr_hsname='"+add+"',dvr_pin='"+pinc+"',dvr_phno='"+ph+"',dvr_email='"+mail+"',place_id='"+place+"' where tbl_driver.dvr_id="+session.getAttribute("Driver");
//           out.println(upd);
            if(obj.insert(upd))
            {
                System.out.println("Updated Successfully");
                
            }
            else
            {
                
            }
           
     
    }
    
          
             
                   String sel="select dvr_hsname,dvr_pin,dvr_phno,dvr_email,dr.place_id,d.dis_id,d.state_id from  tbl_driver dr inner join tbl_place p on dr.place_id=p.place_id inner join tbl_district d on p.dis_id=d.dis_id where dr.dvr_id="+session.getAttribute("Driver");
                  System.out.println(sel);
                  ResultSet r = obj.select(sel);
                  if(r.next())
                  {
                     placeid =r.getString("place_id");
                     districtid= r.getString("dis_id");
                     stateid=r.getString("state_id");
                      
        
    
    address=r.getString("dvr_hsname");
    pincode=r.getString("dvr_pin");
    phno=r.getString("dvr_phno");
    email=r.getString("dvr_email");
    
    
                      
                 }
             
              
             %>
        <div id="main">
     
        <form>
        <h2>Driver Edit</h2>
        
         <div>
    <label for="StateName">State Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
          <Select name="statename" onchange="displaydistrict(this.value)">
              
        <option selected="selected"value="">Select</option>
        <%
        String s ="select * from tbl_state";
        ResultSet rl=obj.select(s);
        while(rl.next())
        {
            
        
         %>
         <option <% if(stateid.equals(rl.getString("state_id"))){%>selected=""<%}%>value="<%=rl.getString("state_id")%>"><%=rl.getString("state_name")%></option>
         <%
        }
        %>
          </select>
      </div>
          <div>
          <label for="DistrictName">District</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <Select name="districtname" id="distid" onchange="displayplace(this.value)">
        <option selected="selected"value="">Select</option>
        <% String ss="select * from tbl_district";
        ResultSet r2=obj.select(ss);
        while(r2.next())
        {
            %>
         <option <% if(districtid.equals(r2.getString("dis_id"))){%>selected=""<%}%>value="<%=r2.getString("dis_id")%>"><%=r2.getString("dis_name")%></option>
         <%
        }
        %>
          </select>
          </div>
           <div>
          <label for="PlaceName">Place</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <Select name="placename" id="place">
        <option selected="selected"value="">Select</option>
        <%
        String sss="select * from tbl_place";
        ResultSet r3=obj.select(sss);
        while(r3.next())
        {
            %>
         <option <% if(placeid.equals(r3.getString("place_id"))){%>selected=""<%}%>value="<%=r3.getString("place_id")%>"><%=r3.getString("place_name")%></option>
         <%
        }
        %>
          </select>
          </div>
          <div>
            <label for="address">Address</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea id="address" name="address" placeholder="your address.."><%=address%></textarea>
        </div>
         <div>
            <label for="Pin">Pin code</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="pin" name="pin" placeholder="pin code.." value="<%=pincode%>">
        </div>
         <div>
            <label for="phno">Phone number</label>&nbsp;&nbsp;
            <input type="text" id="phno" name="phno" placeholder="phone no.."value="<%=phno%>" >
        </div>
         <div>
             <label for="email">Email id</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="email" id="email" name="email" placeholder="email.." value="<%=email%>">
        </div>
        
         
         
        <input type="submit" name="submit" value="Submit">
        
       
      
       </form>
   
    </div>
    </body>
</html>
<br>
<br><br>
<%@include file="footer.jsp" %>

