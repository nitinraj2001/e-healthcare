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
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class Doc_UpdateServlet
 */
@WebServlet("/Doc_UpdateServlet")
public class Doc_UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doc_UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		int doctor_id=Integer.parseInt(request.getParameter("doctor_id"));
		
		String degree=request.getParameter("doctor_degree");
		
		String contact=request.getParameter("doctor_contact");
		
		Session s=ConnectionProvider.getFactory().openSession();
		
		Transaction t=s.beginTransaction();
		
		DoctorRegistration doc=(DoctorRegistration)s.get(DoctorRegistration.class, doctor_id);
	
	
		
		doc.setDoctor_contactno(contact);
		
		doc.setDoctor_degree(degree);
		
		s.merge(doc);
		
		t.commit();
		
		s.close();
		
		response.sendRedirect("doc_list_viewbydoc.jsp");
		
		
	}

}
