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
		
		
		 response.sendRedirect("./a_index.jsp");
			

	}

}
