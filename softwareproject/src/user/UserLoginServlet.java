package user;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String MEMBER_ID = request.getParameter("MEMBER_ID");
		String MEMBER_PW = request.getParameter("MEMBER_PW");

		System.out.println("UserLoginServlet ID = "+ MEMBER_ID);
		System.out.println("UserLoginServlet PW = " + MEMBER_PW);

		if(MEMBER_ID == null || MEMBER_ID.equals("") || MEMBER_PW==null || MEMBER_PW.equals("")) {
			System.out.println("Servlet ID/PW null");
			response.getWriter().write("7");
			return;

		}


		int result = new UserDAO().MEMBER_LOGIN(MEMBER_ID, MEMBER_PW);


		if(result == 1) {

			request.getSession().setAttribute("MEMBER_ID", MEMBER_ID); 





			response.getWriter().write("1");
			return;

		}
		response.getWriter().write(result+"");

		return;
	}

}
