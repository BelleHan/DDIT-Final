package kr.or.fms.command;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.or.fms.dto.ReturnDetailVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.hq.dto.HqGoodsVO;

public class FranReturnReqRegistCommand {

	private String return_code;
	private String return_title;
	private String return_reason_code;
	private String return_reason;
	

	private String hq_goods_name;
	private int return_quan;
	private Date return_apply_date;
	private String return_check_st;
	private String hq_goods_code;
	private HqGoodsVO hqGoodsVO;
	private ReturnDetailVO returnDetailVO;
	private String fran_code;
	private List<MultipartFile> uploadFile;
	
	public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}
	public String getReturn_reason() {
		return return_reason;
	}
	public void setReturn_reason(String return_reason) {
		this.return_reason = return_reason;
	}
	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getFran_code() {
		return fran_code;
	}
	public void setFran_code(String fran_code) {
		this.fran_code = fran_code;
	}
	public Date getReturn_apply_date() {
		return return_apply_date;
	}
	public void setReturn_apply_date(Date return_apply_date) {
		this.return_apply_date = return_apply_date;
	}
	public String getReturn_check_st() {
		return return_check_st;
	}
	public void setReturn_check_st(String return_check_st) {
		this.return_check_st = return_check_st;
	}
	public HqGoodsVO getHqGoodsVO() {
		return hqGoodsVO;
	}
	public void setHqGoodsVO(HqGoodsVO hqGoodsVO) {
		this.hqGoodsVO = hqGoodsVO;
	}
	public ReturnDetailVO getReturnDetailVO() {
		return returnDetailVO;
	}
	public void setReturnDetailVO(ReturnDetailVO returnDetailVO) {
		this.returnDetailVO = returnDetailVO;
	}
	public int getReturn_quan() {
		return return_quan;
	}
	public void setReturn_quan(int return_quan) {
		this.return_quan = return_quan;
	}
	public String getHq_goods_name() {
		return hq_goods_name;
	}
	public void setHq_goods_name(String hq_goods_name) {
		this.hq_goods_name = hq_goods_name;
	}
	public String getReturn_code() {
		return return_code;
	}
	public void setReturn_code(String return_code) {
		this.return_code = return_code;
	}
	public String getReturn_title() {
		return return_title;
	}
	public void setReturn_title(String return_title) {
		this.return_title = return_title;
	}
	public String getReturn_reason_code() {
		return return_reason_code;
	}
	public void setReturn_reason_code(String return_reason_code) {
		this.return_reason_code = return_reason_code;
	}
	public String getHq_goods_code() {
		return hq_goods_code;
	}
	public void setHq_goods_code(String hq_goods_code) {
		this.hq_goods_code = hq_goods_code;
	}
	
	public ReturnVO toReturnVO() {
		ReturnVO returnVO = new ReturnVO();
		returnVO.setReturn_code(this.return_code);
		returnVO.setReturn_title(this.return_title);
		returnVO.setReturn_reason_code(this.return_reason_code);
		returnVO.setReturn_reason(this.return_reason);
		returnVO.setReturn_check_st(this.return_check_st);
		returnVO.setFran_code(this.fran_code);
		return returnVO;
	}
	
	public ReturnDetailVO toReturnDetailVO() {
		ReturnDetailVO returnDetailVO = new ReturnDetailVO();
		returnDetailVO.setReturn_code(this.return_code);
		returnDetailVO.setHq_goods_code(this.hq_goods_code);
		returnDetailVO.setReturn_quan(this.return_quan);
		
		return returnDetailVO;
	}
}
