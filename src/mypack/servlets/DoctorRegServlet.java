package mypack.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mypack.entity.DoctorRegistration;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class DoctorRegServlet
 */
@WebServlet("/DoctorRegServlet")
public class DoctorRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorRegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out=response.getWriter();
		
		
		String doctor_name=request.getParameter("doctor_name");
		
		String doctor_email=request.getParameter("email");
		
		String doctor_password=request.getParameter("password");
		
		String doctor_resetpass=request.getParameter("password-repeat");
		
		String doctor_gender=request.getParameter("doctor_gender");
		
		
		
		String doctor_department=request.getParameter("doctor_department");
		
		String doctor_degree=request.getParameter("doctor_degree");
		
		int doctor_age=Integer.parseInt(request.getParameter("doctor_age"));
		
		String doctor_contact=request.getParameter("doctor_contact");
		
		
		DoctorRegistration doc_reg=new DoctorRegistration();
		
		doc_reg.setDoctor_name(doctor_name);
		
		doc_reg.setDoctor_age(doctor_age);
		
		doc_reg.setDoctor_contactno(doctor_contact);
		
		doc_reg.setDoctor_degree(doctor_degree);
		
		
	
		
		doc_reg.setDoctor_password(doctor_password);
		
		doc_reg.setDoctor_resetpassword(doctor_resetpass);
		
		doc_reg.setDoctor_email(doctor_email);
		
		doc_reg.setDoctor_gender(doctor_gender);
		
		doc_reg.setDoctor_department(doctor_department);
		
		int status=ConnectionProvider.Doctorregister(doc_reg);
		
		HttpSession hs=request.getSession();
		
		hs.setAttribute("name",doctor_name );
		
		if(status>0) {
			
		
		
	RequestDispatcher rd=request.getRequestDispatcher("ViewdoctorProfile.jsp");
			
			rd.include(request, response);
			
			out.println("<h2 align='center'> You have successfully Registered</h2>");
			
		
			
			
		
			
			
		}
		
	}

}
