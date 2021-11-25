package kr.or.fms.command;

import java.util.Date;

import kr.or.fms.fran.dto.FranNoticeVO;

public class FranNoticeRegistCommand {

	private String fran_notice_num;			//게시글번호
	private String fran_code;			//가맹점코드
	private String emp_no;				//직원코드(작성자)
	private int attach_no;				//첨부파일일련번호
	private Date fran_notice_date;		//게시글등록일자
	private String fran_notice_st;			//게시글상태
	private String fran_notice_title;	//게시글제목
	private String fran_remark;			//비고
	private String fran_applidoc_code;	//가맹점신청코드
	private String emp_name;				//(작성자 이름)
	
	public String getFran_notice_num() {
		return fran_notice_num;
	}
	public void setFran_notice_num(String fran_notice_num) {
		this.fran_notice_num = fran_notice_num;
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
	public int getAttach_no() {
		return attach_no;
	}
	public void setAttach_no(int attach_no) {
		this.attach_no = attach_no;
	}
	public Date getFran_notice_date() {
		return fran_notice_date;
	}
	public void setFran_notice_date(Date fran_notice_date) {
		this.fran_notice_date = fran_notice_date;
	}
	public String getFran_notice_st() {
		return fran_notice_st;
	}
	public void setFran_notice_st(String fran_notice_st) {
		this.fran_notice_st = fran_notice_st;
	}
	public String getFran_notice_title() {
		return fran_notice_title;
	}
	public void setFran_notice_title(String fran_notice_title) {
		this.fran_notice_title = fran_notice_title;
	}
	public String getFran_remark() {
		return fran_remark;
	}
	public void setFran_remark(String fran_remark) {
		this.fran_remark = fran_remark;
	}
	public String getFran_applidoc_code() {
		return fran_applidoc_code;
	}
	public void setFran_applidoc_code(String fran_applidoc_code) {
		this.fran_applidoc_code = fran_applidoc_code;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	
	public FranNoticeVO toFranNoticeVO() {
		FranNoticeVO frannotice = new FranNoticeVO();
		frannotice.setFran_notice_num(this.fran_notice_num);
		frannotice.setFran_notice_title(this.fran_notice_title);
		frannotice.setEmp_name(this.emp_name);
		frannotice.setFran_notice_date(new Date());
		
		return frannotice;
	}
	
	
}
