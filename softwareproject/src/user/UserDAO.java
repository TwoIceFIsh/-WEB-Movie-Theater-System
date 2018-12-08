package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



//DB login class
public class UserDAO {

	String DB_ID="hg1506";
	String DB_PW="!hg31031";
	String DB_URL="jdbc:mysql://homepage.cb1vx3m0pxsf.ap-northeast-2.rds.amazonaws.com:3306/MOVIE_PROJECT?useUnicode=true&characterEncoding=UTF-8";


	public UserDAO() {

		System.out.println("Try to DB connection");

	}


	//[Y] LOGIN LOGIC
	public int MEMBER_LOGIN(String MEMBER_ID, String USER_PW) {
	 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MEMBER_ID,MEMBER_PW FROM MOVIE_MEMBER WHERE MEMBER_ID = ? ";

		try {

			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			rs=pstmt.executeQuery();

			if(rs.next())
			{
				if(rs.getString("USER_PW").equals(USER_PW)) 
				{

					return 1;
				}


				return 2;
			}

			else 
			{

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
	public int MEMBER_ID_CHECK(String MEMBER_ID) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MEMBER_ID FROM MOVIE_MEMBER WHERE MEMBER_ID = ? ";

		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			rs=pstmt.executeQuery();

			if(rs.next() || MEMBER_ID.equals("")) {
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






	//join User DATA
	public int MEMBER_REGISTRATION(String MEMBER_ID, String MEMBER_PW, String MEMBER_NAME, String MEMBER_ADDRESS) {


		Connection conn = null;
		PreparedStatement pstmt = null;

		String SQL = "INSERT INTO MOVIE_MEMBER VALUES (?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			pstmt.setString(2, MEMBER_PW);	
			pstmt.setString(3, MEMBER_NAME);
			pstmt.setString(4, MEMBER_ADDRESS);
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
	public UserDTO getMEMBER_INFO(String MEMBER_ID) {

		UserDTO MEMBER = new UserDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM MOVIE_MEMBER WHERE MEMBER_ID = ? ";


		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			rs=pstmt.executeQuery();

			if(rs.next() ) {
				MEMBER.setMEMBER_ID (MEMBER_ID);
				MEMBER.setMEMBER_PW(rs.getString("MEMBER_PW")); 
				MEMBER.setMEMBER_NAME(rs.getString("MEMBER_NAME"));
				MEMBER.setMEMBER_ADDRESS(rs.getString("MEMBER_ADDRESS"));
				
				return MEMBER;

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

		return MEMBER;
	}



	//[Y] update user Info.
	public int MEMBER_UPDATE(String MEMBER_ID, String MEMBER_PW, String MEMBER_NAME, String MEMBER_ADDRESS) {
		 
		Connection conn = null;
		PreparedStatement pstmt = null;

		String SQL = "UPDATE MOVIE_MEMBER SET MEMBER_PW =?,  MEMBER_NAME=?, MEMBER_ADDRESS = ? WHERE MEMBER_ID = ?";
		try {
			Class.forName("com.mysql.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, MEMBER_PW);	
			pstmt.setString(2, MEMBER_NAME);
			pstmt.setString(3, MEMBER_ADDRESS);
			pstmt.setString(4, MEMBER_ID);	
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
