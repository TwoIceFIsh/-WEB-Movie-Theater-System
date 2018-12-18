package admin;

public class TicketDTO {

	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public int getSCREEN_NUMBER() {
		return SCREEN_NUMBER;
	}
	public void setSCREEN_NUMBER(int sCREEN_NUMGER) {
		SCREEN_NUMBER = sCREEN_NUMGER;
	}
	public String getSEAT_NUMBER() {
		return SEAT_NUMBER;
	}
	public void setSEAT_NUMBER(String sEAT_NUMBER) {
		SEAT_NUMBER = sEAT_NUMBER;
	}
	public String getSCREEN_DATE() {
		return SCREEN_DATE;
	}
	public void setSCREEN_DATE(String sCREEN_DATE) {
		SCREEN_DATE = sCREEN_DATE;
	}
	String MEMBER_ID;
	int SCREEN_NUMBER;
	String SEAT_NUMBER;
	String SCREEN_DATE;
	
}
