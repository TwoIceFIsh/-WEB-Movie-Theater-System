package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



//DB login class
public class UserDAO {

	String username="hg1506";
	String password="!hg31031"  ;
	String url="jdbc:mysql://homepage.cb1vx3m0pxsf.ap-northeast-2.rds.amazonaws.com:3306/homepagedesu?useUnicode=true&characterEncoding=UTF-8";




	public UserDAO() {


	}


	//[Y] LOGIN LOGIC
	public int login(String userID, String userPW) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT userID,userPW FROM USER WHERE userID = ? ";

		System.out.println("---------------------");
		System.out.println("UserDAO login Function");
		System.out.println("---------------------");

		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();

			if(rs.next())
			{
				if(rs.getString("userPW").equals(userPW)) 
				{
					System.out.println("ID/PW Ã¬ï¿½Â¼Ã¬Â¹Ëœ [1]");
					return 1;
				}

				System.out.println("ID/PW Ã«Â¶Ë†Ã¬ï¿½Â¼Ã¬Â¹Ëœ [2]");
				return 2;
			}

			else 
			{
				System.out.println("Ã¬Â¡Â´Ã¬Å¾Â¬Ã­â€¢ËœÃ¬Â§â‚¬Ã¬â€¢Å Ã«Å â€� Ã¬â€¢â€žÃ¬ï¿½Â´Ã«â€�â€� [0]");
				return 0;
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	public int[] getDrawData(String userID) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT lSensor, hSensor, tSensor, wPump, led ,pen , motor FROM MACHINE WHERE sID IN (Select sID from SERIAL WHERE sUser = ?) ";
		int array[] = new int[8];


		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();

			if(rs.next())
			{
				array[0] = rs.getInt("lSensor");

				array[1] = rs.getInt("hSensor");

				array[2] = rs.getInt("tSensor");
				array[3] = 1;
				
				array[4] = rs.getInt("wPump");
				array[5] = rs.getInt("led");
				array[6] = rs.getInt("pen");
				array[7] = rs.getInt("motor");

				return array;
			}

			else 
			{

			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		array[0] = -1;

		array[1] = -1;

		array[2] = -1;
		array[3] = -1;
		array[4] = -1;
		array[5] = -1;
		array[6] = -1;
		array[7] = -1;


		return array;

	}

	//userID CHECK
	public int registerCheck(String userID) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT userid FROM USER WHERE userID = ? ";


		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();

			if(rs.next() || userID.equals("")) {
				return 0;
			}
			else {
				return 1;
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}




	// REGIST SERIAL LOGIC 1
	public int serialCheck(String userID, String serialID) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM SERIAL WHERE sID = ?";
		//search serialID is exist and not registered
		System.out.println(userID + "22222" + serialID);

		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, serialID);
			rs=pstmt.executeQuery();

			if(rs.next()) {

				if(rs.getInt("used") == 1){

					//serialID is used;
					return 2;
				}
				if(rs.getString("sID") == serialID && rs.getInt("used") == 0 && rs.getString("sUser") == null) {

					return	serialREGIST(userID, serialID);

				}

				return 0;
			}





		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	// REGIST SERIAL LOGIC2
	public int serialREGIST(String userID, String userSERIAL) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "UPDATE SERIAL SET sUser = ? WHERE sID = ?";
		//search serialID is exist and not registered

		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userSERIAL);
			return pstmt.executeUpdate();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}


	//SIGNAL TEST
	public int controlwPump(String userID, String status) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		String col = "wPump";
		int result = -1;
		int value = -1;
		if(status.equals("on"))
			value = 1;
		if(status.equals("off"))
			value = 0;
 
		String SQL = "UPDATE MACHINE SET wPump =?  WHERE sID = 'AAAA-AAAA-AAAA-AAAA'";
		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);

			result = getControlStatus(col, userID);

			if(status.equals("just")) {
				if(result == 1)
					pstmt.setInt(1, 0);	
				if(result == 0)
					pstmt.setInt(1, 1);	
				
				pstmt.executeUpdate();
				return result;
			}

			if(result == 1)
				pstmt.setInt(1, value);	
			if(result == 0)
				pstmt.setInt(1, value);	

			//	pstmt.setString(2, userID);	

			pstmt.executeUpdate();

			return value;

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	public int controlMotor(String userID, String status) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		String col = "motor";
		int result = -1;

		int value = -1;

		if(status.equals("down"))
			value = 1;
		if(status.equals("x"))
			value = 0;
		if(status.equals("up"))
			value = 2;
		 


		String SQL = "UPDATE MACHINE SET motor = ?  WHERE sID = 'AAAA-AAAA-AAAA-AAAA'";
		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);

//			result = getControlStatus(col, userID);
			
//			if(status.equals("just")) {
//				if(result == 1)
//					pstmt.setInt(1, 0);	
//				if(result == 0)
//					pstmt.setInt(1, 1);	
//				
//				pstmt.executeUpdate();
//				return result;
//			}

			pstmt.setInt(1, value);	

			pstmt.executeUpdate();
			 
			return value;


		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	public int controlLED(String userID, String status) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		String col = "led";
		int result = -1;
		int value = 0;
		if(status.equals("on"))
			value = 1;
		if(status.equals("off"))
			value = 0;
		System.out.println("query's value : " + value);

		String SQL = "UPDATE MACHINE SET led =?  WHERE sID = 'AAAA-AAAA-AAAA-AAAA'";
		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);


			result = getControlStatus(col, userID);
			
			if(status.equals("just")) {
				if(result == 1)
					pstmt.setInt(1, 0);	
				if(result == 0)
					pstmt.setInt(1, 1);	
				
				pstmt.executeUpdate();
				return result;
			}

			if(result == 1)
				pstmt.setInt(1, value);	
			if(result == 0)
				pstmt.setInt(1, value);	

			//	pstmt.setString(2, userID);	

			pstmt.executeUpdate();

			return value;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	public int controlPEN(String userID, String status) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		String col = "pen";
		int result = -1;
		int value = 0;

		if(status.equals("on"))
			value = 1;
		if(status.equals("off"))
			value = 0;

		String SQL = "UPDATE MACHINE SET pen =? WHERE sID = 'AAAA-AAAA-AAAA-AAAA'";
		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);


			result = getControlStatus(col, userID);
			
			if(status.equals("just")) {
				if(result == 1)
					pstmt.setInt(1, 0);	
				if(result == 0)
					pstmt.setInt(1, 1);	
				
				pstmt.executeUpdate();
				return result;
			}

			if(result == 1 )
				pstmt.setInt(1, value);	
			if(result == 0)
				pstmt.setInt(1, value);


			//pstmt.setString(2, userID);	
			pstmt.executeUpdate();

			return value;


		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	public int getControlStatus(String col, String userID) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 6 ;


		String SQL = "SELECT MACHINE.wPump FROM MACHINE,SERIAL WHERE SERIAL.sUser = ? AND MACHINE.sID = SERIAL.sID";
		String SQL2 = "SELECT MACHINE.led FROM MACHINE,SERIAL WHERE MACHINE.sID = SERIAL.sID AND SERIAL.sUser = ?";
		String SQL3 = "SELECT MACHINE.pen FROM MACHINE,SERIAL WHERE MACHINE.sID = SERIAL.sID AND SERIAL.sUser = ?";
		String SQL4 = "SELECT MACHINE.motor FROM MACHINE,SERIAL WHERE MACHINE.sID = SERIAL.sID AND SERIAL.sUser = ?";

		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);

			if(col.equals("pen"))
				pstmt = conn.prepareStatement(SQL3);
			if(col.equals("led"))
				pstmt = conn.prepareStatement(SQL2);
			if(col.equals("wPump"))
				pstmt = conn.prepareStatement(SQL);
			if(col.equals("motor"))
				pstmt = conn.prepareStatement(SQL4);

			pstmt.setString(1, userID);	
			rs = pstmt.executeQuery();


			if(rs.next())
			{
				if(col == "wPump")
					result = rs.getInt("wPump");

				if(col == "led")
					result =	rs.getInt("led");

				if(col == "pen")
					result = rs.getInt("pen");
				if(col == "motor")
					result = rs.getInt("motor");

				return result;
			}

			else 
			{

				return -1;
			}


		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	//join User DATA
	public int register(String userID, String userPW, String userEMAIL) {


		Connection conn = null;
		PreparedStatement pstmt = null;

		String SQL = "INSERT INTO USER VALUES (?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPW);	
			//		pstmt.setString(3, userNAME);
			pstmt.setString(3, userEMAIL);
			return pstmt.executeUpdate();


		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}


	//[Y] Return UserDTO structure
	public UserDTO getUser(String userID) {

		UserDTO user = new UserDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM USER WHERE userID = ? ";


		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();

			if(rs.next() ) {
				user.setUserID(userID);
				user.setUserPW(rs.getString("userPW"));
				//user.setUserName(rs.getString("userNAME"));
				user.setUserEMAIL(rs.getString("userEMAIL"));

			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return user;
	}


	//[N] userID -> getSERIAL
	public UserDTO getSERIAL(String userID) {

		UserDTO user = new UserDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM SERIAL WHERE sUser = ? ";


		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();

			if(rs.next() ) {

				user.setUserSERIAL(rs.getString("sID"));


			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return user;
	}




	//[Y] update user Info.
	public int update(String userID, String userPW,  String userEMAIL) {


		Connection conn = null;
		PreparedStatement pstmt = null;

		String SQL = "UPDATE USER SET userPW =?,  userEMAIL=? WHERE userID = ?";
		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(url,username,password);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userPW);	
			pstmt.setString(2, userEMAIL);
			pstmt.setString(3, userID);
			return pstmt.executeUpdate();


		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

}
