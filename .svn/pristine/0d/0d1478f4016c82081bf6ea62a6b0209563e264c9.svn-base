package kr.or.fms.command;

import kr.or.fms.hq.dto.InVO;

public class InRegistCommand {
	
	private String goods_pur_code;
	private String sup_goods_code;
	private String logis_code;
	private String in_date;
	private int in_num;
	private String in_loca;
	
	public InVO toInVO() {
		
		InVO in = new InVO();
		
		in.setGoods_pur_code(this.goods_pur_code);
		in.setSup_goods_code(this.sup_goods_code);
		in.setLogis_code(this.logis_code);
		in.setIn_date(this.in_date);
		in.setIn_num(this.in_num);
		in.setIn_loca(this.in_loca);
		
		return in;
		
	}

}
