package admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ScreenListDAO {
	
	String DB_ID="hg1506";
	String DB_PW="!hg31031";
	String DB_URL="jdbc:mysql://homepage.cb1vx3m0pxsf.ap-northeast-2.rds.amazonaws.com:3306/MOVIE_PROJECT?useUnicode=true&characterEncoding=UTF-8";

	public ScreenListDAO() {}

	//[Y] Return UserDTO structure
	public ArrayList<ScreenListDTO> getSCREEN_LIST(String MOVIE_NAME) {
		ArrayList<ScreenListDTO> SCREEN_LIST = new ArrayList<ScreenListDTO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM SCREEN_INFO WHERE MOVIE_NAME = ?";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MOVIE_NAME);
			rs=pstmt.executeQuery();

			while(rs.next() ) {
				ScreenListDTO SCREEN = new ScreenListDTO();
				SCREEN.setMOVIE_NAME(rs.getString("MOVIE_NAME"));
				SCREEN.setSCREEN_DATE(rs.getString("SCREEN_DATE"));
				SCREEN.setSCREEN_NUMBER(rs.getInt("SCREEN_NUMBER"));
				SCREEN.setTOTAL_SEAT(rs.getInt("TOTAL_SEAT"));
				SCREEN.setRESERVED_SEAT(rs.getInt("RESERVED_SEAT"));
				SCREEN_LIST.add(SCREEN);
				
				

			}
			return SCREEN_LIST;

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

		return SCREEN_LIST;
	}
	
	
	
	public ArrayList<ScreenListDTO> MOVIE_LIST() {
		
		System.out.println("admin.ScreenListDTO.getMOVIE_LIST");
		
		ArrayList<ScreenListDTO> ARRAY = new ArrayList<ScreenListDTO>();
		
	 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MOVIE_NAME FROM MOVIE_INFO";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
	
			rs=pstmt.executeQuery();
			int i = 0;
			while(rs.next()) {
				ScreenListDTO SCREEN_LIST_DTO = new ScreenListDTO();
				
				SCREEN_LIST_DTO.setMOVIE_NAME(rs.getString("MOVIE_NAME"));
				
				ARRAY.add(SCREEN_LIST_DTO);
				

			}
		
			System.out.println("admin.ScreenListDTO.getMOVIE_LIST.MOVIE_NAME_ARRAY["+i+"]");
			
			return ARRAY;

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

		return ARRAY;

	}

	
}
