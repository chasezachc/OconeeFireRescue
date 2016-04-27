package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbHelpers.ReadQuery;
import dbHelpers.VerifyQ;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet(
		description = "This servlet takes the values entered in the form on the index JSP and checks them with the values stored in the DB. It then either routes the user to the tables (successful login) or back to the index (unsuccessful login).", 
		urlPatterns = { 
				"/loginServlet", 
				"/login"
		})
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Store the email and password passed in from login (index.jsp) as variables to be used to check validity.
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		String hashedpwd = String.valueOf(password.hashCode());
		
		//Create a VerifyQ helper object
		VerifyQ vq = new VerifyQ("FireRescueDB","root","Trumpet");
		
		//Call doRead while passing in the submitted email/password.
		vq.doRead(email, hashedpwd);
		
		//Returns true or false on whether login info is correct.
		boolean correctLogin = vq.getResults();
		
		//NEED TO FINISH THIS. REROUTE TO READSERVLET OR INDEX.JSP.
		//REALLY
		//FINISH THIS
		if(correctLogin){
			RequestDispatcher rd = request.getRequestDispatcher("ReadServlet");
			rd.forward(request,response);
		} else {
			String url = "/index.jsp";
			
			RequestDispatcher d = request.getRequestDispatcher(url);
			
			d.forward(request, response);
		}
		
		
		
	}

}
