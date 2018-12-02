package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserControlServlet
 */
@WebServlet("/UserControlServlet")
public class UserControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int result = -1;
		String userID = request.getParameter("userID");
		String func = request.getParameter("func");
		String status = request.getParameter("status");
 

		if(func.equals("wPump"))
			result =  new UserDAO().controlwPump( userID, status);

		if(func.equals("led"))
			result =  new UserDAO().controlLED( userID, status);


		if(func.equals("pen"))
			result =  new UserDAO().controlPEN( userID, status);
		

		if(func.equals("screen"))
			result =  new UserDAO().controlMotor(userID, status);
 


		System.out.println("상태매세지 : " + status +" 서블렛 후 결과 값 :" +result);


		response.getWriter().write(result+"");

	}

}
