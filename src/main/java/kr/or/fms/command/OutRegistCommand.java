package kr.or.fms.command;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import kr.or.fms.hq.dto.OutVO;

public class OutRegistCommand {
	private String out_code;        //출고번호
	private String hq_goods_code;   //본사물품코드
	private String logis_code;      //물류센터코드
	private String out_loca_type;   //출고지유형
	private String out_loca_Fran;     //도착지
	private String out_loca_Logis;     //도착지
	private Date out_date;			//출고일자
	private String out_st;			//출고상태
	private int out_num;			//출고수량
	private String page;			// 페이지
	
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public void setOut_date(Date out_date) {
		this.out_date = out_date;
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
	
	public String getOut_loca_Fran() {
		return out_loca_Fran;
	}
	public void setOut_loca_Fran(String out_loca_Fran) {
		this.out_loca_Fran = out_loca_Fran;
	}
	public String getOut_loca_Logis() {
		return out_loca_Logis;
	}
	public void setOut_loca_Logis(String out_loca_Logis) {
		this.out_loca_Logis = out_loca_Logis;
	}
	public Date getOut_date() {
		return out_date;
	}
	public void setOut_date(String out_date) {
		try {
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			this.out_date = transFormat.parse(out_date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
//		this.out_date = out_date;
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
	
	public OutVO toOutVO() {
		OutVO out = new OutVO();
		out.setOut_code(this.out_code);
		out.setHq_goods_code(this.hq_goods_code);
		out.setLogis_code(this.logis_code);
		out.setOut_loca_type(this.out_loca_type);
		if(this.out_loca_Fran!=null && !"".equals(out_loca_Fran) ) {
			out.setOut_loca(this.out_loca_Fran);
		}
		if(this.out_loca_Logis!=null && !"".equals(out_loca_Logis)) {
			out.setOut_loca(this.out_loca_Logis);
		}
		out.setOut_date(this.out_date);
		out.setOut_st(this.out_st);
		out.setOut_num(this.out_num);
		return out;
	}
}
