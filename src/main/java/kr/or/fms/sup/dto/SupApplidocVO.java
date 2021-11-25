package kr.or.fms.sup.dto;
								/* 공급업체 신청서 */
import java.sql.Date;

public class SupApplidocVO {

	private String sup_applidoc_code;	//공급업체신청서코드
	private String sup_code;			//공급업체코드
	private String hq_code;				//본사코드
	private Date sup_appli_date;		//신청일자
	private int sup_appli_st;			//신청승인상태
	private int attach_no;				//첨부파일일련번호
	
	public String getSup_applidoc_code() {
		return sup_applidoc_code;
	}
	public void setSup_applidoc_code(String sup_applidoc_code) {
		this.sup_applidoc_code = sup_applidoc_code;
	}
	public String getSup_code() {
		return sup_code;
	}
	public void setSup_code(String sup_code) {
		this.sup_code = sup_code;
	}
	public String getHq_code() {
		return hq_code;
	}
	public void setHq_code(String hq_code) {
		this.hq_code = hq_code;
	}
	public Date getSup_appli_date() {
		return sup_appli_date;
	}
	public void setSup_appli_date(Date sup_appli_date) {
		this.sup_appli_date = sup_appli_date;
	}
	public int getSup_appli_st() {
		return sup_appli_st;
	}
	public void setSup_appli_st(int sup_appli_st) {
		this.sup_appli_st = sup_appli_st;
	}
	public int getAttach_no() {
		return attach_no;
	}
	public void setAttach_no(int attach_no) {
		this.attach_no = attach_no;
	}
	
}
