package kr.or.fms.command;

import kr.or.fms.fran.dto.FranReplyVO;

public class ReplyModifyCommand extends ReplyRegistCommand {
	

	private String fran_reply_num;


	public String getFran_reply_num() {
		return fran_reply_num;
	}

	public void setFran_reply_num(String fran_reply_num) {
		this.fran_reply_num = fran_reply_num;
	}
	
	@Override
	public FranReplyVO toReplyVO() {
		FranReplyVO reply = super.toReplyVO();
		reply.setFran_reply_num(this.fran_reply_num);
		
		return reply;
	}

}
