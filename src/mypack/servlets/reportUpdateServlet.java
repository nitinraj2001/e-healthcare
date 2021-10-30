package mypack.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

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
 * Servlet implementation class reportUpdateServlet
 */
@WebServlet("/reportUpdateServlet")
public class reportUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reportUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
response.setContentType("text/html");
		
		PrintWriter out =response.getWriter();
		
		int user_id=Integer.parseInt(request.getParameter("patient_id"));
		
		String title=request.getParameter("title");
		
		String content= request.getParameter("content");
		
Session session=ConnectionProvider.getFactory().openSession();
		
		Transaction t=session.beginTransaction();
		
		ReportEntity note=session.get(ReportEntity.class, user_id);
		
		note.setName(title);
		
		note.setReport(content);
		
		note.setAddedDate(new Date());
		
		t.commit();
		
		session.close();
		
		
		response.sendRedirect("viewReports.jsp");
		
		
		
		
		
		
		
		
		
		
		
	}

}
