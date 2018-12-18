package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class toTicket
 */
@WebServlet("/toTicket")
public class toTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String MEMBER_ID =  request.getParameter("MEMBER_ID") ;
		
		int SCREEN_NUMBER = Integer.parseInt(request.getParameter("SCREEN_NUMBER"));
		int SEAT_NUMBER = Integer.parseInt(request.getParameter("SEAT_NUMBER").replaceAll(" ", ""));
		String SCREEN_DATE =  request.getParameter("SCREEN_DATE") ;
		String MOVIE_IMG_URL =  request.getParameter("MOVIE_IMG_URL") ;
		

		int result = new AdminDAO().UPDATE_BIT_MAP(SEAT_NUMBER, SCREEN_NUMBER, SCREEN_DATE);

		if(result == 1) {

			new AdminDAO().setTicket(MEMBER_ID,SCREEN_NUMBER,SEAT_NUMBER,SCREEN_DATE);
			response.sendRedirect("./a_myTicket.jsp");
		}
	}

}
