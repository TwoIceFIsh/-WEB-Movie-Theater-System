package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("MEMBER_ID");
 

		String MEMBER_PW_1 = request.getParameter("MEMBER_PW_1");
		String MEMBER_PW_2 = request.getParameter("MEMB2R_PW_1");
		String MEMBER_NAME = request.getParameter("MEMBER_NAME");
		String MEMBER_ADDRESS = request.getParameter("MEMBER_ADDRESS");

		if(	MEMBER_PW_1 == null || MEMBER_PW_1.equals("") ||
				MEMBER_PW_2 == null || MEMBER_PW_2.equals("") ||
				MEMBER_NAME == null || MEMBER_NAME.equals("")  
				)
		{

			response.sendRedirect("a_index.jsp");	
			return;
		}


		if(!MEMBER_PW_1.equals(MEMBER_PW_2))
		{
			response.sendRedirect("a_index.jsp");
			return;
		}

		int result = new UserDAO().MEMBER_UPDATE(userID, MEMBER_PW_1 , MEMBER_NAME, MEMBER_ADDRESS);

		if(result == 1) {
			response.sendRedirect("a_index.jsp");
			return;
		}
		else {
			response.sendRedirect("a_index.jsp");
			return;
		}
	}

}