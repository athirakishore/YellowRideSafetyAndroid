<%-- 
    Document   : CompanyUpload
    Created on : Mar 19, 2018, 11:43:55 AM
    Author     : jiji
--%>
<%@page import="java.sql.ResultSet"%>

<jsp:useBean class="database.ConnectionClass" id="obj"></jsp:useBean>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            
        File savedFile=null; 
        FileItem f_item=null;
        
        

String field_name="";
String file_name="";
String fn=""; 

String field[] = new String[20];
String value[]=new String[20];

//checking if request cotains multipart data
boolean isMultipart=ServletFileUpload.isMultipartContent(request);

if(isMultipart)
{
    System.out.println("ifff");

    FileItemFactory factory=new DiskFileItemFactory();
    ServletFileUpload upload=new ServletFileUpload(factory);

    //declaring a list of form fields
    List items_list=null;

    //assigning fields to list 'items_list'
    try
    {
    items_list=upload.parseRequest(request);
    }
    catch(FileUploadException ex)
    {
        out.println(ex);
    }

          //declaring iterator
   Iterator itr=items_list.iterator();
    int k=0;
    //iterating through the list 'items_list'
    while(itr.hasNext())
    {
        
        //typecasting next element in items_list as fileitem
        f_item=(FileItem)itr.next();

        //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
       if(f_item.isFormField())
        {
          
            //getting fieldname and value
            field[k]=f_item.getFieldName();
            value[k]=f_item.getString();
                
                k++;
        }
       else
       {
		   
		   
           //f_item=(FileItem)itr.next();
            
          file_name=f_item.getName();
           field_name=f_item.getFieldName();
           if(field_name.equals("proof"))
           {
         String ext=file_name.substring(file_name.lastIndexOf("."));
            //setting path to store image
            File proj_path=new File(config.getServletContext().getRealPath("/"));
            String file_path=proj_path.getParentFile().getParentFile().getPath()+"\\web\\Admin\\taxi\\DriverProof\\";
            Random r=new Random();
             int r_num=r.nextInt(1111)+999;
             
            fn="proof_"+r_num+ext;
            //creating a file object
            savedFile=new File(file_path+fn);
            try
            {
                //writing the file object
                f_item.write(savedFile);               
                
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            }
           
           
           
          
           
       }
           
           }
     
           String insQuery = "insert into tbl_driver(dvr_fname,dvr_lname,dvr_gender,place_id,dvr_hsname,dvr_pin,dvr_phno,dvr_email,dvr_licenceno,dvr_dob,dvr_username,dvr_pass,dvr_proof)"
                   + "values ('" + value[0] + "','" + value[1] + "','" + value[2] + "','"+value[5]+"','"+value[6]+"','"+value[7]+"','"+value[8]+"','"+value[9]+"','"+value[10]+"','"+value[11]+"','"+value[12]+"','"+value[13]+"','"+fn+"')";
          System.out.println(insQuery);

           boolean status=obj.insert(insQuery);
    if(status==true)
    {
      %> 
       <script type="text/javascript">
            alert("Upload Successfully..");
            setTimeout(function(){window.location.href='Driver.jsp'},100);
        </script>
     <%
    }
     }   


      

        %>

    </body>
</html>
