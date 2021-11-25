package kr.or.fms.sup.dto;
									/* 입고내역 */
public class WhInListVO {

	private String in_code;			//입고코드
	private String goods_pur_code;	//물품구매코드
	private String sup_goods_code;	//공급업체물품코드
	private int in_num;				//입고수량
	
	public String getIn_code() {
		return in_code;
	}
	public void setIn_code(String in_code) {
		this.in_code = in_code;
	}
	public String getGoods_pur_code() {
		return goods_pur_code;
	}
	public void setGoods_pur_code(String goods_pur_code) {
		this.goods_pur_code = goods_pur_code;
	}
	public String getSup_goods_code() {
		return sup_goods_code;
	}
	public void setSup_goods_code(String sup_goods_code) {
		this.sup_goods_code = sup_goods_code;
	}
	public int getIn_num() {
		return in_num;
	}
	public void setIn_num(int in_num) {
		this.in_num = in_num;
	}
	
	
	
	
}
