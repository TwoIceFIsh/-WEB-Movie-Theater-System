package movie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MovieRegistServlet")
class MovieRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");


		String MOVIE_NAME = request.getParameter("MOVIE_NAME");
		String MOVIE_INFO = request.getParameter("MOVIE_INFO");
		String PLAY_TIME = request.getParameter("PLAY_TIME");
		String MOVIE_IMG_URL = request.getParameter("MOVIE_IMG_URL");
		String MOVIE_COST = request.getParameter("MOVIE_COST");
		String MOVIE_PEOPLE1 = request.getParameter("MOVIE_PEOPLE1");
		String MOVIE_PEOPLE2 = request.getParameter("MOVIE_PEOPLE2");
		String MOVIE_PEOPLE3 = request.getParameter("MOVIE_PEOPLE3");
		String MOVIE_SCENE1 = request.getParameter("MOVIE_SCENE1");
		String MOVIE_SCENE2 = request.getParameter("MOVIE_SCENE2");
		String MOVIE_SCENE3 = request.getParameter("MOVIE_SCENE3");
		String MOVIE_PEOPLE1_URL = request.getParameter("MOVIE_PEOPLE1_URL");
		String MOVIE_PEOPLE2_URL = request.getParameter("MOVIE_PEOPLE2_URL");
		String MOVIE_PEOPLE3_URL = request.getParameter("MOVIE_PEOPLE3_URL");
		String MOVIE_SCENE1_URL = request.getParameter("MOVIE_SCENE1_URL");
		String MOVIE_SCENE2_URL = request.getParameter("MOVIE_SCENE2_URL");
		String MOVIE_SCENE3_URL = request.getParameter("MOVIE_SCENE3_URL");
		String MOVIE_SCENE1_INFO = request.getParameter("MOVIE_SCENE1_INFO");
		String MOVIE_SCENE2_INFO = request.getParameter("MOVIE_SCENE2_INFO");
		String MOVIE_SCENE3_INFO = request.getParameter("MOVIE_SCENE4_INFO");
		String MOVIE_PEOPLE1_INFO = request.getParameter("MOVIE_PEOPLE1_INFO");
		String MOVIE_PEOPLE2_INFO = request.getParameter("MOVIE_PEOPLE2_INFO");
		String MOVIE_PEOPLE3_INFO = request.getParameter("MOVIE_PEOPLE3_INFO");

		if(MOVIE_NAME == null || MOVIE_NAME.equals(""))
					{	 
			response.getWriter().write(-1+"");
			return;
		}
 


		 


		//ask query
		int result = new MovieDAO().setMOVIE_INFO(MOVIE_NAME, MOVIE_INFO, Integer.parseInt(PLAY_TIME), MOVIE_IMG_URL, Integer.parseInt(MOVIE_COST), MOVIE_PEOPLE1, MOVIE_PEOPLE2, MOVIE_PEOPLE3, MOVIE_PEOPLE1_INFO, MOVIE_PEOPLE2_INFO, MOVIE_PEOPLE3_INFO, MOVIE_PEOPLE1_URL, MOVIE_PEOPLE2_URL, MOVIE_PEOPLE3_URL, MOVIE_SCENE1, MOVIE_SCENE2, MOVIE_SCENE3, MOVIE_SCENE1_INFO, MOVIE_SCENE2_INFO, MOVIE_SCENE3_INFO, MOVIE_SCENE1_URL, MOVIE_SCENE2_URL, MOVIE_SCENE3_URL);

		
		response.getWriter().write(result+"");
		return;


	}

}