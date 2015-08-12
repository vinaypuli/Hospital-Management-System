<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/paper/bootstrap.min.css">
<script type="text/javascript" src="jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://www.google.com/jsapi"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="jquery.csv-0.71.js"></script>
<!-- Bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Appointment</title>


<div id="bar"> 

   <span style="float:left;color:white;margin:8px 20px 0px 625px;font-family:sans-serif;opacity:1!important" > Insta

<span class="glyphicon glyphicon-plus" style="color:red;border:1px ridge blue" ></span>
  Vitals

   </span>

    
<a href="one.jsp" class="formdesc" style="text-decoration:none;color:white;float:right;margin:10px 10px 0px 0px;">Logout</a>

   </div> 
</head>
<body>
  <div id="main" class="panel panel-success">
  <form action="doccheck.jsp">
  	
  	<div class="panel panel-danger alfa"><label>Medical Record No:</label><input type="text" class="forom-input" name="iop"></div>
  	<div class="panel panel-danger alfa"><label>Name:</label><input type="text" class="forom-input" name="nop"></div>
  	<div class="panel panel-danger alfa"><label>Doctor:</label> 
  	<select class="btn btn-primary dropdown-toggle" name="nod">
  	<option value="Samaram">Samaram</option>
<option value="Brahmam">Brahmam</option>
<option value="khammam">khammam</option>
<option value="Raamam">Raamam</option>
<option value="Baali">Baali</option>
  	</select>
  	
  	</div>
  	<div class="panel panel-danger alfa"><label>Year:</label> 
  	
  	<select class="btn btn-warning dropdown-toggle" name="dob1">
  <option value="2015">2015</option>
  <option value="2016">2016</option>
	</select>
  	
  	
  	<label>Month:</label> 
  	
  	<select class="btn btn-warning dropdown-toggle" name="dob2">
  <option value="1">JAN</option>
<option value="2">FEB</option>
<option value="3">MAR</option>
<option value="4">APR</option>
<option value="5">MAY</option>
<option value="6">JUN</option>
<option value="7">JUL</option>
<option value="8">AUG</option>
<option value="9">SEP</option>
<option value="10">OCT</option>
<option value="11">NOV</option>
<option value="12">DEC</option>
  
	</select>
	<label>Day:</label> 
	  	<select class="btn btn-warning dropdown-toggle"name="dob3">
  <option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
  
  
	</select>
 
  	</div>
  	 
  	<div class="panel panel-danger alfa"><label>Time:</label><label>Hours(24 Format)</label>
  	
  	<select class="btn btn-warning dropdown-toggle" name="tob1">
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
  <option value="13">13</option>
  <option value="14">14</option>
  <option value="15">15</option>
  <option value="16">16</option>
  <option value="17">17</option>
</select>

	<label>Minutes</label>
  	
  	<select class="btn btn-warning dropdown-toggle" name="tob2">
    <option value="0">00</option>
  <option value="1">01</option>
  <option value="2">02</option>
  <option value="3">03</option>
  <option value="4">04</option>
  <option value="5">05</option>
  <option value="6">06</option>
  <option value="7">07</option>
  <option value="8">08</option>
  <option value="9">09</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
  <option value="13">13</option>
  <option value="14">14</option>
  <option value="15">15</option>
  <option value="16">16</option>
  <option value="17">17</option>
  <option value="18">18</option>
  <option value="19">19</option>
  <option value="20">20</option>
  <option value="21">21</option>
  <option value="22">22</option>
  <option value="23">23</option>
  <option value="24">24</option>
  <option value="25">25</option>
  <option value="26">26</option>
  <option value="27">27</option>
  <option value="28">28</option>
  <option value="29">29</option>
  <option value="30">30</option>
  <option value="31">31</option>
  <option value="32">32</option>
  <option value="33">33</option>
  <option value="34">34</option>
  <option value="35">35</option>
  <option value="36">36</option>
  <option value="37">37</option>
  <option value="38">38</option>
  <option value="39">39</option>
  <option value="40">40</option>
  <option value="41">41</option>
  <option value="42">42</option>
  <option value="43">43</option>
  <option value="44">44</option>
  <option value="45">45</option>
  <option value="46">46</option>
  <option value="47">47</option>
  <option value="48">48</option>
  <option value="49">49</option>
  <option value="50">50</option>
  <option value="51">51</option>
  <option value="52">52</option>
  <option value="53">53</option>
  <option value="54">54</option>
  <option value="55">55</option>
  <option value="56">56</option>
  <option value="57">57</option>
  <option value="58">58</option>
  <option value="59">59</option>


</select>

	

	</div>
   
   <button type="submit" class="btn btn-success" style="width:100%">Fix Appointment</button>
  
  </form>
  </div>

</body>

<style>


#bar{
                color: white;
                width: 100%;
                border: 2px ridge gray;
                background-color:black;
                opacity:0.9; 
                height: 40px;
                position: relative;
                background-image: url('pattern.png');
            }
            
#main{

 
width:40%;
height:450px; 
margin-top:40px;
margin-left:30%;
border:5px groove gray;
background-color:rgba(0,0,0,0.5);
  
}

.alfa{

background-color:rgba(0,0,0,0.8);
color:white;

}

form{

padding:10% 10% 10% 10%;

}

body{

background-image:url('appointment.jpg');
background-repeat:no-repeat;
background-size:cover;

}

input{
text-color:black;
color:black;
}
</style>
</html>