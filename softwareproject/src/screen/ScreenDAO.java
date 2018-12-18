package screen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


//DB login class
public class ScreenDAO {

	String DB_ID="hg1506";
	String DB_PW="!hg31031";
	String DB_URL="jdbc:mysql://homepage.cb1vx3m0pxsf.ap-northeast-2.rds.amazonaws.com:3306/MOVIE_PROJECT?useUnicode=true&characterEncoding=UTF-8";


	public ScreenDAO() {

		 }
	
	public  ScreenDTO getMOVIE_SCREEN_INFO(String SCREEN_DATE, String SCREEN_NUMBER){
		 ScreenDTO SCREEN = new ScreenDTO();
		 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM SCREEN_INFO WHERE SCREEN_DATE = ? AND SCREEN_NUMBER = ? ";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, SCREEN_DATE);
			pstmt.setInt(2, Integer.parseInt(SCREEN_NUMBER));
			rs=pstmt.executeQuery();

			while(rs.next()) {
				
				SCREEN.setSCREEN_NUMBER((rs.getInt("SCREEN_NUMBER")));
				SCREEN.setTOTAL_SEAT((rs.getInt("TOTAL_SEAT")));
				SCREEN.setRESERVED_SEAT((rs.getInt("RESERVED_SEAT")));
				
				SCREEN.setMOVIE_NAME((rs.getString("MOVIE_NAME")));
				SCREEN.setSCREEN_DATE((rs.getString("SCREEN_DATE")));
				
				
			
				 

			}
			 return SCREEN;

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

		return SCREEN;
	}
	
 
	public  String[] getSEAT_LIST(String SCREEN_DATE, String SCREEN_NUMBER){
		 
		 String[] array = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT SEAT_BITMAP FROM SCREEN_INFO WHERE SCREEN_DATE = ? AND SCREEN_NUMBER = ? ";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, SCREEN_DATE);
			pstmt.setInt(2, Integer.parseInt(SCREEN_NUMBER));
			rs=pstmt.executeQuery();

			while(rs.next()) {
				ScreenDTO SCREEN = new ScreenDTO();
				SCREEN.setSEAT_BITMAP((rs.getString("SEAT_BITMAP")));
				
				array = SCREEN.getSEAT_BITMAP().split("");
		
				 System.out.println(array.length);

			}
			 return array;

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

		return array;
	}










}
