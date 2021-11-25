package kr.or.fms.command;

import kr.or.fms.hq.dto.FranStockVO;

public class SafeModifyCommand {
	
	private String fran_code;
	private String fran_safe_stock;
	private String fran_suit_stock;
	private String hq_goods_code;
	
	
	
	public String getHq_goods_code() {
		return hq_goods_code;
	}
	public void setHq_goods_code(String hq_goods_code) {
		this.hq_goods_code = hq_goods_code;
	}
	public String getFran_code() {
		return fran_code;
	}
	public void setFran_code(String fran_code) {
		this.fran_code = fran_code;
	}
	
	
	public String getFran_safe_stock() {
		return fran_safe_stock;
	}
	public void setFran_safe_stock(String fran_safe_stock) {
		this.fran_safe_stock = fran_safe_stock;
	}
	public String getFran_suit_stock() {
		return fran_suit_stock;
	}
	public void setFran_suit_stock(String fran_suit_stock) {
		this.fran_suit_stock = fran_suit_stock;
	}
	public FranStockVO toFranSafeVO() {
		FranStockVO stVO = new FranStockVO();
		stVO.setFran_code(this.fran_code);
		stVO.setFran_safe_stock(this.fran_safe_stock);
		stVO.setFran_safe_stock(this.fran_safe_stock);
		stVO.setFran_suit_stock(this.fran_suit_stock);
		stVO.setHq_goods_code(this.hq_goods_code);
		return stVO;
	}
	
}
