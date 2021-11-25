package kr.or.fms.fran.dto;

import java.util.Date;

public class FranNoticeReply {
	private String fran_reply_code;    // 댓글코드
	private String fran_code;          // 가맹점코드
	private String emp_no;             // 사원번호
	private Date fran_reply_date;      // 댓글등록일자
	private String fran_reply_content; //댓글내용
	private int fran_reply_scope;      //공개범위
	public String getFran_reply_code() {
		return fran_reply_code;
	}
	public void setFran_reply_code(String fran_reply_code) {
		this.fran_reply_code = fran_reply_code;
	}
	public String getFran_code() {
		return fran_code;
	}
	public void setFran_code(String fran_code) {
		this.fran_code = fran_code;
	}
	public String getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}
	public Date getFran_reply_date() {
		return fran_reply_date;
	}
	public void setFran_reply_date(Date fran_reply_date) {
		this.fran_reply_date = fran_reply_date;
	}
	public String getFran_reply_content() {
		return fran_reply_content;
	}
	public void setFran_reply_content(String fran_reply_content) {
		this.fran_reply_content = fran_reply_content;
	}
	public int getFran_reply_scope() {
		return fran_reply_scope;
	}
	public void setFran_reply_scope(int fran_reply_scope) {
		this.fran_reply_scope = fran_reply_scope;
	}




}
