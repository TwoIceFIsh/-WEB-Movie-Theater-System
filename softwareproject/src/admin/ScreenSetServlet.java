package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScreenSetServlet
 */
@WebServlet("/ScreenSetServlet")
public class ScreenSetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
	IOException {


		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		try {
			int SCREEN_NUMBER = Integer.parseInt(request.getParameter("SCREEN_NUMBER"));
			int TOTAL_SEAT = Integer.parseInt(request.getParameter("TOTAL_SEAT"));
			String MOVIE_NAME = request.getParameter("MOVIE_NAME");
			String SCREEN_DATE = request.getParameter("SCREEN_DATE");



			int result = new AdminDAO().InsIntoSCREEN_INFO(SCREEN_NUMBER, TOTAL_SEAT,  MOVIE_NAME, SCREEN_DATE);

			if(result == 1) {
				request.getSession().setAttribute("ALERT", "상영계획 등록완료."); 

				response.sendRedirect("./a_setScreen.jsp");
			}
			else {

				request.getSession().setAttribute("ALERT", "해당 상영관에 이미 상영계획이 존재합니다."); 

				response.sendRedirect("./a_setScreen.jsp");
			}
		}

		catch(Exception e) {
			request.getSession().setAttribute("ALERT", "미선택 항목이있습니다."); 

			response.sendRedirect("./a_setScreen.jsp");
		}
	}
}
