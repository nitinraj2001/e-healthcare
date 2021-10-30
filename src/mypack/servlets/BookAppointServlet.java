package mypack.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypack.entity.PatientBookAppointment;
import mypack.helper.ConnectionProvider;

/**
 * Servlet implementation class BookAppointServlet
 */
@WebServlet("/BookAppointServlet")
public class BookAppointServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookAppointServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		 String pat_name=request.getParameter("name");
			
		 int pat_age=Integer.parseInt(request.getParameter("age"));
			
		 String patient_email=request.getParameter("email");
			
		 String pat_contact=request.getParameter("contact");
			
		 String pat_gender=request.getParameter("gender");
			
		  String pat_doc_select=request.getParameter("doc_name");
			
		  String pat_med_history=request.getParameter("med_his");
			 
		 String purpose_appoint=request.getParameter("purpose");
			
		  String appoint_before=request.getParameter("appoint");
			
		   String appoint_day=request.getParameter("appoint_day");
			
		  String appoint_slot=request.getParameter("appoint_slot");
			
		   String doc_visit=request.getParameter("vi");
			
		   String home_visit=request.getParameter("home_vi");
			
		  String covid_status=request.getParameter("co");
		  
		  String quantanine_status=request.getParameter("hq");
		  
		  PatientBookAppointment patient=new PatientBookAppointment();
		  
		  patient.setPat_name(pat_name);
		  
		  patient.setPat_age(pat_age);
		  
		  patient.setPat_email(patient_email);
		  
		  patient.setPat_contact(pat_contact);
		  
		  patient.setPat_gender(pat_gender);
		  
		  patient.setPat_doc_select(pat_doc_select);
		  
		  patient.setPat_med_history(pat_med_history);
		  
		  patient.setPurpose_appoint(purpose_appoint);
		  
		  patient.setAppoint_before(appoint_before);
		  
		  patient.setAppoint_day(appoint_day);
		  
		  patient.setAppoint_slot(appoint_slot);
		  
		  patient.setDoc_visit(doc_visit);
		  
		  patient.setHome_visit(home_visit);
		  
		  patient.setCovid_status(covid_status);
		  
		  patient.setQuantanine_status(quantanine_status);
		  
		int status=ConnectionProvider.patientregister(patient);
		
		
		
		if(home_visit.equalsIgnoreCase("yes")) {
			
			response.sendRedirect("bookAmbulance.jsp");
			
		}
		else if(status>0) {
			
			response.sendRedirect("viewappointment.jsp");
		}
		
		else {
			
			response.sendRedirect("patientregister.jsp");
		}
		
	}

}
