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

	public ArrayList<ScreenDTO> getScreenList(String MOVIE_NAME){
	 	ArrayList<ScreenDTO> list = new ArrayList<ScreenDTO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT SCREEN_NUMBER,TOTAL_SEAT, RESERVED_SEAT, SCREEN_DATE FROM SCREEN_INFO WHERE MOVIE_NAME = ?";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MOVIE_NAME);
			rs=pstmt.executeQuery();

			while(rs.next()) {
				ScreenDTO SCREEN = new ScreenDTO();
				SCREEN.setSCREEN_NUMBER(rs.getInt("SCREEN_NUMBER"));
				SCREEN.setSCREEN_DATE(rs.getString("SCREEN_DATE"));
				SCREEN.setTOTAL_SEAT(rs.getInt("TOTAL_SEAT"));
				SCREEN.setRESERVED_SEAT(rs.getInt("RESERVED_SEAT"));

			
				
				list.add(SCREEN);

			}
			 return list;

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

		return list;
	}

	
	public  String[] getSEAT_LIST(String MOVIE_NAME, String SCREEN_DATE, String SCREEN_NUMBER){
		 
		 String[] array = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT SEAT_BITMAP FROM SCREEN_INFO WHERE MOVIE_NAME = ? AND SCREEN_DATE = ? AND SCREEN_NUMBER = ? ";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MOVIE_NAME);
			pstmt.setString(2, SCREEN_DATE);
			pstmt.setInt(3, Integer.parseInt(SCREEN_NUMBER));
			rs=pstmt.executeQuery();

			while(rs.next()) {
				ScreenDTO SCREEN = new ScreenDTO();
				SCREEN.setSEAT_BITMAP((rs.getString("SEAT_BITMAP")));
				
				array = SCREEN.getSEAT_BITMAP().split("");
				System.out.println(array[0]);
				 

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
