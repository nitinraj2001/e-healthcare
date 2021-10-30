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

import mypack.entity.UserHealthCare;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class delete_userServlet
 */
@WebServlet("/delete_userServlet")
public class delete_userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete_userServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		
	    PrintWriter out=response.getWriter();
	    
	    int user_id=Integer.parseInt(request.getParameter("user_id"));
	    
	    Session s=ConnectionProvider.getFactory().openSession();
	    
	    Transaction t=s.beginTransaction();
	    
	    UserHealthCare user=(UserHealthCare)s.get(UserHealthCare.class, user_id);
	    
	    s.delete(user);
	    
	    t.commit();
	    
	    
	    
	    out.println("<h1 align='center'>Welcome to the delete page</h1>");
	    
	    response.sendRedirect("AdminViewUser.jsp");
		
		
		s.close();
		
		
	}

}
