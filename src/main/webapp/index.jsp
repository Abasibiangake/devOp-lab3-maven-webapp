<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Soccer Registration Form</title>

	<style>
	h1{text-align: center; font-size: 35px;}
	body{margin:100px;}
	span{color:red;}
	
	</style> 

</head>
<body>
<form action = "welcome" method="post">
	<h1>Soccer Registration</h1>
	<h2>CHILD INFORMATION</h2>
	<p> Child Name :
	<span>*</span>
	<input type="text" name="childfirstName" required/>
	<input type="text" name="childlastName" required/> </p>
	
	<label for="birthDate">Birth Date <span>*</span></label>

	<select name="birthMonth" id="birthMonth" required>
	  <option selected value='1'>January</option>
	    <option value='2'>February</option>
	    <option value='3'>March</option>
	    <option value='4'>April</option>
	    <option value='5'>May</option>
	    <option value='6'>June</option>
	    <option value='7'>July</option>
	    <option value='8'>August</option>
	    <option value='9'>September</option>
	    <option value='10'>October</option>
	    <option value='11'>November</option>
	    <option value='12'>December</option>
	</select>
	
	<select name="birthDay" id="birthDay">
	  <option selected value='1'>1</option>
	    <option value='2'>2</option>
	    <option value='3'>3</option>
	    <option value='4'>4</option>
	    <option value='5'>5</option>
	    <option value='6'>6</option>
	    <option value='7'>7</option>
	    <option value='8'>8</option>
	    <option value='9'>9</option>
	    <option value='10'>10</option>
	    <option value='11'>11</option>
	    <option value='12'>12</option>
	    <option value='13'>13</option>
	    <option value='14'>14</option>
	    <option value='15'>15</option>
	    <option value='16'>16</option>
	    <option value='17'>17</option>
	    <option value='18'>18</option>
	    <option value='19'>19</option>
	    <option value='20'>20</option>
	    <option value='21'>21</option>
	    <option value='22'>22</option>
	    <option value='23'>23</option>
	    <option value='24'>24</option>
	    <option value='25'>25</option>
	    <option value='26'>26</option>
	    <option value='27'>27</option>
	    <option value='28'>28</option>
	    <option value='29'>29</option>
	    <option value='30'>30</option>
   	    <option value='31'>31</option>
	</select>
	<select name="birthYear" id="birthYear">
	    <option selected value='1990'>1990</option>
	    <option value='1991'>1991</option>
	    <option value='1992'>1992</option>
	    <option value='1993'>1993</option>
	    <option value='1994'>1994</option>
	    <option value='1995'>1995</option>
	    <option value='1996'>1996</option>
	    <option value='1997'>1997</option>
	    <option value='1998'>1998</option>
	    <option value='1999'>1999</option>
	    <option value='2000'>2000</option>
	    <option value='2011'>2011</option>
	    <option value='2012'>2012</option>
	    <option value='2013'>2013</option>
	    <option value='2014'>2014</option>
	    <option value='2015'>2015</option>
	    <option value='2016'>2016</option>
	    <option value='2017'>2017</option>
	    <option value='2018'>2018</option>
	    <option value='2019'>2019</option>
	    <option value='2020'>2020</option>
	    <option value='2021'>2021</option>
   	    <option value='2022'>2022</option>
	</select>
	
	<br></br>
	
	<h2>PARENT/GUARDIAN INFORMATION</h2>

	<p> Parent/Guardian Name :
	<span>*</span>
	<input type="text" name="parentfirstName" placeholder= "Enter First Name" required/>
	<input type="text" name="parentlastName" placeholder= "Enter Last Name" required/> </p>
	
	<p> Address :
	<span>*</span>
	<input type="text" name="streetAddress" placeholder= "Enter Street Address" required/>
	<br></br>
	<input type="text" name="city" placeholder= "Enter City Name" required/>
	<input type="text" name="stateProvince" placeholder= "Enter State/Province" required/> 
	<br></br>
	<input type="text" name="postcode" placeholder= "Enter Postal/Zip Code" required/>
	<select required name="country" id="country">
	  <option selected value='1'>Please Select</option>
	    <option value='Canada'>Canada</option>
	    <option value='USA'>USA</option>
	    <option value='India'>India</option>
	    <option value='Nigeria'>Nigeria</option>
	    <option value='United Kingdom'>United Kingdom</option>
	    <option value='Australia'>Australia</option>
	    <option value='Angola'>Angola</option>
	    <option value='Morocco'>Morocco</option>
	    <option value='Germany'>Germany</option>
	    <option value='Korea'>Korea</option>
	    <option value='Egypt'>Egypt</option>
	</select>
	</p>
	
	<p> Phone Number :
	<span>*</span>
	<input type="number" name="parentAreaCode" placeholder= "Enter Area Code" required/>
	<input type="number" name="parentPhoneNumber" placeholder= "Enter Phone Number" required/> </p>
	
	<p> E-mail :
	<span>*</span>
	<input type="email" name="parentEmail" placeholder= "Enter Email Address" required/> </p>
	
	
	<br></br>
	<h2>UNIFORM INFORMATION</h2>
	<label for="shirtSize">Youth Shirt</label>
	<select name="shirtSize" id="shirtSize">
	  <option selected value='1'>Please select size</option>
	    <option value='2'>XSmall</option>
	    <option value='3'>Small</option>
	    <option value='4'>Medium</option>
	    <option value='5'>Large</option>
	</select>
	
	<label for="shortSize">Youth Short</label>
	<select name="shortSize" id="shortSize">
	  <option selected value='1'>Please select size</option>
	    <option value='2'>XSmall</option>
	    <option value='3'>Small</option>
	    <option value='4'>Medium</option>
	    <option value='5'>Large</option>
	</select>
	
	<br></br>
	<label for="shirtQuantity">Quantity</label>
	<select name="shirtQuantity" id="shirtQuantity">
	  <option selected value='1'>1</option>
	    <option value='2'>2</option>
	    <option value='3'>3</option>
	    <option value='4'>4</option>
	</select>
	
	<label for="shortQuantity">Quantity</label>
	<select name="shortQuantity" id="shortQuantity">
	  <option selected value='1'>1</option>
	    <option value='2'>2</option>
	    <option value='3'>3</option>
	    <option value='4'>4</option>
	</select>
	
	<br></br>
	<h2>MEDICAL INFORMATION</h2>
	<p> Physician Name:
	<input type="text" name="physicianFirstName" placeholder= "Enter First Name"/>
	<input type="text" name="physicianLastName" placeholder= "Enter Last Name"/> </p>
	
	<p> Phone Number:
	<input type="number" name="areaCode" placeholder= "Enter Area Code"/>
	<input type="number" name="physicianPhoneNumber" placeholder= "Enter Phone Number"/> </p>
	
	<input style="background-color:green; color:white; font-size:20px; width:100px; height:50px;" type="submit"
	 value="Submit"/>
	 <input type="reset" style="background-color:green; color:white; font-size:20px; width:100px; height:50px;" type="submit"
	 value="Clear"/>

</form>

</body>
</html>