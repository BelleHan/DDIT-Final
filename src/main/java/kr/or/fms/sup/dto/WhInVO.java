package kr.or.fms.sup.dto;
									/* 입고 */
import java.util.Date;

public class WhInVO {

	private String in_code;		//입고코드
	private String logis_code;	//물류센터코드
	private String in_location;	//입고지
	private Date in_date;		//입고일자	
	private int in_total;		//입고총수량
	private int in_st;			//입고상태
	
	public String getIn_code() {
		return in_code;
	}
	public void setIn_code(String in_code) {
		this.in_code = in_code;
	}
	public String getLogis_code() {
		return logis_code;
	}
	public void setLogis_code(String logis_code) {
		this.logis_code = logis_code;
	}
	public String getIn_location() {
		return in_location;
	}
	public void setIn_location(String in_location) {
		this.in_location = in_location;
	}
	public Date getIn_date() {
		return in_date;
	}
	public void setIn_date(Date in_date) {
		this.in_date = in_date;
	}
	public int getIn_total() {
		return in_total;
	}
	public void setIn_total(int in_total) {
		this.in_total = in_total;
	}
	public int getIn_st() {
		return in_st;
	}
	public void setIn_st(int in_st) {
		this.in_st = in_st;
	}
	
	
}
