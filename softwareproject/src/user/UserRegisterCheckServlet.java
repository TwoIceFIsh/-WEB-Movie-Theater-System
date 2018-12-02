package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserRegisterCheckServlet")
public class UserRegisterCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		
		String userID = request.getParameter("userID")==null?"m_join.jsp 에서 넘어온 userID값 [null] ":request.getParameter("userID");  

		System.out.println("UserRegisterCheckServlet 에서 확인된 id값 : "+userID);
		
		response.getWriter().write(new UserDAO().registerCheck(userID)+"");
		}
	

}
