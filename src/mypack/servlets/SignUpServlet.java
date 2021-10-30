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
import org.hibernate.criterion.Restrictions;

import mypack.entity.UserHealthCare;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SignUpServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
response.setContentType("text/html");
		
String email1="";

		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("name");
		
		String email=request.getParameter("email");
		
		String password=request.getParameter("password");
		
		UserHealthCare user=new UserHealthCare();
		
		user.setUsername(username);
		
		user.setUseremail(email);
		
		user.setPassword(password);
		
		
Session session=ConnectionProvider.getFactory().openSession();
		
		Criteria c= session.createCriteria(UserHealthCare.class);
		
		Projection p=Projections.property("useremail");
		
		c.setProjection(p);
		
		List<String> list=c.list();
		
		for(String uemail:list) {
			
			if(email.equalsIgnoreCase(uemail)) {
					
					out.println("<h2 align='center'>This email_Id already exist please login with your correct credentials</h2>");
				
		            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					
					rd.include(request, response);
					
					 email1=uemail;
					 
					 break;
					
					
				}
			
		}
			
			if(!email1.equalsIgnoreCase(email)) {

	
		int status=ConnectionProvider.userregister(user);
		
		System.out.println(status);
		
		if(status>0) {
			
			RequestDispatcher rd=request.getRequestDispatcher("information.jsp");
			
			rd.forward(request, response);
			
			
		}
		
		
		
		
				}
			
		}
	

	}
	



