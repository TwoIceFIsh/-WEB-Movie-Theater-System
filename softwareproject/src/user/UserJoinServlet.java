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
	
		String MEMBER_ID = request.getParameter("MEMBER_ID").toLowerCase();
		System.out.println(MEMBER_ID);
		String MEMBER_PW = request.getParameter("MEMBER_PW_1");
		String MEMBER_PW_2 = request.getParameter("MEMBER_PW_2");
		String MEMBER_NAME = request.getParameter("MEMBER_NAME");
		String MEMBER_ADDRESS = request.getParameter("MEMBER_ADDRESS");


		if(MEMBER_ID == null || MEMBER_ID.equals("") ||
				MEMBER_PW == null || MEMBER_PW.equals("") ||
				MEMBER_PW_2 == null || MEMBER_PW_2.equals("") ||
				MEMBER_NAME == null || MEMBER_NAME.equals(""))
		{	 
			response.sendRedirect("m_join.jsp");	
			return;
		}
 

		//ask query
		int result = new UserDAO().MEMBER_REGISTRATION(MEMBER_ID,MEMBER_PW ,MEMBER_NAME, MEMBER_ADDRESS);

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