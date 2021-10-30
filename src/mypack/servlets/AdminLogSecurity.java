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
 * Servlet implementation class AdminLogSecurity
 */
@WebServlet("/AdminLogSecurity")
public class AdminLogSecurity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogSecurity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");

PrintWriter out=response.getWriter();
		
		String Admin_sec=request.getParameter("security");
		
		if(Admin_sec.equalsIgnoreCase("admin@health")) {
			
			
			RequestDispatcher rd1=request.getRequestDispatcher("AdminLogin.jsp");
			
			rd1.forward(request, response);
	}
		
		
		
	else {
			
			out.println("<h2 align='center'>Invalid doctor security code,authentication failed. please enter correct credential</h2>");
			
			RequestDispatcher rd2=request.getRequestDispatcher("Security.jsp");
			
			rd2.include(request, response);
		
		}
	
		
		
		
		
		
	}

}
