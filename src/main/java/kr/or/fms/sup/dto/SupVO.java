package kr.or.fms.sup.dto;
									/* 공급업체 */
public class SupVO {
	
	private String sup_code;		//공급업체코드
	private String hq_code;			//본사코드
	private String sup_pwd;			//공급업체 패스워드
	private String sup_local_num;	//지역코드
	private String sup_tel;			//공급업체전화번호
	private String sup_contract_st;	//공급업체 계약상태(1 계약중 2계약완료)
	private String sup_owner;		//공급업체대표자명
	private String sup_name;		//공급업체회사명
	private String sup_reg_st;		//공급업체등록상태
	private String sup_zip;			//공급업체우편번호
	private String sup_email;		//공급업체이메일
	private String sup_addr;		//공급업체주소
	private String sup_detail_addr;	//공급업체상세주소
	private String sup_prod;		//공급업체주요품목(생필품...)
	private String sup_business_no;	//사업자번호
	
	private String sup_account;		//공급업체계좌번호
	private String sup_bank;		//계좌번호 은행
//	private String authority;		//권한
	
	public String getSup_account() {
		return sup_account;
	}

	public void setSup_account(String sup_account) {
		this.sup_account = sup_account;
	}

	public String getSup_bank() {
		return sup_bank;
	}
	public void setSup_bank(String sup_bank) {
		this.sup_bank = sup_bank;
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
	public String getSup_pwd() {
		return sup_pwd;
	}
	public void setSup_pwd(String sup_pwd) {
		this.sup_pwd = sup_pwd;
	}
	public String getSup_local_num() {
		return sup_local_num;
	}
	public void setSup_local_num(String sup_local_num) {
		this.sup_local_num = sup_local_num;
	}
	public String getSup_tel() {
		return sup_tel;
	}
	public void setSup_tel(String sup_tel) {
		this.sup_tel = sup_tel;
	}
	public String getSup_contract_st() {
		return sup_contract_st;
	}
	public void setSup_contract_st(String sup_contract_st) {
		this.sup_contract_st = sup_contract_st;
	}
	public String getSup_owner() {
		return sup_owner;
	}
	public void setSup_owner(String sup_owner) {
		this.sup_owner = sup_owner;
	}
	public String getSup_name() {
		return sup_name;
	}
	public void setSup_name(String sup_name) {
		this.sup_name = sup_name;
	}
	public String getSup_reg_st() {
		return sup_reg_st;
	}
	public void setSup_reg_st(String sup_reg_st) {
		this.sup_reg_st = sup_reg_st;
	}
	public String getSup_zip() {
		return sup_zip;
	}
	public void setSup_zip(String sup_zip) {
		this.sup_zip = sup_zip;
	}
	public String getSup_email() {
		return sup_email;
	}
	public void setSup_email(String sup_email) {
		this.sup_email = sup_email;
	}
	public String getSup_addr() {
		return sup_addr;
	}
	public void setSup_addr(String sup_addr) {
		this.sup_addr = sup_addr;
	}
	public String getSup_detail_addr() {
		return sup_detail_addr;
	}
	public void setSup_detail_addr(String sup_detail_addr) {
		this.sup_detail_addr = sup_detail_addr;
	}
	public String getSup_prod() {
		return sup_prod;
	}
	public void setSup_prod(String sup_prod) {
		this.sup_prod = sup_prod;
	}
	public String getSup_business_no() {
		return sup_business_no;
	}
	public void setSup_business_no(String sup_business_no) {
		this.sup_business_no = sup_business_no;
	}
	
}
