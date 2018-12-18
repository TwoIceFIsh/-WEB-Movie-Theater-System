package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//DB login class
public class AdminDAO {

	String DB_ID="hg1506";
	String DB_PW="!hg31031";
	String DB_URL="jdbc:mysql://homepage.cb1vx3m0pxsf.ap-northeast-2.rds.amazonaws.com:3306/MOVIE_PROJECT?useUnicode=true&characterEncoding=UTF-8";


	public AdminDAO() {


	}







	//[Y]
	public AdminBitDTO getADMIN_BIT(String MEMBER_ID) {

		AdminBitDTO ADMIN = new AdminBitDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT ADMIN_BIT FROM MOVIE_MEMBER WHERE MEMBER_ID = ?";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			rs=pstmt.executeQuery();

			if(rs.next() ) {

				ADMIN.setADMIN_BIT(rs.getInt("ADMIN_BIT"));

				return ADMIN;

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

		return ADMIN;
	}


	public int InsIntoSCREEN_INFO(	
			int SCREEN_NUMBER,
			int TOTAL_SEAT,

			String MOVIE_NAME,
			String SCREEN_DATE) 
	{
		
		System.out.println( SCREEN_NUMBER+
				" "+TOTAL_SEAT+" "+ MOVIE_NAME+" "+ SCREEN_DATE);

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT INTO SCREEN_INFO VALUES(?,?,?,?,?,?)";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setInt(1, SCREEN_NUMBER);
			pstmt.setInt(2, TOTAL_SEAT);
			pstmt.setInt(3, 0);
			pstmt.setString(4, "00000000000000000000000000000000000000000000000000");
			pstmt.setString(5, MOVIE_NAME);
			pstmt.setString(6,  SCREEN_DATE);

			pstmt.executeUpdate();

			return 1;

		} catch(Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if(rs!= null)rs.close();

				if(pstmt !=null) pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {
				
			}
		}

		return -1;
	}




}
