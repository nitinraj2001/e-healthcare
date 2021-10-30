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
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;

import mypack.entity.DoctorHealthCareLogin;
import mypack.entity.UserHealthCare;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class Doctor_SignUpServlet
 */
@WebServlet("/Doctor_SignUpServlet")
public class Doctor_SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctor_SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		String email1="";
		

				PrintWriter out=response.getWriter();
				
				String doctorname=request.getParameter("name");
				
				String doctoremail=request.getParameter("email");
				
				String doctorpassword=request.getParameter("password");
				
				DoctorHealthCareLogin doctor=new DoctorHealthCareLogin();
				
				doctor.setDoctor_name(doctorname);
				
				doctor.setDoctor_email(doctoremail);
				
				doctor.setDoctor_password(doctorpassword);
				
				
				Session session=ConnectionProvider.getFactory().openSession();
				
				Criteria c= session.createCriteria(DoctorHealthCareLogin.class);
				
				Projection p=Projections.property("doctor_email");
				
				c.setProjection(p);
				
				List<String> list=c.list();
				
				for(String uemail:list) {
					
					if(doctoremail.equalsIgnoreCase(uemail)) {
							
							out.println("<h2 align='center'>This email_Id already exist please login with your correct credentials</h2>");
						
				            RequestDispatcher rd=request.getRequestDispatcher("DoctorLogin.jsp");
							
							rd.include(request, response);
							
							 email1=uemail;
							 
							 break;
							
							
						}
					
				}
					
					if(!email1.equalsIgnoreCase(doctoremail)) {

			
				int status=ConnectionProvider.doctorregister(doctor);
				
				System.out.println(status);
				
				if(status>0) {
					
					RequestDispatcher rd=request.getRequestDispatcher("doctorFunctionality.jsp");
					
					rd.forward(request, response);
					
					
				}
				
				
				
				
					}
		
	}

}
