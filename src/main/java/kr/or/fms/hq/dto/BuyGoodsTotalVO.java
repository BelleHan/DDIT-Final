package kr.or.fms.hq.dto;

import java.util.Date;

public class BuyGoodsTotalVO {
	
	private String goods_pur_code;
	private Date goods_pur_date;
	private int goods_pur_price;
	private String goods_pur_st;
	private Date pur_arrive_date;
	private String pur_note;
	private String pur_arrive_loc;
	private int goods_pur_quan;
	private String sup_goods_code;
	private String sup_goods_name;
	
	private int goods_num;
	private int goods_price;
	
	
	public String getGoods_pur_code() {
		return goods_pur_code;
	}
	public void setGoods_pur_code(String goods_pur_code) {
		this.goods_pur_code = goods_pur_code;
	}
	public Date getGoods_pur_date() {
		return goods_pur_date;
	}
	public void setGoods_pur_date(Date goods_pur_date) {
		this.goods_pur_date = goods_pur_date;
	}
	public int getGoods_pur_price() {
		return goods_pur_price;
	}
	public void setGoods_pur_price(int goods_pur_price) {
		this.goods_pur_price = goods_pur_price;
	}
	public String getGoods_pur_st() {
		return goods_pur_st;
	}
	public void setGoods_pur_st(String goods_pur_st) {
		this.goods_pur_st = goods_pur_st;
	}
	public Date getPur_arrive_date() {
		return pur_arrive_date;
	}
	public void setPur_arrive_date(Date pur_arrive_date) {
		this.pur_arrive_date = pur_arrive_date;
	}
	public String getPur_note() {
		return pur_note;
	}
	public void setPur_note(String pur_note) {
		this.pur_note = pur_note;
	}
	public String getPur_arrive_loc() {
		return pur_arrive_loc;
	}
	public void setPur_arrive_loc(String pur_arrive_loc) {
		this.pur_arrive_loc = pur_arrive_loc;
	}
	public int getGoods_pur_quan() {
		return goods_pur_quan;
	}
	public void setGoods_pur_quan(int goods_pur_quan) {
		this.goods_pur_quan = goods_pur_quan;
	}
	public String getSup_goods_code() {
		return sup_goods_code;
	}
	public void setSup_goods_code(String sup_goods_code) {
		this.sup_goods_code = sup_goods_code;
	}
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getSup_goods_name() {
		return sup_goods_name;
	}
	public void setSup_goods_name(String sup_goods_name) {
		this.sup_goods_name = sup_goods_name;
	}
	
	

}
