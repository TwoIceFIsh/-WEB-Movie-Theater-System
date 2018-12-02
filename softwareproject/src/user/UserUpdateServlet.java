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
		String userID = request.getParameter("userID");
		HttpSession session = request.getSession();

		String userPW1 = request.getParameter("userPW1");
		String userPW2 = request.getParameter("userPW2");
		String userEMAIL = request.getParameter("userEMAIL");
	 

		if(	userPW1 == null || userPW1.equals("") ||
				userPW2 == null || userPW2.equals("") ||
				userEMAIL == null || userEMAIL.equals("")  
				  )
		{
			 
			response.sendRedirect("m_index.jsp");	
			return;
		}
 

		if(!userPW1.equals(userPW2))
		{
			 response.sendRedirect("m_index.jsp");
			return;
		}

		int result = new UserDAO().update(userID, userPW1 , userEMAIL);

		if(result == 1) {
			 response.sendRedirect("m_index.jsp");
			return;
		}
		else {
			 response.sendRedirect("m_index.jsp");
			return;
		}
	}

}