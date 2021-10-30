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

import mypack.entity.ReportEntity;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class deletereportServlet
 */
@WebServlet("/deletereportServlet")
public class deletereportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletereportServlet() {
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
		
		PrintWriter out =response.getWriter();
		
		try {
			
			int patient_id=Integer.parseInt(request.getParameter("patient_id").trim());
			
			System.out.println("my name is nitin");
			
		
			
			Session s=ConnectionProvider.getFactory().openSession();
			
			Transaction t=s.beginTransaction();
			
			ReportEntity note=(ReportEntity)s.get(ReportEntity.class,patient_id);
			
		s.delete(note);
			
			
			t.commit();
			
			response.sendRedirect("viewReports.jsp");
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		out.println("<h1 align='center'>Welcome to the delete page</h1>");
		
		
		
		
		
		
	}

	
}
