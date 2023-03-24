<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<style>
	h2{text-align: center; color: darkblue}
	body{margin:100px;}
	p{color:red; font-size: 24px;}
	li{font-size:20px;}
	
	</style>
</head>

<body>

<h2>Welcome ${parentName} !!!</h2>
<p>Your Registration details are as follows:</p>

<ul>
	<li>Child Name: ${childName}</li>
	<li>Date of Birth: ${childDOB}</li>
	<li>Email Address: ${parentEmail}</li>
	<li>Phone: ${parentPhoneNo}</li>
</ul>


<p>Medical Information</p>
<ul>
<li>Physician Name: ${physicianName}</li>
<li>Phone Number: ${physicianPhoneNo}</li>
</ul>


<p>Uniform Details</p>
<ul>
	<li>No of Shirts: ${noOfShirt}</li>
	<li>No of Shorts: ${noOfShort}</li>
	<li>Total: ${total}</li>
</ul>


<h2>Your training session will start soon!!! </h2>



</body>
</html>