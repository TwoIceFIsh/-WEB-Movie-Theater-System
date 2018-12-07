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
		
		String userID = request.getParameter("userID")==null?"m_join.jsp 널":request.getParameter("userID");  

		System.out.println("가입된 아이디 : "+userID);
		
		response.getWriter().write(new UserDAO().registerCheck(userID)+"");
		}
	

}
