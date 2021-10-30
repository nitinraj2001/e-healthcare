package mypack.servlets;

import java.io.IOException;

import java.io.PrintWriter;

import java.util.List;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;

import org.hibernate.Query;

import org.hibernate.Session;

import org.hibernate.criterion.Projection;

import org.hibernate.criterion.ProjectionList;

import org.hibernate.criterion.Projections;

import mypack.entity.UserHealthCare;

import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class SignInServlet
 */
@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SignInServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  response.setContentType("text/html");
			
			PrintWriter out=response.getWriter();
			
			String email="";
			
			String password1="";
			
			String username=request.getParameter("name");
			
			String useremail=request.getParameter("email");
			
			String password=request.getParameter("password");
			
			Session session=ConnectionProvider.getFactory().openSession();
			
			Query q=session.createQuery("from UserHealthCare");
			
			List<UserHealthCare> list=q.list();
			
			for(UserHealthCare user:list) {
				
				if(useremail.equalsIgnoreCase(user.getUseremail())) {
					
					if(password.equalsIgnoreCase(user.getPassword())) {
					
				
					RequestDispatcher rd1=request.getRequestDispatcher("information.jsp");
					
					rd1.forward(request, response);
					
					
					
				
					
						 email=user.getUseremail();
						 
						 break;
						
					}
					}
				
			}
				
				if(!email.equalsIgnoreCase(useremail)) {

		out.println("<h2 align='center'>Sorry! invalid userEmail or password please signin with your correct credentials</h2>");
				
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				
				rd.include(request, response);
				
				
			}
			
			
			
			
			
			
			
			
			
			
				}
			
			
	}

