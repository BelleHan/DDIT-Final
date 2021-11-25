package kr.or.fms.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.or.fms.fran.dto.FranAppliDocVO;
import kr.or.fms.fran.dto.FranVO;

public class FranApplyReqRegistCommand {

	private String fran_code;			//가맹점코드
	private String hq_code;				//본사코드
	private String fran_owner;			//가맹점주명
	private String fran_tel;			//가맹점전화번호
	private String fran_email;			//가맹점이메일
	private String fran_se;				//점포구분(1.본인 2.임대)
	private String fran_zip;				//가맹점우편번호
	private String fran_addr;			//가맹점 주소
	private String fran_detail_addr;	//가맹점상세주소
	private String land_area;			//토지면적
	private String dedicated_area;		//전용면적
	private String floor;				//층
	private String fran_applidoc_code;	//신청코드
	private int fran_gtn;				//보증금
	private int fran_rent_charge;		//임대료
	private int fran_manage_cost;		//관리비
	private String fran_memo;				//상제내용
	
	
	private FranVO franVO;
	private FranAppliDocVO franAppliDocVO;
	private List<MultipartFile> uploadFile;
	
	
	public String getHq_code() {
		return hq_code;
	}

	public void setHq_code(String hq_code) {
		this.hq_code = hq_code;
	}

	public String getFran_code() {
		return fran_code;
	}

	public void setFran_code(String fran_code) {
		this.fran_code = fran_code;
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

	public String getFran_addr() {
		return fran_addr;
	}

	public void setFran_addr(String fran_addr) {
		this.fran_addr = fran_addr;
	}

	public String getFran_detail_addr() {
		return fran_detail_addr;
	}

	public void setFran_detail_addr(String fran_detail_addr) {
		this.fran_detail_addr = fran_detail_addr;
	}

	public String getLand_area() {
		return land_area;
	}

	public void setLand_area(String land_area) {
		this.land_area = land_area;
	}

	public String getDedicated_area() {
		return dedicated_area;
	}

	public void setDedicated_area(String dedicated_area) {
		this.dedicated_area = dedicated_area;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getFran_applidoc_code() {
		return fran_applidoc_code;
	}

	public void setFran_applidoc_code(String fran_applidoc_code) {
		this.fran_applidoc_code = fran_applidoc_code;
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

	public String getFran_memo() {
		return fran_memo;
	}

	public void setFran_memo(String fran_memo) {
		this.fran_memo = fran_memo;
	}

	public FranVO getFranVO() {
		return franVO;
	}

	public void setFranVO(FranVO franVO) {
		this.franVO = franVO;
	}

	public FranAppliDocVO getFranAppliDocVO() {
		return franAppliDocVO;
	}

	public void setFranAppliDocVO(FranAppliDocVO franAppliDocVO) {
		this.franAppliDocVO = franAppliDocVO;
	}

	public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}

	public FranVO tofranVO() {
		FranVO franVO = new FranVO();
		franVO.setHq_code(this.hq_code);
		franVO.setFran_code(this.fran_code);
		franVO.setFran_owner(this.fran_owner);
		franVO.setFran_tel(this.fran_tel);
		franVO.setFran_email(this.fran_email);
		franVO.setFran_se(this.fran_se);
		franVO.setFran_zip(this.fran_zip);
		franVO.setFran_addr(this.fran_addr);
		franVO.setFran_detail_addr(this.fran_detail_addr);
		franVO.setLand_area(this.land_area);
		franVO.setDedicated_area(this.dedicated_area);
		franVO.setFloor(this.floor);
		franVO.setFran_gtn(this.fran_gtn);
		franVO.setFran_rent_charge(this.fran_rent_charge);
		franVO.setFran_manage_cost(this.fran_manage_cost);
		return franVO;
	}
	
	public FranAppliDocVO toFranAppliDocVO() {
		FranAppliDocVO franAppliDocVO = new FranAppliDocVO();
		franAppliDocVO.setFran_applidoc_code(this.fran_applidoc_code);
		franAppliDocVO.setFran_code(this.fran_code);
		franAppliDocVO.setHq_code(this.hq_code);
		franAppliDocVO.setFran_memo(this.fran_memo);
		
		return franAppliDocVO;
	}
}
