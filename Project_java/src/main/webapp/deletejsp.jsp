<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.DriverManager" %>
     <%@ page import="java.sql.	Connection" %>
     <%@ page import="java.sql.PreparedStatement" %>
     <%@ page import="java.sql.Statement" %>
        <%@ page import="java.util.*" %>
     
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
<h1><marquee  behavior="" direction="left"><h1>Delete Table...................................!</h1></marquee></h1>

<%

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_data", "root", "root");
Statement st=con.createStatement();
Scanner sc=new Scanner(System.in);
//System.out.println("enter the name: ");
//String name=sc.next();
//System.out.println("enter the Email: ");
//String email=sc.next();
System.out.println("enter the Number: ");
String number=sc.next();
PreparedStatement ps=con.prepareStatement("delete from jsp where number=?");
//ps.setString(1, name);
//ps.setString(2, email);
ps.setString(1, number);
ps.executeUpdate();

%>
<center>
            <a href="jaya_loginjsp.jsp"><h1 id="log2">Login page</h1></a>
           <a href="login1.jsp"><h1 id="log2"> User Details</h1></a>
   </center>
   </div>
   </div>
</body>
</html>