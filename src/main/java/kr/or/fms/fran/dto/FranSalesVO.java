package kr.or.fms.fran.dto;

import java.util.Date;

public class FranSalesVO {
	private String sales_code;
	private String fran_local_num;
	private String fran_code;
	private String fran_name;
	private int sales_amount;
	private Date sales_date;
	private Date start_date;
	private Date end_date;
	private String hq_goods_code;
	private String hq_goods_name;
	private String sup_goods_laca;
	private String sup_goods_smca;
	
	public String getSup_goods_laca() {
		return sup_goods_laca;
	}
	public void setSup_goods_laca(String sup_goods_laca) {
		this.sup_goods_laca = sup_goods_laca;
	}
	public String getSup_goods_smca() {
		return sup_goods_smca;
	}
	public void setSup_goods_smca(String sup_goods_smca) {
		this.sup_goods_smca = sup_goods_smca;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getSales_code() {
		return sales_code;
	}
	public void setSales_code(String sales_code) {
		this.sales_code = sales_code;
	}
	public String getFran_local_num() {
		return fran_local_num;
	}
	public void setFran_local_num(String fran_local_num) {
		this.fran_local_num = fran_local_num;
	}
	public String getFran_code() {
		return fran_code;
	}
	public void setFran_code(String fran_code) {
		this.fran_code = fran_code;
	}
	public String getFran_name() {
		return fran_name;
	}
	public void setFran_name(String fran_name) {
		this.fran_name = fran_name;
	}
	public int getSales_amount() {
		return sales_amount;
	}
	public void setSales_amount(int sales_amount) {
		this.sales_amount = sales_amount;
	}
	public Date getSales_date() {
		return sales_date;
	}
	public void setSales_date(Date sales_date) {
		this.sales_date = sales_date;
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
}
