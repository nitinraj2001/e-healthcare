package mypack.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoctorLogSecurity
 */
@WebServlet("/DoctorLogSecurity")
public class DoctorLogSecurity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorLogSecurity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
		String Doctor_sec=request.getParameter("security");
		
		PrintWriter out=response.getWriter();
		
		if(Doctor_sec.equalsIgnoreCase("doctor@health")) {
			
			
			RequestDispatcher rd1=request.getRequestDispatcher("DoctorLogin.jsp");
			
			rd1.forward(request, response);
	}
         
		else {
			
			out.println("<h2 align='center'>Invalid doctor security code,authentication failed. please enter correct credential</h2>");
			
			RequestDispatcher rd2=request.getRequestDispatcher("Security.jsp");
			
			rd2.include(request, response);
		
		}
	
		
		
	}

}
