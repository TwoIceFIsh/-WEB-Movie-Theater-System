package movie;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;

@WebServlet("/MovieGetServlet")
public class MovieGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String MOVIE_NAME = request.getParameter("MOVIE_NAME");


		if(MOVIE_NAME == null || MOVIE_NAME.equals("")  ) {

			return;

		}
		 
		int result = new MovieDAO().findMovie(MOVIE_NAME);

		if(result == 1) {

			request.getSession().setAttribute("MOVIE_NAME", MOVIE_NAME); 
			response.sendRedirect("./a_getMovie.jsp");

			return;

		}

		return;
	}

}
