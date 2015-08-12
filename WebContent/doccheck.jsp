<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="java.net.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment Success !</title>
</head>
<body>


<%
 	String p_name,d_name,date,time;
	String p_id=request.getParameter("iop");
	p_name=request.getParameter("nop");
	d_name  =request.getParameter("nod");
	date=request.getParameter("dob1")+"-"+request.getParameter("dob2")+"-"+request.getParameter("dob3");
	time=request.getParameter("tob1")+":"+request.getParameter("tob2");
	Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    int noOfInserts;
    boolean userNamePresent = false;

 	out.println(d_name);

    try {
 
		String query = "Select * from doclogin where Name like '%"+d_name+"%'"; 
		   
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/test","",
				"");
		ps = con.prepareStatement(query);
		 rs = ps.executeQuery();
		 	
		if (!rs.wasNull()) {
			while (rs.next()) {
				try{
					 String input = "insert into appointment values("+p_id+",'"+p_name+"','"+d_name+"','"+date+"','"+time+"',"+rs.getObject(1)+")"; 
					PreparedStatement ps1 = con.prepareStatement(input);
					ps1.executeUpdate();
					
				}
				
				catch(Exception e)
				{
					out.println(e);
				} 
				 
			}
			 %><div><% 
			  				}
    	}
    
    catch(Exception e){
    	
    	out.println(e);
    	
    }
	 
    %>
</div>

<div class="panel panel-success">
<p>Congratulations ! Your Appointment has successfully been booked.</p>
</div>
</body>


<style>

body{

background-color:green;

}

div{

border:2px solid black;
color: yellow;

}


</style>

</html>