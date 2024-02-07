<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="./jaya.css">
</head>
<body>
<div id="jk">
<div align="center" id="lk">
    <h1>Registration Form</h1>
  
    <form action="jaya_loginjsp.jsp" width="200px" id="kj">
       <center> 
          
            <label for="">UserName</label>
            <input type="text" name="name" id="" placeholder="Enter the name " required id="in" >
            <br><br>
            <label for="">Email</label>
            <input type="email" name="email" id="" placeholder="Enter the Email" required id="in" >
            <br><br>
            <label for="">Phone Number</label>
            <input type="number" name="number" id="" required id="in" >
           
            <br><br>
             <label for="">Password</label>
            <input type="password" name="password" id="" required id="in" >
           
            <br><br>
            <input type="submit" value="Register" id="reg" >
     
    </center>
    </form>
     </div>
     </div>
   
</body>
</html>