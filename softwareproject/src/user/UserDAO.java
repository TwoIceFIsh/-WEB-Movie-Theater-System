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
					System.out.println("ID/PW  [1]");
					return 1;
				}

				System.out.println("ID/PW  [2]");
				return 2;
			}

			else 
			{
				System.out.println(" [0]");
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
	
	public int checkTheater(String movieName, String movieTime) {

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
			pstmt.setString(1, movieName);
			rs=pstmt.executeQuery();

			if(rs.next())
			{
				if(rs.getString("userPW").equals("")) 
				{
					System.out.println("ID/PW  [1]");
					return 1;
				}

				System.out.println("ID/PW  [2]");
				return 2;
			}

			else 
			{
				System.out.println(" [0]");
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
