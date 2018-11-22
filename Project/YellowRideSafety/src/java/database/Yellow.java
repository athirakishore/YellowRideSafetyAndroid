/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Swathy
 */
@WebService(serviceName = "Yellow")
public class Yellow {
    ConnectionClass con=new ConnectionClass();

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ParentRegis")
    public String ParentRegis(@WebParam(name = "name") String name, @WebParam(name = "admno") String admno, @WebParam(name = "address") String address, @WebParam(name = "age") String age, @WebParam(name = "gender") String gender, @WebParam(name = "phone") String phone, @WebParam(name = "email") String email, @WebParam(name = "username") String username, @WebParam(name = "password") String password) {
       String insert="insert into tbl_parent(prnt_name,prnt_admno,prnt_address,prnt_age,prnt_gender,prnt_phno,prnt_email,prnt_username,prnt_pass)values('"+name+"','"+admno+"','"+address+"','"+age+"','"+gender+"','"+phone+"','"+email+"','"+username+"','"+password+"')";
       System.out.println(insert);
        boolean b= con.insert(insert);
        String a= "false";
        if(b){
            a="true";
        }
        return a;
    }
    
     @WebMethod(operationName = "selectoperation")
    public String selectoperation(@WebParam(name = "username") String username, @WebParam(name = "password") String password) {
        //TODO write your implementation code here:
       
        
        String sel="select * from tbl_parent where prnt_username='"+username+"' and prnt_pass='"+password+"'";
        System.out.println(sel);
        ResultSet rs=con.select(sel);
         JSONArray j=new JSONArray();
        String s="false";
        String name="";
        try{
            if(rs.next())
            {
                 JSONObject jo= new JSONObject();
                s=rs.getString("prnt_id");
                name=rs.getString("prnt_name");
                jo.put("id",s);
                jo.put("name",name);
                jo.put("usertype","parent");
                
                j.put(jo);
            }
            else{
                String sell="select * from tbl_driver where dvr_username='"+username+"' and dvr_pass='"+password+"'";
                System.out.println(sell);
                
                 ResultSet rss=con.select(sell);
                 if(rss.next()){
                     JSONObject jo= new JSONObject();
                s=rss.getString("dvr_id");
                name=rss.getString("dvr_fname");
                jo.put("id",s);
                jo.put("name",name);
                 jo.put("usertype","driver");
                j.put(jo);
                     
                 }
            }
             
        } catch (Exception ex) {
            
        }
        System.out.println("s"+s);
         return j.toString();
    }


@WebMethod(operationName = "fetch")
    public String fetch(@WebParam(name = "Id") String Id) {
    JSONArray ja=new JSONArray();
        try {
        //TODO write your implementation code here:
        String fth="select prnt_name,prnt_admno,prnt_address,prnt_phno,prnt_email from tbl_parent where prnt_id='"+Id+"'";
        ResultSet r=con.select(fth);
        System.out.println(fth);
        if(r.next())
        {
            
            JSONObject jo=new JSONObject();
            
            String n1=r.getString("prnt_name");
            String n2=r.getString("prnt_admno");
            String n3=r.getString("prnt_address");
            String n4=r.getString("prnt_phno");
            String n5=r.getString("prnt_email");
            
            jo.put("Name",n1);
            jo.put("StudAdmno",n2);
            jo.put("HouseName",n3);
            jo.put("Phno",n4);
            jo.put("Email",n5);
            ja.put(jo);
                    
              }       
    } catch (Exception ex) {
       System.out.println(ex);
    }
    return ja.toString();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "update")
    public String update(@WebParam(name = "Id") String Id, @WebParam(name = "Name") String Name, @WebParam(name = "StudAdmno") String StudAdmno, @WebParam(name = "HouseName") String HouseName, @WebParam(name = "Phno") String Phno, @WebParam(name = "Email") String Email) {
        //TODO write your implementation code here:
       String upd="update tbl_parent set prnt_name='"+Name+"',prnt_admno='"+StudAdmno+"',prnt_address='"+HouseName+"',prnt_phno='"+Phno+"',prnt_email='"+Email+"' where prnt_id='"+Id+"'";
        System.out.println(upd);
        boolean b1=con.insert(upd);
        String ab="false";
        if(b1)
        {
            ab="true";
        }
        return ab;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ParentComplaints")
    public String ParentComplaints(@WebParam(name = "com") String com, @WebParam(name = "prntid") String prntid) {
        String ins ="insert into tbl_complaint (com_des,com_date,com_time,prnt_id) values('"+com+"',curdate(),curtime(),'"+prntid+"')";
        if(con.insert(ins)){
            return "Complaint Added";
        }
        return "Error";
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "fillstudent")
    public String fillstudent(@WebParam(name = "parentid") String parentid) {
        JSONArray ja=new JSONArray();
        try {
        //TODO write your implementation code here:
        String f="select * from tbl_parstudent ps inner join tbl_student s on s.stud_id=ps.stud_admno where ps.prnt_id='"+parentid+"'";
       ResultSet r1=con.select(f);
        System.out.println(f);
        while(r1.next())
        {
            
            JSONObject jo=new JSONObject();
            
            String n1=r1.getString("stud_admno");
            String n2=r1.getString("stud_fname");
           
            jo.put("Admno",n1);
            jo.put("Stud",n2);
          ja.put(jo);
                    
              }       
    } catch (Exception ex) {
       System.out.println(ex);
    }
        System.out.println("json:\t"+ja);
    return ja.toString();
    }
        //TODO write your implementation code here:

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ChildAbsent")
    public String ChildAbsent(@WebParam(name = "adm") String adm, @WebParam(name = "reason") String reason,@WebParam(name = "id") String id){
        //TODO write your implementation code here:
        String insert="insert into tbl_absent(abs_date,stud_admno,abs_reason,prnt_id)values(curdate(),'"+adm+"','"+reason+"','"+id+"')";
       System.out.println(insert);
        boolean b= con.insert(insert);
        String a= "false";
        if(b){
            a="true";
        }
        return a;
        
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "viewstudentabsent")
    public String viewstudentabsent() {
        //TODO write your implementation code here:
        JSONArray ja=new JSONArray();
        try {
        //TODO write your implementation code here:
        String f="select * from tbl_absent a inner join tbl_student s on s.stud_id=a.stud_admno"; 
       ResultSet r1=con.select(f);
        System.out.println(f);
        while(r1.next())
        {
            
            JSONObject jo=new JSONObject();
            
            String n1=r1.getString("abs_date");
            String n2=r1.getString("stud_admno");
            String n3=r1.getString("stud_fname");
           
            jo.put("Date",n1);
            jo.put("StudAdmno",n2);
            jo.put("StudName",n3);
          ja.put(jo);
                    
              }       
    } catch (Exception ex) {
       System.out.println(ex);
    }
        System.out.println("json:\t"+ja);
    return ja.toString();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Trackingdriver")
    public String Trackingdriver(@WebParam(name = "dvrid") String dvrid, @WebParam(name = "lattitude") String lattitude, @WebParam(name = "longitude") String longitude, @WebParam(name = "pl") String pl) {
        //TODO write your implementation code here:
         String insert="insert into tbl_tracklocation(dvr_id,lattitude,longitude,date,time,locationplace)values('"+dvrid+"','"+lattitude+"','"+longitude+"',curdate(),curtime(),'"+pl+"')";
       System.out.println(insert);
        boolean b= con.insert(insert);
        String a= "false";
        if(b){
            a="true";
        }
        return a;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ViewLocation")
    public String ViewLocation(@WebParam(name = "parntid") String parntid) {
        //TODO write your implementation code here:
        
         JSONArray ja=new JSONArray();
        try {
        //TODO write your implementation code here:
        String f="select * from tbl_tracklocation "; 
       ResultSet r1=con.select(f);
        System.out.println(f);
        if(r1.last())
        {
            
            JSONObject jo=new JSONObject();
            
            String n1=r1.getString("lattitude");
            String n2=r1.getString("longitude");
            String n3=r1.getString("date");
            String n4=r1.getString("time"); 
            String n5=r1.getString("locationplace");
            
           
            jo.put("Latti",n1);
            jo.put("Longi",n2);
            jo.put("Dat",n3);
            jo.put("Tim",n4);
            jo.put("Plac",n5);
          ja.put(jo);
                    
              }       
    } catch (Exception ex) {
       System.out.println(ex);
    }
        System.out.println("json:\t"+ja);
    return ja.toString();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "DriverNotifications")
    public String DriverNotifications(@WebParam(name = "msg") String msg, @WebParam(name = "dvrid") String dvrid) {
        //TODO write your implementation code here:
        
        String ins ="insert into tbl_notification (noti_date,noti_time,noti_msg,dvr_id) values(curdate(),curtime(),'"+msg+"','"+dvrid+"')";
        if(con.insert(ins)){
            return "Notification Added";
        }
        return "Error";
        
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "viewparentnotification")
    public String viewparentnotification(@WebParam(name = "dvrid") String dvrid) {
        //TODO write your implementation code here: 
        JSONArray ja=new JSONArray();
        try {
        //TODO write your implementation code here:
        String f="select * from tbl_notification"; 
       ResultSet r1=con.select(f);
        System.out.println(f);
        while(r1.next())
        {
            
            JSONObject jo=new JSONObject();
            
            String n1=r1.getString("noti_date");
            String n2=r1.getString("noti_time");
            String n3=r1.getString("noti_msg");
           
            jo.put("Date",n1);
            jo.put("Time",n2);
            jo.put("Msg",n3);
          ja.put(jo);
                    
              }   
         System.out.println("json:\t"+ja);
    return ja.toString();
    } catch (Exception ex) {
       System.out.println(ex);
    }
       return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "QrcodeReading")
    public String QrcodeReading(@WebParam(name = "studid") String studid, @WebParam(name = "pickupaddress") String pickupaddress, @WebParam(name = "dropdownaddress") String dropdownaddress) {
        //TODO write your implementation code here:
        String drop="",id="";
         String ww="select * from tbl_qrcode where stud_id='"+studid+"'";
          ResultSet rs=con.select(ww);
        try {
            while(rs.next()){
                drop=rs.getString("dropdown_time");
                id=rs.getString("qrcode_id");
              String upd="update tbl_qrcode set dropdown_time=curtime(),dropdown_address='"+pickupaddress+"'  where qrcode_id='"+id+"'";
        System.out.println(upd);
         if(con.insert(upd)){
               return "qrcode Updated";
           }
           return "Error";
            }
        } catch (SQLException ex) {
          Logger.getLogger(Yellow.class.getName()).log(Level.SEVERE, null, ex);
            
            
        }
        if(drop.equals("0")){
         
            
        }else{
                   
        
            String ins ="insert into tbl_qrcode (stud_id,pickup_time,pickup_date,pickup_address) values('"+studid+"',curtime(),curdate(),'"+pickupaddress+"')";
           if(con.insert(ins)){
               return "qrcode Added";
           }
           return "Error";
        }
     return null;  
    }
    @WebMethod(operationName = "fetches")
    public String fetches(@WebParam(name = "Id") String Id) {
    JSONArray ja=new JSONArray();
        try {
        //TODO write your implementation code here:
         String fth="select * from tbl_parstudent p inner join tbl_qrcode q on p.stud_admno=q.stud_id where p.prnt_id='"+Id+"'";
      
        ResultSet ro=con.select(fth);
        System.out.println(fth);
        if(ro.next())
        {
            
            JSONObject jo=new JSONObject();
            
            String n1=ro.getString("stud_id");
            String n2=ro.getString("pickup_time");
            String n3=ro.getString("pickup_date");
            String n4=ro.getString("pickup_address");
            String n5=ro.getString("dropdown_time");
            String n6=ro.getString("dropdown_address");
            
            jo.put("Studid",n1);
            jo.put("Pickuptime",n2);
            jo.put("Pickupdate",n3);
            jo.put("Pickupaddress",n4);
            jo.put("Dropdowntime",n5);
            jo.put("Dropdownaddress",n6);
            ja.put(jo);
                    
              }       
    } catch (Exception ex) {
       System.out.println(ex);
    }
    return ja.toString();
    }

    
    
 }
   

   
    
       
    
        
  
    
        
    

