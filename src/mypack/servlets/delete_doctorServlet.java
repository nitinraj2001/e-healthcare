package mypack.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import mypack.entity.DoctorRegistration;
import mypack.entity.UserHealthCare;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class delete_doctorServlet
 */
@WebServlet("/delete_doctorServlet")
public class delete_doctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete_doctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
	    PrintWriter out=response.getWriter();
	    
	    int doctor_id=Integer.parseInt(request.getParameter("doctor_id"));
	    
	    Session s=ConnectionProvider.getFactory().openSession();
	    
	    Transaction t=s.beginTransaction();
	    
	    DoctorRegistration doctor=(DoctorRegistration)s.get(DoctorRegistration.class, doctor_id);
	    
	    s.delete(doctor);
	    
	    t.commit();
	    
	    
	    
	    out.println("<h1 align='center'>Welcome to the delete page</h1>");
	    
	    response.sendRedirect("ViewDoctorsDetails.jsp");
		
		
		s.close();
		
		
		
		
	}

}
