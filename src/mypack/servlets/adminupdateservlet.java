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

import mypack.entity.*;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class adminupdateservlet
 */
@WebServlet("/adminupdateservlet")
public class adminupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminupdateservlet() {
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
		
		int admin_id=Integer.parseInt(request.getParameter("admin_id"));
		
		String admin_name=request.getParameter("admin_name");
		
		String admin_email=request.getParameter("email_id");
		
		Session s=ConnectionProvider.getFactory().openSession();
		
		Transaction t=s.beginTransaction();
		
		AdminHealthCareLogin doc=(AdminHealthCareLogin)s.get(AdminHealthCareLogin.class, admin_id);
	
	
		doc.setAdmin_id(admin_id);
		doc.setAdmin_email(admin_email);
		
		doc.setAdmin_name(admin_name);
		
		s.merge(doc);
		
		t.commit();
		
		s.close();
		
		response.sendRedirect("viewAdminProfile.jsp");
		
	}

}
