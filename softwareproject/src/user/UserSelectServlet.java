package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserRegisterCheckServlet")
public class UserSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		
		String userID = request.getParameter("userID");  
		String movieName = request.getParameter("movieName");  
		String movieTime = request.getParameter("movieTime");  
		
		if(userID.equals("") || userID == null)
			return;
		
		//redirect select seat
		//선택한 정보의 영화를 쏴준다 함수를 하나더 호출?
		response.getWriter().write(new UserDAO().checkTheater(userID, movieName)+"");
		
		
		}
	

}
