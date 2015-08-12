<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="java.net.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
 <html>
<head>
<script src="https://www.google.com/jsapi"></script>
<script src="jquery.min.js"></script>
<script src="jquery.csv-0.71.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <title>Home</title>
</head>

  
<!--div id="bar"><h4 style="float:left;color:white">Welcome <%=session.getAttribute("userName")%></h4><p style="color:white;font-family:Arial;margin:15px 0px 0px 580px;">CMPE-283 Project1</p></div>
 <a href="welcome.jsp" class="formdesc" style="text-decoration:none;color:black;float:left;margin-left:-130px">Home</a>
 <a href="logout.jsp" class="formdesc" style="text-decoration:none;color:white;float:right;margin-right:-130px;">Logout</a--->
 
 
 <div id="bar" > <span id="emer" style="float:left;color:white;margin:8px 20px 0px 20px;font-family:sans-serif;opacity:1!important" 
 onmouseover="emeron()"></span>

 
    
<a href="oned.jsp" class="formdesc" style="text-decoration:none;color:white;float:right;margin-left:28ql0px;">Go Back!</a>

   </div> 
    
   
<body>

  
<%
 	String d_name=request.getParameter("userName");
	 
	Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs,rs1 = null;
    int noOfInserts;
    boolean userNamePresent = false;

 	//out.println(d_name);

    try {
 
		String query = "Select docid from doclogin where username like '%"+d_name+"%'"; 
		   
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/test","",
				"");
		ps = con.prepareStatement(query);
		 rs = ps.executeQuery();
		 	
		if (!rs.wasNull()) {
			while (rs.next()) {
				try{
					 String show = "select * from appointment where doc_id="+rs.getObject(1); 
					 //out.println(show);
					 PreparedStatement ps1 = con.prepareStatement(show);
					 rs1=ps1.executeQuery();
					 %>
					 <table class="table table-hover">
								<tr style="color:black"><th>Medical Record Number</th><th>Patient's Name</th><th>Doctor's Name</th><th>Patient's Visit Date</th><th>Time Visted</th></tr>
								
					 <%
					 
					 if (!rs1.wasNull()) {
							while (rs1.next()) {
								try{
									
									 
									
								out.println("<tr><th>"+rs1.getObject(1)+"</th><th>"+rs1.getObject(2)+"</th><th> "+rs1.getObject(3)+"</th><th> "+rs1.getObject(4)+"</th><th> "+rs1.getObject(5)+"</th><th></tr>");}
								
								catch(Exception e)
								{
									out.println(e);
								}
								
												} 
					 }
					
				}
				
				catch(Exception e)
				{
					out.println(e);
				} 
				 
			} %>
			 
			</table>
			<%
			  
			  				}
    	}
    
    catch(Exception e){
    	
    	out.println(e);
    	
    }
	 
    %>


</body>


<style type="text/css">

body{


    background-color:gray;
    color:white;
    padding:-20px -20px -20px -20px;
}

 
#bar{
                color: white;
                width: 200px;
                border: 2px ridge gray;
                background-color:black;
                opacity:0.5; 
                height: 50px;
                position: absolute;
                margin:350px 0px 0px 550px;
                background-image: url('pattern.png');
                border-radius:100px;
                padding-left:100px;	
                	
            }

h4{

    color: white; 
    margin-left:10px;
}

#main{

    
    border: 3px ridge rgba(255,153,0,0.9);
    background-color: rgba(0,0,0,0.5);
    width: 400px !important;
    padding: 50px 0px 0px 80px;
    border-radius:100px;
    height:300px;
    margin: 0px 0px 0px 400px;
}

#bar:hover{
	
	border: 2px groove red;
	-moz-box-shadow: 30px 30px 5px black;
	-webkit-box-shadow: 30px 30px 5px black;
	box-shadow: 30px 30px 5px black;
	background-color:rgba(255,255,255,1);
	color:black !important;
}

  #video{

                 
                height: 50%;
             z-index: -1000;
                position: fixed;
                margin-left:4%;

            }

            video{

                border: 2px solid white;
                opacity: 0.5;
            }
      
.formdesc{

    font:Arial;
    color:white;
    font-size: 20px;
    margin-top: 10px;
    width:200px;
}


.forminp{

    font:Arial; 
    font-size: 15px;
    background: rgba(0,0,0,0.1);
    text-decoration:none;
    color:black;
    height:10x;
    width:200px;
    margin-left:50px;
    
}
.col-md-8{
	 margin-top: 10px;
	 padding: 5px 5px 5px 5px;
	 width:220px;
}


.form-group{
	margin-top: 20px;
}

.lgin{

    width: 80px;
    height: 30px;
    color:black;
    margin:20px 0px 0px 70px;
 
}

.sgup{
    
    text-decoration:none;
    color:black;
    font-weight:100px !important;
    margin-top:20px;
    float:right;
    margin-right:30px;

} 

.formgroup{
	width:200px;
}
 
 
 tr:hover{
 color:green;
 }
 
 
 table{
 margin-top:30px;
 
 }
 

</style>
</html>
