package kr.or.fms.sup.dto;
									/* 공급업체계좌정보 */
public class SupAccountInfoVO {

	private String sup_account_code;	//공급업체계좌정보코드
	private String sup_account_no;		//공급업체계좌번호
	
	public String getSup_account_code() {
		return sup_account_code;
	}
	public void setSup_account_code(String sup_account_code) {
		this.sup_account_code = sup_account_code;
	}
	public String getSup_account_no() {
		return sup_account_no;
	}
	public void setSup_account_no(String sup_account_no) {
		this.sup_account_no = sup_account_no;
	}
	
}
