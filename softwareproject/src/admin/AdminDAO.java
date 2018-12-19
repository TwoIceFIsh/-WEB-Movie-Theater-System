package admin;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import movie.MovieDTO;

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


	public int UPDATE_BIT_MAP(int SEAT_NUMBER, int SCREEN_NUMBER, String SCREEN_DATE) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmtpre = null;
		ResultSet rs = null;

		int RESERVED_SEAT = 0;
		String BIT_MAP = "";

		System.out.println(SCREEN_NUMBER+" "+SEAT_NUMBER+" "+SCREEN_DATE);

		String SQLPRE = "SELECT RESERVED_SEAT, SEAT_BITMAP FROM SCREEN_INFO WHERE SCREEN_NUMBER = ? AND SCREEN_DATE = ?";

		String SQL = "UPDATE SCREEN_INFO SET RESERVED_SEAT =?,  SEAT_BITMAP=? WHERE SCREEN_NUMBER =? AND SCREEN_DATE = ?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);

			pstmtpre = conn.prepareStatement(SQLPRE);

			pstmtpre.setInt(1, SCREEN_NUMBER);
			pstmtpre.setString(2, SCREEN_DATE);	
			rs=pstmtpre.executeQuery();

			if(rs.next() ) {

				RESERVED_SEAT = rs.getInt("RESERVED_SEAT");
				BIT_MAP = rs.getString("SEAT_BITMAP");
				System.out.println(RESERVED_SEAT+BIT_MAP);
			}

			String[] array = BIT_MAP.split("");
			array[SEAT_NUMBER]="1";

			String TEMP = String.join("",array);
			System.out.println("temp: "+TEMP);

			pstmt = conn.prepareStatement(SQL);

			pstmt.setInt(1, RESERVED_SEAT+1);
			pstmt.setString(2, TEMP);
			pstmt.setInt(3, SCREEN_NUMBER);
			pstmt.setString(4, SCREEN_DATE);	

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


	public int setTicket(String MEMBER_ID,int SCREEN_NUMBER,int SEAT_NUMBER, String SCREEN_DATE)
	{

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT INTO MY_TICKET VALUES(?,?,?,?)";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, MEMBER_ID);
			pstmt.setInt(2, SCREEN_NUMBER);
			pstmt.setInt(3, SEAT_NUMBER);
			pstmt.setString(4, SCREEN_DATE);

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

	public ArrayList<TicketDTO> getTicket(String MEMBER_ID)
	{
		ArrayList<TicketDTO> TICKETS = new ArrayList<TicketDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM MY_TICKET WHERE MEMBER_ID = ?";


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, MEMBER_ID);


			rs = pstmt.executeQuery();

			while(rs.next()) {
				TicketDTO TICKET = new TicketDTO();
				TICKET.setMEMBER_ID(rs.getString("MEMBER_ID"));
				TICKET.setSCREEN_NUMBER(rs.getInt("SCREEN_NUMBER"));	
				TICKET.setSEAT_NUMBER(rs.getString("SEAT_NUMBER")); 
				TICKET.setSCREEN_DATE(rs.getString("SCREEN_DATE"));	
				TICKETS.add(TICKET);

			}

			return TICKETS;

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

		return TICKETS;
	}

	public String getSCREEN_IMG(String MEMBER_ID, String SCREEN_DATE, int SCREEN_NUMBER) {

		MovieDTO MOVIE = new MovieDTO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MOVIE_IMG_URL FROM MOVIE_INFO WHERE MOVIE_NAME IN(SELECT MOVIE_NAME FROM MY_TICKET, SCREEN_INFO WHERE MEMBER_ID = ? AND SCREEN_INFO.SCREEN_DATE = ? AND SCREEN_INFO.SCREEN_NUMBER = ? )";
		String url = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");    
			conn = DriverManager.getConnection(DB_URL,DB_ID,DB_PW);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, MEMBER_ID);
			pstmt.setString(2, SCREEN_DATE);
			pstmt.setInt(3, SCREEN_NUMBER);
		
			rs=pstmt.executeQuery();

			if(rs.next() ) {

				url = rs.getString("MOVIE_IMG_URL");

				return url;

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

		return url;
	}

}
