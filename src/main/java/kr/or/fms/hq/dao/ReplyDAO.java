package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranReplyVO;


public interface ReplyDAO {
	
	
	void insertReply(FranReplyVO reply)throws SQLException;
	void updateReply(FranReplyVO reply)throws SQLException;
	void deleteReply(String fran_reply_num)throws SQLException;
	
	String selectReplySeqNextValue()throws SQLException;
	List<FranReplyVO> selectReplyListPage(String fran_notice_num,SearchCriteria cri)throws SQLException;
	int countReply(String fran_notice_num) throws SQLException;
	
}
