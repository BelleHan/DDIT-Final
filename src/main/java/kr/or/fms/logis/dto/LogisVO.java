package kr.or.fms.logis.dto;
									/* 물류센터 */
public class LogisVO {
	
	private String logis_code;			//물류센터코드
	private String logis_local_num;		//지역번호
	private String logis_name;			//물류센터명

	private String logis_owner;			//대표자
	private String logis_tel;			//물류센터전화번호
	private String logis_email;			//물류센터이메일
	private String logis_business_no;	//사업자번호
	private int logis_zip;			//우편번호
	private String logis_addr;			//주소
	private String logis_detail_addr;	//상세주소
	
	private String logis_contract_st;		//물류센터계약상태
	private String logis_reg_st;			//물류센터등록상태
	
	private String hq_code;				//본사코드
	private String logis_pwd; 			//물류센터패스워드
	private String authority;			//권한

	public String getLogis_code() {
		return logis_code;
	}
	public void setLogis_code(String logis_code) {
		this.logis_code = logis_code;
	}
	public String getLogis_local_num() {
		return logis_local_num;
	}
	public void setLogis_local_num(String logis_local_num) {
		this.logis_local_num = logis_local_num;
	}
	public String getLogis_name() {
		return logis_name;
	}
	public void setLogis_name(String logis_name) {
		this.logis_name = logis_name;
	}
	public String getLogis_owner() {
		return logis_owner;
	}
	public void setLogis_owner(String logis_owner) {
		this.logis_owner = logis_owner;
	}
	public String getLogis_tel() {
		return logis_tel;
	}
	public void setLogis_tel(String logis_tel) {
		this.logis_tel = logis_tel;
	}
	public String getLogis_email() {
		return logis_email;
	}
	public void setLogis_email(String logis_email) {
		this.logis_email = logis_email;
	}
	public String getLogis_business_no() {
		return logis_business_no;
	}
	public void setLogis_business_no(String logis_business_no) {
		this.logis_business_no = logis_business_no;
	}
	public int getLogis_zip() {
		return logis_zip;
	}
	public void setLogis_zip(int logis_zip) {
		this.logis_zip = logis_zip;
	}
	public String getLogis_addr() {
		return logis_addr;
	}
	public void setLogis_addr(String logis_addr) {
		this.logis_addr = logis_addr;
	}
	public String getLogis_detail_addr() {
		return logis_detail_addr;
	}
	public void setLogis_detail_addr(String logis_detail_addr) {
		this.logis_detail_addr = logis_detail_addr;
	}
	public String getLogis_contract_st() {
		return logis_contract_st;
	}
	public void setLogis_contract_st(String logis_contract_st) {
		this.logis_contract_st = logis_contract_st;
	}
	public String getLogis_reg_st() {
		return logis_reg_st;
	}
	public void setLogis_reg_st(String logis_reg_st) {
		this.logis_reg_st = logis_reg_st;
	}
	public String getHq_code() {
		return hq_code;
	}
	public void setHq_code(String hq_code) {
		this.hq_code = hq_code;
	}
	public String getLogis_pwd() {
		return logis_pwd;
	}
	public void setLogis_pwd(String logis_pwd) {
		this.logis_pwd = logis_pwd;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	

}
