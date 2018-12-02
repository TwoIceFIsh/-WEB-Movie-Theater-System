package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserJoinServlet")
public class UserJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("userID").toLowerCase();
		String userPW1 = request.getParameter("userPW1");
		String userPW2 = request.getParameter("userPW2");
		String userEMAIL = request.getParameter("userEMAIL");
		//String userNAME = request.getParameter("userNAME");
	 

		if(userID == null || userID.equals("") ||
				userPW1 == null || userPW1.equals("") ||
				userPW2 == null || userPW2.equals("") ||
				userEMAIL == null || userEMAIL.equals("")
				//|| userNAME == null || userNAME.equals("") 
				)
		{
		//null check
			response.sendRedirect("m_join.jsp");	
			return;
		}

		//pw error
		if(!userPW1.equals(userPW2))
		{
		 
			response.sendRedirect("m_join.jsp");
			return;
		}

		System.out.println(userID+userPW1+userEMAIL);
		//ask query
		int result = new UserDAO().register(userID,userPW1 ,userEMAIL);

		//result ok
		if(result == 1) {
 
			response.sendRedirect("m_index.jsp");
			return;
		}
		
		//result already exist
		else {
		 
			response.sendRedirect("m_join.jsp");
			return;
		}
	}

}