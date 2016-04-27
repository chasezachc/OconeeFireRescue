package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbHelpers.ReadQ;

/**
 * Servlet implementation class ReadServlet
 */
@WebServlet(
		name = "ReadHomeServlet", 
		description = "This servlet reads the DB to create and return two strings of HTML code that will create a table on the Home.jsp page and create an options dropdown", 
		urlPatterns = { 
				"/ReadHomeServlet", 
				"/HomeTable"
		})
public class ReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadServlet() {
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
		
		//Creates a ReadQ object that is connected to the FireRescueDB.
		ReadQ rq = new ReadQ("FireRescueDB","root","Trumpet");
		
		//Get the two ResultSets that will be used to create the table and options dropdown.
		rq.doReadPerson();
		rq.doReadCert();
		
		//Create strings of HTML code
		String resultTable = rq.getHTMLTable();
		String resultOption = rq.getHTMLOptions();
		
		//Pass execution control to Home.jsp along with HTML code
		request.setAttribute("resultTable", resultTable);
		request.setAttribute("resultOption", resultOption);
		String url = "/home.jsp";
		RequestDispatcher d = request.getRequestDispatcher(url);
		d.forward(request, response);
		
	}

}
