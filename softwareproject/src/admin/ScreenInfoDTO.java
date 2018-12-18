package admin;

public class ScreenInfoDTO {

	int SCREEN_NUMBER;
	public int getSCREEN_NUMBER() {
		return SCREEN_NUMBER;
	}
	public void setSCREEN_NUMBER(int sCREEN_NUMBER) {
		SCREEN_NUMBER = sCREEN_NUMBER;
	}
	public int getTOTAL_SEAT() {
		return TOTAL_SEAT;
	}
	public void setTOTAL_SEAT(int tOTAL_SEAT) {
		TOTAL_SEAT = tOTAL_SEAT;
	}
	public int getRESERVED_SEAT() {
		return RESERVED_SEAT;
	}
	public void setRESERVED_SEAT(int rESERVED_SEAT) {
		RESERVED_SEAT = rESERVED_SEAT;
	}
	public String getSEAT_BITMAP() {
		return SEAT_BITMAP;
	}
	public void setSEAT_BITMAP(String sEAT_BITMAP) {
		SEAT_BITMAP = sEAT_BITMAP;
	}
	public String getMOVIE_NAME() {
		return MOVIE_NAME;
	}
	public void setMOVIE_NAME(String mOVIE_NAME) {
		MOVIE_NAME = mOVIE_NAME;
	}
	public String getSCREEN_DATE() {
		return SCREEN_DATE;
	}
	public void setSCREEN_DATE(String sCREEN_DATE) {
		SCREEN_DATE = sCREEN_DATE;
	}
	int TOTAL_SEAT;
	int RESERVED_SEAT;
	String SEAT_BITMAP;
	String MOVIE_NAME;
	String SCREEN_DATE;
	
}
