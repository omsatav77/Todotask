package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registration1")
public class registration1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		try {
			Connection con = Connect.GetConn();

			String fname = request.getParameter("name1");
			String lname = request.getParameter("lname");
			String email1 = request.getParameter("email");
			String gendar = request.getParameter("radio");
			String pass = request.getParameter("password");
			String DateOfBirth = request.getParameter("date1");
			
			System.out.println("Date of birth: "+DateOfBirth);
			
			Date date = new Date();  
		    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
		    String strDate= formatter.format(date); 
		    
		    System.out.println("formatted date"+strDate); 
		    
		    System.out.println(DateOfBirth.substring(0,DateOfBirth.indexOf('-')));
		    
		    System.out.println(strDate.substring(0,strDate.indexOf('-')));
			
			if(Integer.parseInt(strDate.substring(0,strDate.indexOf('-')))-
					Integer.parseInt(DateOfBirth.substring(0,DateOfBirth.indexOf('-')))>18)
			{
				

			String INSERT_USERS_SQL = "INSERT INTO registration"
					+ "  (fname, lname, email1, gendar, pass,DateOfBirth,curdate) VALUES " + " (?,?,?,?,?,?,?);";

			PreparedStatement preparedStatement = con.prepareStatement(INSERT_USERS_SQL);
			preparedStatement.setString(1, fname);
			preparedStatement.setString(2, lname);
			preparedStatement.setString(3, email1);
			preparedStatement.setString(4, gendar);
			preparedStatement.setString(5, pass);
			preparedStatement.setString(6, DateOfBirth);
			Statement stm2 = con.createStatement();
			ResultSet rs2 = stm2.executeQuery("select curdate()");

			while (rs2.next()) {
//				System.out.println(rs2.getDate(1));
				Date d = rs2.getDate(1);
				preparedStatement.setDate(7, (java.sql.Date) d);
			}

			int result = preparedStatement.executeUpdate();
			if (result > 0) {

				response.sendRedirect("index.html");
			} else
				response.sendRedirect("SignUpUnsuccessful.html");

			// out.println("working");

			}
			else {
				response.sendRedirect("SignUpUnsuccessful.html");
				System.out.println("user is not older then 18 ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
