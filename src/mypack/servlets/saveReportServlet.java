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
 * Servlet implementation class saveReportServlet
 */
@WebServlet("/saveReportServlet")
public class saveReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public saveReportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		String Name=request.getParameter("Name");
		
		String report=request.getParameter("report");
		
		
		ReportEntity note=new ReportEntity(Name,report,new Date());
		
		
		Session session=ConnectionProvider.getFactory().openSession();
		
		Transaction t=session.beginTransaction();
		
		session.save(note);
		
		t.commit();
		
		session.close();
		
		
		
		out.println("<h1 style='text-align:center'>Successfully completed the update work</h1>");
		
		out.println("<h3 style='text-align:center'><a href='viewReports.jsp'>View All Reports Here</a></h3>");
		
		out.close();
		
		
		
	}

}
