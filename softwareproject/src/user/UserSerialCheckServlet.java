package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserSerialCheckServlet
 */
@WebServlet("/UserSerialCheckServlet")
public class UserSerialCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		
		String userID = request.getParameter("userID");
		String serialID = request.getParameter("serialID");
		
		
		System.out.println(serialID+"lllll");
		System.out.println(userID);
	 	
		int result =  new UserDAO().serialCheck(userID, serialID);
		
		
		response.getWriter().write(result+"");
		}
	}


