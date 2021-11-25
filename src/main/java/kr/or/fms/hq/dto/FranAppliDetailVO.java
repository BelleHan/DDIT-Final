package kr.or.fms.hq.dto;

import java.util.Date;
import java.util.List;

import kr.or.fms.dto.AttachVO;

public class FranAppliDetailVO {
	
	
    private String fran_owner;
    private String fran_tel;
    private String fran_email;
    private String fran_code;
    private String fran_se;
    private String fran_zip;
    private String fran_detail_addr;
    private String fran_addr;
    private String dedicated_area; //전용면적
    private String land_area; //토지면적
    private String floor;
    private int fran_gtn;
    private int fran_rent_charge;
    private int fran_manage_cost;
    private int attach_no;
    private String fran_applidoc_code;
    private String fran_memo;
    private String fran_applidoc_appr_st;
	private String fran_reg_st;
	private Date fran_appli_date;

	private List<AttachVO> attachList;
    
	public List<AttachVO> getAttachList() {
		return attachList;
	}
	public void setAttachList(List<AttachVO> attachList) {
		this.attachList = attachList;
	}
    public String getFran_reg_st() {
		return fran_reg_st;
	}
	public void setFran_reg_st(String fran_reg_st) {
		this.fran_reg_st = fran_reg_st;
	}
	public Date getFran_appli_date() {
		return fran_appli_date;
	}
	public void setFran_appli_date(Date fran_appli_date) {
		this.fran_appli_date = fran_appli_date;
	}
	
	public String getFran_owner() {
		return fran_owner;
	}
	public void setFran_owner(String fran_owner) {
		this.fran_owner = fran_owner;
	}
	public String getFran_tel() {
		return fran_tel;
	}
	public void setFran_tel(String fran_tel) {
		this.fran_tel = fran_tel;
	}
	public String getFran_email() {
		return fran_email;
	}
	public void setFran_email(String fran_email) {
		this.fran_email = fran_email;
	}
	public String getFran_code() {
		return fran_code;
	}
	public void setFran_code(String fran_code) {
		this.fran_code = fran_code;
	}
	public String getFran_se() {
		return fran_se;
	}
	public void setFran_se(String fran_se) {
		this.fran_se = fran_se;
	}
	public String getFran_zip() {
		return fran_zip;
	}
	public void setFran_zip(String fran_zip) {
		this.fran_zip = fran_zip;
	}
	public String getFran_detail_addr() {
		return fran_detail_addr;
	}
	public void setFran_detail_addr(String fran_detail_addr) {
		this.fran_detail_addr = fran_detail_addr;
	}
	public String getFran_addr() {
		return fran_addr;
	}
	public void setFran_addr(String fran_addr) {
		this.fran_addr = fran_addr;
	}
	public String getDedicated_area() {
		return dedicated_area;
	}
	public void setDedicated_area(String dedicated_area) {
		this.dedicated_area = dedicated_area;
	}
	public String getLand_area() {
		return land_area;
	}
	public void setLand_area(String land_area) {
		this.land_area = land_area;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public int getFran_gtn() {
		return fran_gtn;
	}
	public void setFran_gtn(int fran_gtn) {
		this.fran_gtn = fran_gtn;
	}
	public int getFran_rent_charge() {
		return fran_rent_charge;
	}
	public void setFran_rent_charge(int fran_rent_charge) {
		this.fran_rent_charge = fran_rent_charge;
	}
	public int getFran_manage_cost() {
		return fran_manage_cost;
	}
	public void setFran_manage_cost(int fran_manage_cost) {
		this.fran_manage_cost = fran_manage_cost;
	}
	public int getAttach_no() {
		return attach_no;
	}
	public void setAttach_no(int attach_no) {
		this.attach_no = attach_no;
	}
	public String getFran_applidoc_code() {
		return fran_applidoc_code;
	}
	public void setFran_applidoc_code(String fran_applidoc_code) {
		this.fran_applidoc_code = fran_applidoc_code;
	}
	public String getFran_memo() {
		return fran_memo;
	}
	public void setFran_memo(String fran_memo) {
		this.fran_memo = fran_memo;
	}
	public String getFran_applidoc_appr_st() {
		return fran_applidoc_appr_st;
	}
	public void setFran_applidoc_appr_st(String fran_applidoc_appr_st) {
		this.fran_applidoc_appr_st = fran_applidoc_appr_st;
	}
    
    

}
