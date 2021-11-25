package kr.or.fms.hq.dto;

import java.util.Date;

import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.logis.dto.LogisVO;


public class OutVO {
	private String out_code;        //출고번호
	private String hq_goods_code;   //본사물품코드
	private String hq_goods_name;   //본사물품명
	private String logis_code;      //물류센터코드
	private String out_loca_type;   //출고지유형
	private String out_loca;        //도착지
	private Date out_date;			//출고일자
	private String outDate;			//출고일자
	private String out_st;			//출고상태
	private int out_num;			//출고수
	private String fran_name;		//가맹점명
	private String logis_name;		//물류센터명
	private String out_loca_name;	//출고지명
	
	private LogisVO logisVO;
	private FranVO franVO;
	private HqGoodsVO hqGoodsVO;
	
	
	
	public String getLogis_name() {
		return logis_name;
	}
	public void setLogis_name(String logis_name) {
		this.logis_name = logis_name;
	}
	public void setFran_name(String fran_name) {
		this.fran_name = fran_name;
	}
	public FranVO getFranVO() {
		return franVO;
	}
	public void setFranVO(FranVO franVO) {
		this.franVO = franVO;
	}
	public HqGoodsVO getHqGoodsVO() {
		return hqGoodsVO;
	}
	public String getHq_goods_name() {
		return hq_goods_name;
	}
	public void setHq_goods_name(String hq_goods_name) {
		this.hq_goods_name = hq_goods_name;
	}
	public String getOut_loca_name() {
		return out_loca_name;
	}
	public void setOut_loca_name(String out_loca_name) {
		this.out_loca_name = out_loca_name;
	}
	public String getFran_name() {
		return fran_name;
	}
	public void setHqGoodsVO(HqGoodsVO hqGoodsVO) {
		this.hqGoodsVO = hqGoodsVO;
	}
	public LogisVO getLogisVO() {
		return logisVO;
	}
	public void setLogisVO(LogisVO logisVO) {
		this.logisVO = logisVO;
	}
	public String getOutDate() {
		return outDate;
	}
	public void setOutDate(String outDate) {
		this.outDate = outDate;
	}
	public String getOut_code() {
		return out_code;
	}
	public void setOut_code(String out_code) {
		this.out_code = out_code;
	}
	public String getHq_goods_code() {
		return hq_goods_code;
	}
	public void setHq_goods_code(String hq_goods_code) {
		this.hq_goods_code = hq_goods_code;
	}
	public String getLogis_code() {
		return logis_code;
	}
	public void setLogis_code(String logis_code) {
		this.logis_code = logis_code;
	}
	public String getOut_loca_type() {
		return out_loca_type;
	}
	public void setOut_loca_type(String out_loca_type) {
		this.out_loca_type = out_loca_type;
	}
	public String getOut_loca() {
		return out_loca;
	}
	public void setOut_loca(String out_loca) {
		this.out_loca = out_loca;
	}
	public Date getOut_date() {
		return out_date;
	}
	public void setOut_date(Date out_date) {
		this.out_date = out_date;
	}
	public String getOut_st() {
		return out_st;
	}
	public void setOut_st(String out_st) {
		this.out_st = out_st;
	}
	public int getOut_num() {
		return out_num;
	}
	public void setOut_num(int out_num) {
		this.out_num = out_num;
	}
	
	
	
	
}
