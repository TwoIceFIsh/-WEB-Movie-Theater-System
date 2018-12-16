package screen;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ScreenSearchServlet")
public class ScreenSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
	IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");


		String data = request.getParameter("data");

		String array[] = data.split(",");

		String MOVIE_NAME = array[0];
		String SCREEN_DATE = array[1];
		String SCREEN_NUMBER = array[2];

		System.out.println(MOVIE_NAME);
		System.out.println(SCREEN_DATE);
		System.out.println(SCREEN_NUMBER);

		request.getSession().setAttribute("MOVIE_NAME", MOVIE_NAME); 
		request.getSession().setAttribute("SCREEN_DATE", SCREEN_DATE); 
		request.getSession().setAttribute("SCREEN_NUMBER", SCREEN_NUMBER); 
		String SEAT_BITMAP[] = null;

		SEAT_BITMAP =  new ScreenDAO().getSEAT_LIST(MOVIE_NAME, SCREEN_DATE, SCREEN_NUMBER);
		int length = SEAT_BITMAP.length;
		
		request.getSession().setAttribute("SEAT_BITMAP", SEAT_BITMAP);
		request.getSession().setAttribute("BIT_MAP_LENGTH", length);
		response.sendRedirect("./a_select.jsp");


	}

}
