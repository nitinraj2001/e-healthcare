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

import mypack.helper.ConnectionProvider;

import mypack.entity.feedbackhealthcare;

/**
 * Servlet implementation class savefeedbackServlet
 */
@WebServlet("/savefeedbackServlet")
public class savefeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public savefeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
	
		String name=request.getParameter("name");
		
		String email_id=request.getParameter("email");
		
		String contact=request.getParameter("phone");
		
		String feedback=request.getParameter("feedback");
		
		feedbackhealthcare feed=new feedbackhealthcare(name,email_id,contact,feedback);
		
		
		Session session=ConnectionProvider.getFactory().openSession();
		
Transaction t=session.beginTransaction();
		
		session.save(feed);
		
		t.commit();
		
		session.close();
		
		
		
		out.println("<h1 style='text-align:center'>Successfully completed the update work</h1>");
		
		out.println("<h3 style='text-align:center'><a href='patientMainPage.jsp'>View All Reports Here</a></h3>");
		
		out.close();
		
		
	}

}
