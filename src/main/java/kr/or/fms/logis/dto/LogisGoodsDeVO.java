package kr.or.fms.logis.dto;
									/* 물류센터물품상세 */
public class LogisGoodsDeVO {
	
	private String hq_goods_code;	//본사물품코드
	private String wh_code;			//창고코드
	private String logis_code;		//물류센터코드
	private int logis_goods_stock;	//물품재고량
	private int logis_safe_stock;	//안전재고량
	private int logis_suit_stock;	//적정재고량

	public String getHq_goods_code() {
		return hq_goods_code;
	}
	public void setHq_goods_code(String hq_goods_code) {
		this.hq_goods_code = hq_goods_code;
	}
	public String getWh_code() {
		return wh_code;
	}
	public String getLogis_code() {
		return logis_code;
	}
	public void setLogis_code(String logis_code) {
		this.logis_code = logis_code;
	}
	public void setWh_code(String wh_code) {
		this.wh_code = wh_code;
	}
	public int getLogis_goods_stock() {
		return logis_goods_stock;
	}
	public void setLogis_goods_stock(int logis_goods_stock) {
		this.logis_goods_stock = logis_goods_stock;
	}
	public int getLogis_safe_stock() {
		return logis_safe_stock;
	}
	public void setLogis_safe_stock(int logis_safe_stock) {
		this.logis_safe_stock = logis_safe_stock;
	}
	public int getLogis_suit_stock() {
		return logis_suit_stock;
	}
	public void setLogis_suit_stock(int logis_suit_stock) {
		this.logis_suit_stock = logis_suit_stock;
	}

}
