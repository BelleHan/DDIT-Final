package kr.or.fms.command;

import java.util.Date;

import kr.or.fms.fran.dto.FranReplyVO;


public class ReplyRegistCommand {
	private String fran_notice_num;
	private String emp_no;
	private String fran_reply_content;
	
	
	
	
	public String getFran_notice_num() {
		return fran_notice_num;
	}




	public void setFran_notice_num(String fran_notice_num) {
		this.fran_notice_num = fran_notice_num;
	}




	public String getEmp_no() {
		return emp_no;
	}




	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}




	public String getFran_reply_content() {
		return fran_reply_content;
	}




	public void setFran_reply_content(String fran_reply_content) {
		this.fran_reply_content = fran_reply_content;
	}




	public FranReplyVO toReplyVO() {
		FranReplyVO reply = new FranReplyVO();
		reply.setFran_notice_num(fran_notice_num);
		reply.setEmp_no(emp_no);
		reply.setFran_reply_content(fran_reply_content);
		reply.setFran_reply_date(new Date());
		
		return reply;
	}

	
}	
