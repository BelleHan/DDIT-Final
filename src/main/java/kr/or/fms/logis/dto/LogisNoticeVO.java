package kr.or.fms.logis.dto;
									/* 물류센터게시글 */
import java.util.Date;

public class LogisNoticeVO {

	private String logis_code;			//물류센터코드(ex.LOGIS001)
	private String emp_no;				//사원번호
	private int attach_no;				//첨부파일일련번호
	private String logis_notice_title;	//물류센터게시글제목
	private Date logis_notice_date;		//물류센터게시글등록일자
	private int logis_notice_st;		//물류센터게시글상태(진행중/완료)
	private String logis_remark;		//비고
	
	public String getLogis_code() {
		return logis_code;
	}
	public void setLogis_code(String logis_code) {
		this.logis_code = logis_code;
	}
	public String getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}
	public int getAttach_no() {
		return attach_no;
	}
	public void setAttach_no(int attach_no) {
		this.attach_no = attach_no;
	}
	public String getLogis_notice_title() {
		return logis_notice_title;
	}
	public void setLogis_notice_title(String logis_notice_title) {
		this.logis_notice_title = logis_notice_title;
	}
	public Date getLogis_notice_date() {
		return logis_notice_date;
	}
	public void setLogis_notice_date(Date logis_notice_date) {
		this.logis_notice_date = logis_notice_date;
	}
	public int getLogis_notice_st() {
		return logis_notice_st;
	}
	public void setLogis_notice_st(int logis_notice_st) {
		this.logis_notice_st = logis_notice_st;
	}
	public String getLogis_remark() {
		return logis_remark;
	}
	public void setLogis_remark(String logis_remark) {
		this.logis_remark = logis_remark;
	}
	
	
	
	
}
