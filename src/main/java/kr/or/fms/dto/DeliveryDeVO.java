package kr.or.fms.dto;
									/* 배송상세 */
import java.util.Date;
									
public class DeliveryDeVO {

	private String delivery_code;			//배송코드
	private int delivery_no;				//운송장번호
	private int delivery_zip;				//배송지우편번호
	private String delevery_addr;			//배송지주소
	private String delevery_detail_addr;	//배송지상세주소
	private int delevery_st;				//배송지배송상태
	private Date delevery_end_date;			//배송완료일
	
	public String getDelivery_code() {
		return delivery_code;
	}
	public void setDelivery_code(String delivery_code) {
		this.delivery_code = delivery_code;
	}
	public int getDelivery_no() {
		return delivery_no;
	}
	public void setDelivery_no(int delivery_no) {
		this.delivery_no = delivery_no;
	}
	public int getDelivery_zip() {
		return delivery_zip;
	}
	public void setDelivery_zip(int delivery_zip) {
		this.delivery_zip = delivery_zip;
	}
	public String getDelevery_addr() {
		return delevery_addr;
	}
	public void setDelevery_addr(String delevery_addr) {
		this.delevery_addr = delevery_addr;
	}
	public String getDelevery_detail_addr() {
		return delevery_detail_addr;
	}
	public void setDelevery_detail_addr(String delevery_detail_addr) {
		this.delevery_detail_addr = delevery_detail_addr;
	}
	public int getDelevery_st() {
		return delevery_st;
	}
	public void setDelevery_st(int delevery_st) {
		this.delevery_st = delevery_st;
	}
	public Date getDelevery_end_date() {
		return delevery_end_date;
	}
	public void setDelevery_end_date(Date delevery_end_date) {
		this.delevery_end_date = delevery_end_date;
	}
	
	
	
	
	
	
	
}
