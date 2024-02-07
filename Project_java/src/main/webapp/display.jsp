<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.DriverManager" %>
     <%@ page import="java.sql.	Connection" %>
     <%@ page import="java.sql.PreparedStatement" %>
     <%@ page import=" java.sql.Statement"%>
     <%@ page import=" java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./jaya.css">
</head>
<body>
<div id="jk" >
<div align="center" id="lk">
<h1><marquee  behavior="" direction="left"><h1>Display Table...................................!.</h1></marquee></h1>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String number=request.getParameter("number");



	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/java_data","root","root");
	Statement st=con.createStatement();
	   
	    
	    ResultSet rs=st.executeQuery("select * from jsp");
	   out.print(" <center> ");
	    out.print("<table width=55% border=1>");
	    out.print("<tr><Th> Name </Th> <Th> Email </Th> <Th> Number</Th></tr>");
	    while(rs.next())
	    {
	    	out.println("<tr><td>" + rs.getString(1)+ "</td><td>"+rs.getString(2)+ "</td><td>"+rs.getString(3)+ "</td></tr>");
	    }
	    out.print("</table>");
	    out.print(" </center> ");

	 
%>

<center>
            <a href="jaya_loginjsp.jsp"><h1 id="log2">Login page</h1></a>
             <a href="login1.jsp"><h1 id="log2"> User Details</h1></a>
   </center>
   </div>
  </div>

</body>
</html>