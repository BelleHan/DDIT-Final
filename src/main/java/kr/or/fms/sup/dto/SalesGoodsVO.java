package kr.or.fms.sup.dto;

import java.util.Date;

public class SalesGoodsVO {
	
	private String sup_code;
    private String sup_goods_name;
    private String sup_goods_code;
    private int goods_pur_quan;
    private Date pur_arrive_date;
    private String goods_pur_st;
	public String getSup_code() {
		return sup_code;
	}
	public void setSup_code(String sup_code) {
		this.sup_code = sup_code;
	}
	public String getSup_goods_name() {
		return sup_goods_name;
	}
	public void setSup_goods_name(String sup_goods_name) {
		this.sup_goods_name = sup_goods_name;
	}
	public String getSup_goods_code() {
		return sup_goods_code;
	}
	public void setSup_goods_code(String sup_goods_code) {
		this.sup_goods_code = sup_goods_code;
	}
	public int getGoods_pur_quan() {
		return goods_pur_quan;
	}
	public void setGoods_pur_quan(int goods_pur_quan) {
		this.goods_pur_quan = goods_pur_quan;
	}
	public Date getPur_arrive_date() {
		return pur_arrive_date;
	}
	public void setPur_arrive_date(Date pur_arrive_date) {
		this.pur_arrive_date = pur_arrive_date;
	}
	public String getGoods_pur_st() {
		return goods_pur_st;
	}
	public void setGoods_pur_st(String goods_pur_st) {
		this.goods_pur_st = goods_pur_st;
	}
    
    

}
