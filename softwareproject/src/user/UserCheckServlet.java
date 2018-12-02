package user;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;

@WebServlet("/UserCheckServlet")
public class UserCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("userID1");
		String userPW = request.getParameter("userPW1");

		System.out.println("UserCheckServlet ID = "+ userID);
		System.out.println("UserCheckServlet PW = " + userPW);

		if(userID == null || userID.equals("") || userPW==null || userPW.equals("")) {
			System.out.println("Servlet ID/PW null");
			response.getWriter().write("7");
			return;

		}


		int result = new UserDAO().login(userID, userPW);
		
		System.out.println(result);
		if(result == 1) {
			
			request.getSession().setAttribute("userID", userID);

		}
		response.getWriter().write(result+"");
		
		return;
	}

}
