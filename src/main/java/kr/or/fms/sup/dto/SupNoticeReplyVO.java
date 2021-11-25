package kr.or.fms.sup.dto;
								/* 공급업체 게시판 댓글 */
import java.util.Date;

public class SupNoticeReplyVO {

	private String sup_code;			
	private String sup_reply_code;		//댓글코드
	private String emp_no;				//사원번호
	private Date sup_reply_date;		//댓글등록일자
	private String sup_reply_content;	//댓글내용
	private int sup_reply_scope;		//공개범위
	
	public String getSup_code() {
		return sup_code;
	}
	public void setSup_code(String sup_code) {
		this.sup_code = sup_code;
	}
	public String getSup_reply_code() {
		return sup_reply_code;
	}
	public void setSup_reply_code(String sup_reply_code) {
		this.sup_reply_code = sup_reply_code;
	}
	public String getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}
	public Date getSup_reply_date() {
		return sup_reply_date;
	}
	public void setSup_reply_date(Date sup_reply_date) {
		this.sup_reply_date = sup_reply_date;
	}
	public String getSup_reply_content() {
		return sup_reply_content;
	}
	public void setSup_reply_content(String sup_reply_content) {
		this.sup_reply_content = sup_reply_content;
	}
	public int getSup_reply_scope() {
		return sup_reply_scope;
	}
	public void setSup_reply_scope(int sup_reply_scope) {
		this.sup_reply_scope = sup_reply_scope;
	}
	
}
