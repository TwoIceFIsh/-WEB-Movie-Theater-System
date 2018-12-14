package movie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;

/**
 * Servlet implementation class MoviePonitCheckServlet
 */
@WebServlet("/MoviePonitCheckServlet")
public class MoviePonitCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String MEMBER_ID = request.getParameter("MEMBER_ID");
		String MOVIE_NAME = request.getParameter("MOVIE_NAME");

		if(MEMBER_ID == null || MEMBER_ID.equals("")  ) {

			return;

		} 
		String result = new MovieDAO().getPoint(MEMBER_ID, MOVIE_NAME);


	   response.getWriter().write(result+"");

		return;
	}
 

}
