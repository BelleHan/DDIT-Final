package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranReplyVO;


public interface ReplyService {
	

	//리스트보기
	Map<String,Object> getReplyList(String fran_notice_num,SearchCriteria cri)	throws SQLException;	
	
	//리스트 개수
	int getReplyListCount(String fran_notice_num)throws SQLException;
	
	//등록
	void registReply(FranReplyVO reply)throws SQLException;
		
	//수정
	void modifyReply(FranReplyVO reply)throws SQLException;
	
	//삭제
	void removeReply(String fran_reply_num)throws SQLException;
	
}
