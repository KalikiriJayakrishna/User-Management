<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.DriverManager" %>
     <%@ page import="java.sql.	Connection" %>
     <%@ page import="java.sql.PreparedStatement" %>
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
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String number=request.getParameter("number");
out.print("Welcome"+name);
out.print(email);
out.print(number);

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/java_data","root","root");
	PreparedStatement ps=con.prepareStatement(" insert into  jsp  values(?,?,?);");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, number);
	ps.executeUpdate();
		
}
catch(Exception e)
{
	

}

%>

<center>
<table border="2px" solid black border-collapse: collapse  id="lk">
    <thead>
        <th>Name</th>
        <Th>Email</Th>
        <Th>Number</Th>
        <Th> Update</Th>
         <Th> Delete</Th>
          <Th> Display</Th>
    </thead>
    <tbody>
        <tr>
            <td><%= name %></td>
            <td><%= email %></td>
            <td><%= number %></td>
          <td> <a href="UpdateName.html" ><h1 id="log"><button>UPDATE</button></h1></a></td>
          <td><a href="DeleteName.html"><h1 id="log1"><button>DELETE</button></h1></a></td>
          <td><a href="display.jsp"><h1 id="log2"><button>DISPLAY</button></h1></a></td>
           </tr>
       
      
    </tbody>
   </table>
   </center>
   </div>
  </div>
</body>
</html>