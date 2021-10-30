package mypack.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;

import mypack.entity.DoctorHealthCareLogin;
import mypack.entity.UserHealthCare;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class Doctor_SignInServlet
 */
@WebServlet("/Doctor_SignInServlet")
public class Doctor_SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctor_SignInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		  response.setContentType("text/html");
			
			PrintWriter out=response.getWriter();
			
			String email="";
			
			String password1="";

			String doctorname=request.getParameter("name"); 

			String doctoremail=request.getParameter("email");
			
            
			
			String doctorpassword=request.getParameter("password");
			
			
			Session session=ConnectionProvider.getFactory().openSession();
			
			Query q=session.createQuery("from DoctorHealthCareLogin");
			
			List<DoctorHealthCareLogin> list=q.list();
			
			for(DoctorHealthCareLogin user:list) {
				
				if(doctoremail.equalsIgnoreCase(user.getDoctor_email())) {
					
					if(doctorpassword.equalsIgnoreCase(user.getDoctor_password())) {
					
				
					RequestDispatcher rd1=request.getRequestDispatcher("doctorFunctionality.jsp");
					
					rd1.forward(request, response);
					
					
					
				
					
						 email=user.getDoctor_email();
						 
						 break;
						
					}
					}
				
			}
				
				if(!email.equalsIgnoreCase(doctoremail)) {

		out.println("<h2 align='center'>Sorry! invalid userEmail or password please signin with your correct credentials</h2>");
				
				RequestDispatcher rd=request.getRequestDispatcher("DoctorLogin.jsp");
				
				rd.include(request, response);
				
				
			}
			
			
			
			
			
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
