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

		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");

		System.out.println("UserLoginServlet ID = "+ userID);
		System.out.println("UserLoginServlet PW = " + userPW);

		if(userID == null || userID.equals("") || userPW==null || userPW.equals("")) {
			System.out.println("Servlet ID/PW null");
			response.getWriter().write("7");
			return;

		}


		int result = new UserDAO().login(userID, userPW);


		if(result == 1) {

			request.getSession().setAttribute("userID", userID); 





			response.getWriter().write("1");
			return;

		}
		response.getWriter().write(result+"");

		return;
	}

}
