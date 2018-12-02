

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;

/**
 * Servlet implementation class MachineDrawServlet
 */
@WebServlet("/MachineDrawServlet")
public class MachineDrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String userID = request.getParameter("userID");
		int[] result = null;
	try {
	
	result = new UserDAO().getDrawData(userID);
		
		}
	catch(Exception e) {
		e.printStackTrace();
	}

 
		String A = new String();
		
		A += result[0] + ",";
		A += result[1] + ",";
		A += result[2] + ",";
		A += result[3] + ",";
		A += result[4] + ",";
		A += result[5] + ",";
		A += result[6] + ",";
		A += result[7];
		response.getWriter().write(A+"");
// System.out.println(A+"Machine status");

		return;
	}

}
