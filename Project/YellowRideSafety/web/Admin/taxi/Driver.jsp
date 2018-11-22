<%-- 
    Document   : Driver
    Created on : 29 Aug, 2018, 9:48:57 PM
    Author     : ASUS
--%>
<%@include file="header.jsp" %>
<br><br>
<br><br>
<br>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>

<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Registration</title>
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
        String fname="";
        String lname="";
        String gender="";
        String address="";
        String pincode="";
        String phno="";
        String email="";
        String licence="";
        String proof="";
        String dob="";
        String uname="";
        String pass="";
        String confirm="";
        
          if(request.getParameter("submit")!=null)
    {
        String fnam=request.getParameter("fname");
        String lnam=request.getParameter("lname");
        String gend=request.getParameter("gen");
        String add=request.getParameter("address");
        String pinc=request.getParameter("pin");
        String ph=request.getParameter("phno");
        String mail=request.getParameter("email");
        String lic=request.getParameter("licence");
        String pro=request.getParameter("proof");
        String db=request.getParameter("dob");
        String un=request.getParameter("uname");
        String p=request.getParameter("password");
        String cn=request.getParameter("confirmpass");
        String place=request.getParameter("placename");
        String district=request.getParameter("districtname");
        String idd=request.getParameter("hid");
        if(!idd.equals("null"))
        {
            String upd= "update tbl_driver set dvr_fname='"+fnam+"',dvr_lname='"+lnam+"',dvr_gender='"+gend+"',dvr_hsname='"+add+"',dvr_pin='"+pinc+"',dvr_phno='"+ph+"',dvr_email='"+mail+"',dvr_licenceno='"+lic+"',dvr_proof='"+pro+"',dvr_dob='"+db+"',dvr_username='"+un+"',dvr_pass='"+p+"'place_id='"+place+"',dis_id='"+district+"' where dvr_id="+idd+"'";
            if(obj.insert(upd))
            {
                System.out.println("Updated Successfully");
                
            }
            else
            {
              
        String insert="insert into tbl_driver(dvr_fname,dvr_lname,dvr_gender,dvr_hsname,dvr_pin,dvr_phno,dvr_email,dvr_licenceno,dvr_proof,dvr_dob,dvr_username,dvr_pass,place_id)values('"+fnam+"','"+lnam+"','"+gend+"','"+add+"','"+pinc+"','"+ph+"','"+mail+"','"+lic+"','"+pro+"','"+db+"','"+un+"','"+p+"',,'"+place+"',)";
        
        
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
            String del="delete from tbl_driver where dvr_id='"+a+"'";
            
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
                  session.setAttribute("Driver", request.getParameter("edtid"));
                  response.sendRedirect("Driveredit1.jsp");
              }
              
             %>
    <div id="main">
     
        <form action="DriverUploadAction.jsp" method="post" enctype="multipart/form-data">
        <h2>Driver Registration</h2>
        
        <div>
            <label for="FirstName">First Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="fname" name="fname" placeholder="first name.." pattern="[A-Za-z ]{1,30}" required="" value="<%=fname%>" >
        </div>
        <div>
            <label for="LastName">Last Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="lname" name="lname" placeholder="last name.." pattern="[A-Za-z ]{1,30}" required="" value="<%=lname%>">
        </div>
        <div>
            <label for="Gender">Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="gen" value="male" size="10" value="<%=gender%>"/>Male
            <input type="radio" name="gen" value="female"size="10" required=""/>Female</td></tr>
        </div>
         
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
          <label for="DistrictName">District</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
              <textarea id="address" name="address" placeholder="your address.." required=""><%=address%></textarea>
        </div>
         <div>
            <label for="Pin">Pin code</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="pin" name="pin" placeholder="pin code.." required="" value="<%=pincode%>">
        </div>
         <div>
            <label for="phno">Phone</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="phno" name="phno" placeholder="phone no.." pattern="[0-9 ]{10,11}" required="" value="<%=phno%>" >
        </div>
         <div>
            <label for="email">Email id</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="email" id="email" name="email" placeholder="email.." required="" value="<%=email%>">
        </div>
         <div>
            <label for="Licence"> Licence no</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="licence" name="licence" placeholder="licence no.." required="" value="<%=licence%>">
        </div>
         <div>
            <label for="Proof">Proof</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="file" id="proof" name="proof" value="<%=proof%>">
        </div>
         <div>
            <label for="dob">dob</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="date" id="dob" name="dob" placeholder="date of birth.." value="<%=dob%>">
        </div>
         
         <div>
            <label for="UserName">User Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="uname" name="uname" placeholder="user name.." required="" value="<%=uname%>" >
        </div>
         <div>
            <label for="Password">Password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" id="password" name="password" placeholder="password.." required="" value="<%=pass%>" >
        </div> 
        <input type="submit" name="submit" value="Submit">
        </div>
        <div>       <table id="customers">
  <tr>
    <th>No</th>
    <th>First Name</th>
    <th>Last Name</th>
    
    <th>Phone Number</th>
    <th>Email</th>
    <th>Licence no</th>
    <th>Proof</th>
    
    <th>Delete</th>
    <th>Edit</th>
    <th>More Details</th>
  </tr>
        

          <% String p="select * from tbl_driver d inner join tbl_place p on d.place_id=p.place_id inner join tbl_district dis on p.dis_id=dis.dis_id inner join tbl_state s on dis.state_id=s.state_id ";
                ResultSet r4=obj.select(p);
                int i=1;
                while(r4.next())
                {
                    
                String nam=r4.getString("place_name");
                %>
                <tr> 
                    <td><%=i%></td>
                    
                    <td><%=r4.getString("dvr_fname")%></td>
                    <td><%=r4.getString("dvr_lname")%></td>
                    
                    <td><%=r4.getString("dvr_phno")%></td>
                    <td><%=r4.getString("dvr_email")%></td>
                    <td><%=r4.getString("dvr_licenceno")%></td>
                    <td><%=r4.getString("dvr_proof")%></td>
                    
                    
                    
                    <td><a href ="Driver.jsp?delid=<%=r4.getString("dvr_id")%>"><img src="../../Admin/taxi/Design/Icon/delete5.jfif" width="35" height="35"></a></td>
                    <td><a href ="Driver.jsp?edtid=<%=r4.getString("dvr_id")%>"><img src="../../Admin/taxi/Design/Icon/edit3.jfif" width="35" height="35"></a></td>
                    <td><a href ="DriverEdit.jsp?edtid=<%=r4.getString("dvr_id")%>">More Details</a></td>
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

