package movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


//DB login class
public class MovieDAO {

	String DB_ID="hg1506";
	String DB_PW="!hg31031";
	String DB_URL="jdbc:mysql://homepage.cb1vx3m0pxsf.ap-northeast-2.rds.amazonaws.com:3306/MOVIE_PROJECT?useUnicode=true&characterEncoding=UTF-8";


	public MovieDAO() {

		System.out.println("Try to Movie DB connection");

	}

	public ArrayList<MovieDTO> getMovieList(){
		System.out.println("getMovieList");
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MOVIE_NAME,MOVIE_INFO, MOVIE_IMG_URL, PLAY_TIME FROM MOVIE_INFO";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);

			rs=pstmt.executeQuery();

			while(rs.next()) {
				MovieDTO MOVIE = new MovieDTO();
				MOVIE.setMOVIE_NAME(rs.getString("MOVIE_NAME"));
				MOVIE.setMOVIE_IMG_URL(rs.getString("MOVIE_IMG_URL"));
				MOVIE.setPLAY_TIME(rs.getString("PLAY_TIME"));
				MOVIE.setMOVIE_INFO(rs.getString("MOVIE_INFO"));

				list.add(MOVIE);

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

	//[Y] LOGIN LOGIC
	public int MEMBER_LOGIN(String MEMBER_ID, String MEMBER_PW) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MEMBER_PW FROM MOVIE_MEMBER WHERE MEMBER_ID = ? ";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			rs=pstmt.executeQuery();

			if(rs.next())
			{
				if(rs.getString("MEMBER_PW").equals(MEMBER_PW)) 
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
	
	public String getPoint(String MEMBER_ID, String MOVIE_NAME) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MOVIE_COST, MEMBER_POINT  FROM MOVIE_MEMBER, MOVIE_INFO WHERE MOVIE_MEMBER.MEMBER_ID = ? AND MOVIE_INFO.MOVIE_NAME = ? ";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			pstmt.setString(2, MOVIE_NAME);
			rs=pstmt.executeQuery();

			if(rs.next() ) {
				System.out.println("hello point");
					 
					//수정해줘야됨 디비 결과값이안나옴
					System.out.println("getMOVIE_COST value is : " + rs.getString("MOVIE_COST"));
					return "1,1";
				
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

		return "0,0";
	}




	//[Y] Return UserDTO structure
	public MovieDTO getMOVIE_INFO(String MOVIE_NAME) {

		MovieDTO MOVIE = new MovieDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM MOVIE_INFO WHERE MOVIE_NAME = ? ";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MOVIE_NAME);
			rs=pstmt.executeQuery();

			if(rs.next() ) {
				MOVIE.setMOVIE_NAME(MOVIE_NAME); 
				MOVIE.setMOVIE_INFO(rs.getString("MOVIE_INFO")); 
				MOVIE.setPLAY_TIME(rs.getString("PLAY_TIME")); 
				MOVIE.setMOVIE_IMG_URL(rs.getString("MOVIE_IMG_URL"));
				MOVIE.setMOVIE_COST(rs.getString("MOVIE_COST"));
				MOVIE.setMOVIE_PEOPLE1(rs.getString("MOVIE_PEOPLE1"));
				MOVIE.setMOVIE_PEOPLE2(rs.getString("MOVIE_PEOPLE2"));
				MOVIE.setMOVIE_PEOPLE3(rs.getString("MOVIE_PEOPLE3"));
				MOVIE.setMOVIE_PEOPLE1_URL(rs.getString("MOVIE_PEOPLE1_URL"));
				MOVIE.setMOVIE_PEOPLE2_URL(rs.getString("MOVIE_PEOPLE2_URL"));
				MOVIE.setMOVIE_PEOPLE3_URL(rs.getString("MOVIE_PEOPLE3_URL"));
				MOVIE.setMOVIE_PEOPLE1_INFO(rs.getString("MOVIE_PEOPLE1_INFO"));
				MOVIE.setMOVIE_PEOPLE2_INFO(rs.getString("MOVIE_PEOPLE2_INFO"));
				MOVIE.setMOVIE_PEOPLE3_INFO(rs.getString("MOVIE_PEOPLE3_INFO"));
				MOVIE.setMOVIE_SCENE1(rs.getString("MOVIE_SCENE1"));
				MOVIE.setMOVIE_SCENE2(rs.getString("MOVIE_SCENE2"));
				MOVIE.setMOVIE_SCENE3(rs.getString("MOVIE_SCENE3"));
				MOVIE.setMOVIE_SCENE1_URL(rs.getString("MOVIE_SCENE1_URL"));
				MOVIE.setMOVIE_SCENE2_URL(rs.getString("MOVIE_SCENE2_URL"));
				MOVIE.setMOVIE_SCENE3_URL(rs.getString("MOVIE_SCENE3_URL"));
				MOVIE.setMOVIE_SCENE1_INFO(rs.getString("MOVIE_SCENE1_INFO"));
				MOVIE.setMOVIE_SCENE2_INFO(rs.getString("MOVIE_SCENE2_INFO"));
				MOVIE.setMOVIE_SCENE3_INFO(rs.getString("MOVIE_SCENE3_INFO"));

				return MOVIE;

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

		return MOVIE;
	}

	public int setMOVIE_INFO(

			String MOVIE_NAME, 
			String MOVIE_INFO, 

			String PLAY_TIME, 
			String MOVIE_IMG_URL,

			String MOVIE_COST,
			String MOVIE_PEOPLE1,
			String MOVIE_PEOPLE2,
			String MOVIE_PEOPLE3,
			String MOVIE_PEOPLE1_INFO,
			String MOVIE_PEOPLE2_INFO,
			String MOVIE_PEOPLE3_INFO,
			String MOVIE_PEOPLE1_URL,
			String MOVIE_PEOPLE2_URL,
			String MOVIE_PEOPLE3_URL,
			String MOVIE_SCENE1,
			String MOVIE_SCENE2,
			String MOVIE_SCENE3,
			String MOVIE_SCENE1_INFO,
			String MOVIE_SCENE2_INFO,
			String MOVIE_SCENE3_INFO,
			String MOVIE_SCENE1_URL,
			String MOVIE_SCENE2_URL,
			String MOVIE_SCENE3_URL



			) {


		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT INTO MOVIE_INFO VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, MOVIE_NAME);
			pstmt.setString(2, MOVIE_INFO);	
			pstmt.setString(3, PLAY_TIME );
			pstmt.setString(4, MOVIE_IMG_URL);
			pstmt.setString(5, MOVIE_COST );

			pstmt.setString( 6, MOVIE_PEOPLE1);
			pstmt.setString( 7, MOVIE_PEOPLE2);
			pstmt.setString( 8, MOVIE_PEOPLE3);
			pstmt.setString( 9, MOVIE_PEOPLE1_URL);
			pstmt.setString(10, MOVIE_PEOPLE2_URL);
			pstmt.setString(11, MOVIE_PEOPLE3_URL);
			pstmt.setString(12, MOVIE_PEOPLE1_INFO);
			pstmt.setString(13, MOVIE_PEOPLE2_INFO);
			pstmt.setString(14, MOVIE_PEOPLE3_INFO);


			pstmt.setString(15, MOVIE_SCENE1);
			pstmt.setString(16, MOVIE_SCENE2);
			pstmt.setString(17, MOVIE_SCENE3);
			pstmt.setString(18, MOVIE_SCENE1_URL);
			pstmt.setString(19, MOVIE_SCENE2_URL);
			pstmt.setString(20, MOVIE_SCENE3_URL);
			pstmt.setString(21, MOVIE_SCENE1_INFO);
			pstmt.setString(22, MOVIE_SCENE2_INFO);
			pstmt.setString(23, MOVIE_SCENE3_INFO);

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
				e.printStackTrace();
			}
		}

		return -1;
	}

	

	public int findMovie(String MOVIE_NAME) {
		System.out.println("findMovie 영화이름 : "+MOVIE_NAME );

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MOVIE_NAME FROM MOVIE_INFO WHERE MOVIE_NAME = ? ";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MOVIE_NAME);

			rs=pstmt.executeQuery();

			if(rs.next() ) {

				if(MOVIE_NAME.equals(rs.getString("MOVIE_NAME")))
				return 1;

			}
			else {
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



}
