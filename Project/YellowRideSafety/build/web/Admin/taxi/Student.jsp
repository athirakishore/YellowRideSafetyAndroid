<%-- 
    Document   : Student
    Created on : 15 Sep, 2018, 7:26:30 AM
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
        <title>Student Page</title>
        <script src="jquery.js" type="text/javascript"></script>
        <script>
            function displaydivision(id)
            {
               // alert(id);
                $.ajax(
                        {
                            url: "Ajaxdivision.jsp?id="+id,
                    success: function(result){
                        $("#div_id").html(result);
                    }
                        });
            }
             function displaydistrict(id)
            {
                $.ajax(
                        {
                            url: "AjaxPlace.jsp?id="+id,
                    success: function(result){
                        $("#distid").html(result);
                    }
                        });
            }
            
            function displayplace(id)
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
    </head>
   <body>
        <% 
         String id="";
         String stateid="";
         String districtid="";
         String placeid="";
         String admno="";
         String fname="";
         String lname="";
         String gend="";
         String blood="";
         String dob="";
         String state="";
         String place="";
         String dist="";
         String clas="";
         String div="";
         if(request.getParameter("submit")!=null)
    {
       
        String ad=request.getParameter("admno");
        String f=request.getParameter("fnam");
        String l=request.getParameter("lnam");
        String g=request.getParameter("gen");
        String b=request.getParameter("blod");
        String d=request.getParameter("dob");
        String s=request.getParameter("state");
        String p=request.getParameter("placename");
        String di=request.getParameter("dist");
        String cls=request.getParameter("clas");
        String divi=request.getParameter("divisionname");
        
        
        String idd=request.getParameter("hid");
        if(!idd.equals(""))
        { 
            String upd= "update tbl_student set stud_admno='"+ad+"',stud_fname='"+f+"',stud_lname='"+l+"',stud_gender='"+g+"',stud_blood='"+b+"',stud_dob='"+d+"',place_id='"+p+"',div_id='"+divi+"' where stud_id='"+idd+"'";
            if(obj.insert(upd))
            {
                System.out.println("Updated Successfully");
                
            }
        }  
        else
        {
            
        String insert="insert into tbl_student(stud_admno,stud_fname,stud_lname,stud_gender,stud_blood,stud_dob,div_id,place_id)values('"+ad+"','"+f+"','"+l+"','"+g+"','"+b+"','"+d+"','"+divi+"','"+p+"')";
        
        boolean b1= obj.insert(insert);
        
        if(b1)
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
            String del="delete from tbl_student where stud_id='"+a+"'";
            
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
                  
                  String sel="select * from tbl_student st inner join tbl_division d on st.div_id=d.div_id inner join tbl_class c on d.class_id=c.class_id inner join tbl_place p on st.place_id=p.place_id inner join tbl_district dis on p.dis_id=dis.dis_id inner join tbl_state s on dis.state_id=s.state_id where st.stud_id='"+id+"'";
                  System.out.println(sel);
                  
                  ResultSet r = obj.select(sel);
                  if(r.next())
                  {
                   
          admno=r.getString("stud_admno");
          fname=r.getString("stud_fname");
          lname=r.getString("stud_lname");
          gend=r.getString("stud_gender");
          blood=r.getString("stud_blood");
         dob=r.getString("stud_dob");
         state= r.getString("state_id");
         place=r.getString("place_id");
         dist=r.getString("dis_id");
         clas=r.getString("class_id");
         div=r.getString("div_id");
                      
                  }
              }
              
            
               
     
    
     %>
    <h2>Student</h2>

<div id="main">
  <form>
      
    <label for="admno">Student Admission No</label>&nbsp;
    <input type="text" id="admno" name="admno" placeholder="admission no.."  value="<%=admno%>" >
    <input type="hidden" name="hid" required="" value="<%=id%>"
      </div>

          
      <div>
    <label for="fname">Student First Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="fnam" name="fnam" placeholder="student first name.."pattern="[A-Za-z ]{1,30}" required=""  value="<%=fname%>" >
    </div>
     
      <div>
    <label for="lnam">Student Last Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="lnam" name="lnam" placeholder="student last name.." pattern="[A-Za-z ]{1,30}" required="" value="<%=lname%>" >
    </div> 
    <div>
            <label for="Gender">Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input  <%if(gend.equals("male")){%> checked=""<%}%> type="radio" name="gen" value="male" size="10" />Male
            <input <%if(gend.equals("female")){%> checked=""<%}%> type="radio" name="gen" value="female"size="10" required=""/>Female</td></tr>
        </div> 
          <div>
    <label for="blood">Blood Group</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="blod" name="blod" placeholder="student blood group.." required=""  value="<%= blood%>" >
    </div>  
    <div>
            <label for="dob">Dob</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="date" id="dob" name="dob" placeholder="date of birth.." value="<%=dob%>">
        </div> 
         <div>
    <label for="StateName">State Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
          <Select name="statename" onchange="displaydistrict(this.value)">
              
        <option selected="selected" value="">Select</option>
        <%
        String s ="select * from tbl_state";
        ResultSet rl=obj.select(s);
        while(rl.next())
        {
            
        
         %>
         <option <% if(state.equals(rl.getString("state_id"))){%>selected=""<%}%>value="<%=rl.getString("state_id")%>"><%=rl.getString("state_name")%></option>
         <%
        }
        %>
          </select>
      </div> 
          <div>
          <label for="DistrictName">District</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <Select name="districtname" id="distid" onchange="displayplace(this.value)">
        <option selected="selected"value="">Select</option>
        <% String ss="select * from tbl_district";
        ResultSet r2=obj.select(ss);
        while(r2.next())
        {
            %>
         <option <% if(dist.equals(r2.getString("dis_id"))){%>selected=""<%}%>value="<%=r2.getString("dis_id")%>"><%=r2.getString("dis_name")%></option>
         <%
        }
        %>
          </select>
          </div> 
           <div>
          <label for="PlaceName">Place</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <Select name="placename" id="place">
        <option selected="selected"value="">Select</option>
        <%
        String sss="select * from tbl_place";
        ResultSet r3=obj.select(sss);
        while(r3.next())
        {
            %>
         <option <% if(place.equals(r3.getString("place_id"))){%>selected=""<%}%>value="<%=r3.getString("place_id")%>"><%=r3.getString("place_name")%></option>
         <%
        }
        %>
          </select>
          </div> 
          <div>
    <label for="Class Name">Class Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
          <Select name="class name" onchange="displaydivision(this.value)">
              
        <option selected="selected"value="">Select</option>
        <%
        String s1 = "select * from tbl_class";
        ResultSet rsel=obj.select(s1);
        while(rsel.next())
        {
            
        
         %>
         <option <% if(clas.equals(rsel.getString("class_id"))){%>selected=""<%}%>value="<%=rsel.getString("class_id")%>"><%=rsel.getString("class_name")%></option>
         <%
        }
        %>
          </select>
      </div>
         <div>
          <label for="DivisionName">Division</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <Select name="divisionname" id="">
        <option selected="selected"value="">Select</option>
        <%
        String s2="select * from tbl_division";
        ResultSet r4=obj.select(s2);
        while(r4.next())
        {
            %>
         <option <% if(div.equals(r4.getString("div_id"))){%>selected=""<%}%>value="<%=r4.getString("div_id")%>"><%=r4.getString("div_name")%></option>
         <%
        }
        %>
          </select>
          </div> 
      
      
	<input type="submit" name="submit" value="ADD STUDENT">
         <table id="customers">
         <tr>
    <th>No</th>
    <th>Student Admission No</th>
    <th>Student First Name</th>
    <th>Student Last Name</th>
    <th>Gender</th>
    <th>Blood</th>
    <th>DoB</th>
    <th>State</th>
    <th>District</th>
    <th>Place</th>
    <th>Class</th>
    <th>Division</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  
        <% String p="select * from tbl_student st inner join tbl_division d on st.div_id=d.div_id inner join tbl_class c on d.class_id=c.class_id inner join tbl_place p on st.place_id=p.place_id inner join tbl_district dis on p.dis_id=dis.dis_id inner join tbl_state s on dis.state_id=s.state_id";
                ResultSet r5=obj.select(p);
                int i=1;
                while(r5.next())
                {
                    
                //String nam=r5.getString("place_name");
                %>
                <tr> 
                    <td><%=i%></td>
                    
                    <td><%=r5.getString("stud_admno")%></td>
                    <td><%=r5.getString("stud_fname")%></td>
                    
                    <td><%=r5.getString("stud_lname")%></td>
                    <td><%=r5.getString("stud_gender")%></td>
                    <td><%=r5.getString("stud_blood")%></td>
                    <td><%=r5.getString("stud_dob")%></td>
                    <td><%=r5.getString("state_name")%></td>
                    <td><%=r5.getString("dis_name")%></td>
                    <td><%=r5.getString("place_name")%></td>
                    <td><%=r5.getString("class_name")%></td>
                    <td><%=r5.getString("div_name")%></td>
                    
                    
                    
                    <td><a href ="Student.jsp?delid=<%=r5.getString("stud_id")%>"><img src="../../Admin/taxi/Design/Icon/delete5.jfif" width="35" height="35"></a></td>
                    <td><a href ="Student.jsp?edtid=<%=r5.getString("stud_id")%>"><img src="../../Admin/taxi/Design/Icon/edit3.jfif" width="35" height="35"></a></td>
                   
                </tr>
                <% i++;
                
                }
                
        %>
        
            </table>   </form>

</div>

        
</body>
</html>
<br>
<br><br>
<%@include file="footer.jsp" %>

