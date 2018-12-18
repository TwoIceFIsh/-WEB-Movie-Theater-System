package screen;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScreenSelectSeatServlet
 */
@WebServlet("/ScreenSelectSeatServlet")
public class ScreenSelectSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String data = request.getParameter("data");

		String array[] = data.split(",");

	
		String SCREEN_DATE = array[0];
		String SCREEN_NUMBER = array[1];
		
		request.getSession().setAttribute("SCREEN_DATE", SCREEN_DATE); 
		request.getSession().setAttribute("SCREEN_NUMBER", SCREEN_NUMBER); 
		
		response.sendRedirect("./a_select.jsp");
		
		
	}

}
