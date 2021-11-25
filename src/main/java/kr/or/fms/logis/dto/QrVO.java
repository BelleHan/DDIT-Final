package kr.or.fms.logis.dto;

public class QrVO {
	
	 private String hq_goods_code;
	 private String hq_goods_name;
	 private int actual_stock;
	 private int logis_goods_stock;
	 private String logis_code;
	 private String wh_code;

	
	public String getLogis_code() {
		return logis_code;
	}
	public void setLogis_code(String logis_code) {
		this.logis_code = logis_code;
	}
	public String getWh_code() {
		return wh_code;
	}
	public void setWh_code(String wh_code) {
		this.wh_code = wh_code;
	}
	public String getHq_goods_code() {
		return hq_goods_code;
	}
	public void setHq_goods_code(String hq_goods_code) {
		this.hq_goods_code = hq_goods_code;
	}
	public String getHq_goods_name() {
		return hq_goods_name;
	}
	public void setHq_goods_name(String hq_goods_name) {
		this.hq_goods_name = hq_goods_name;
	}
	public int getActual_stock() {
		return actual_stock;
	}
	public void setActual_stock(int actual_stock) {
		this.actual_stock = actual_stock;
	}
	public int getLogis_goods_stock() {
		return logis_goods_stock;
	}
	public void setLogis_goods_stock(int logis_goods_stock) {
		this.logis_goods_stock = logis_goods_stock;
	}
	 
	 

}
