package mypack.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;

import mypack.entity.AdminHealthCareLogin;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class Admin_SignInServlet
 */
@WebServlet("/Admin_SignInServlet")
public class Admin_SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_SignInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  response.setContentType("text/html");
			
			PrintWriter out=response.getWriter();
			
			String email="";
			
			String password1="";

			
			String adminemail=request.getParameter("email");
			
			String adminpassword=request.getParameter("password");
			
			Session session=ConnectionProvider.getFactory().openSession();
			
			Query q=session.createQuery("from AdminHealthCareLogin");
			
			List<AdminHealthCareLogin> list1=q.list();
			
			for(AdminHealthCareLogin admin:list1) {
				
				if(adminemail.equalsIgnoreCase(admin.getAdmin_email())) {
					
					if(adminpassword.equalsIgnoreCase(admin.getAdmin_password())) {
					
				
					RequestDispatcher rd1=request.getRequestDispatcher("adminFunctionality.jsp");
					
					rd1.forward(request, response);
					
					
					
				
					
						 email=admin.getAdmin_email();
						 
						 break;
						
					}
					}
				
			}
				
				if(!email.equalsIgnoreCase(adminemail)) {

		out.println("<h2 align='center'>Sorry! invalid userEmail or password please signin with your correct credentials</h2>");
				
				RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
				
				rd.include(request, response);
				
				
			}
		
		
	}

}
