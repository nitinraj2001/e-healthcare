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

import mypack.entity.PatientBookAppointment;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class deleteappointmentServelt_doc
 */
@WebServlet("/deleteappointmentServelt_doc")
public class deleteappointmentServelt_doc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteappointmentServelt_doc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 response.setContentType("text/html");
			
		    PrintWriter out=response.getWriter();
		    
		    int patient_id=Integer.parseInt(request.getParameter("patient_id"));
		    
		    Session s=ConnectionProvider.getFactory().openSession();
		    
		    Transaction t=s.beginTransaction();
		    
		    PatientBookAppointment user=(PatientBookAppointment)s.get(PatientBookAppointment.class, patient_id);
		    
		    s.delete(user);
		    
		    t.commit();
		    
		    
		    
		    out.println("<h1 align='center'>Welcome to the delete page</h1>");
		    
		    response.sendRedirect("viewAppointmentbyDoctor.jsp");
			
			
			s.close();
			
			
		}
	}


