package Project_demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateName")
public class UpdateName extends HttpServlet {
       
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String number= request.getParameter("number");
		int status=0;
try
{
			
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java_data", "root", "root");
		PreparedStatement ps=con.prepareStatement("update jsp set name=?,email=? where number=?");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, number);
		status=ps.executeUpdate();
		if(status>0)
		{
			out.print("<h1>Records save Sucessfully</h1>");
			request.getRequestDispatcher("home.html").include(request, response);
			
		}
		else
		{
			out.print("<h1> Sorry! unable to save Records  </h1>");
			request.getRequestDispatcher("UpdateName.html").include(request, response);
		}
}
catch(Exception e)
{
	out.print(e);
}
	
		
		
	}

}
