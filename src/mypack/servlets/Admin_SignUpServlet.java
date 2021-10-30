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

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;

import mypack.helper.ConnectionProvider;

import mypack.entity.*;

/**
 * Servlet implementation class Admin_SignUpServlet
 */
@WebServlet("/Admin_SignUpServlet")
public class Admin_SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
		String email1="";
		

				PrintWriter out=response.getWriter();
				
				String adminname=request.getParameter("name");
				
				String adminemail=request.getParameter("email");
				
				String adminpassword=request.getParameter("password");
				
				AdminHealthCareLogin admin=new AdminHealthCareLogin();
				
				admin.setAdmin_name(adminname);
				
				admin.setAdmin_email(adminemail);
				
				admin.setAdmin_password(adminpassword);
				
				
				
	Session session=ConnectionProvider.getFactory().openSession();
				
				Criteria c= session.createCriteria(AdminHealthCareLogin.class);
				
				Projection p=Projections.property("admin_email");
				
				c.setProjection(p);
				
				List<String> list=c.list();
				
				for(String uemail:list) {
					
					if(adminemail.equalsIgnoreCase(uemail)) {
							
							out.println("<h2 align='center'>This email_Id already exist please login with your correct credentials</h2>");
						
				            RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
							
							rd.include(request, response);
							
							 email1=uemail;
							 
							 break;
							
							
						}
					
				}
					
					if(!email1.equalsIgnoreCase(adminemail)) {

			
				int status=ConnectionProvider.adminregister(admin);
				
				System.out.println(status);
				
				if(status>0) {
					
					RequestDispatcher rd=request.getRequestDispatcher("adminFunctionality.jsp");
					
					rd.forward(request, response);
					
					
				}
				
				
				
				
					}
		
	}

}
