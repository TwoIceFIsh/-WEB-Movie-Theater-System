package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserSerialRegistor")
public class UserSerialRegistor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		
		String userID = request.getParameter("userID");
		String serialID = request.getParameter("serialID");
		
		
		System.out.println(serialID);
		System.out.println(userID);
	 	
		int result =  new UserDAO().serialCheck(userID, serialID);
		
		
		response.getWriter().write(result+"");
		}

}
