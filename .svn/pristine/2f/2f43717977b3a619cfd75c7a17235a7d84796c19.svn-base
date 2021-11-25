package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranReplyVO;
import kr.or.fms.hq.dao.ReplyDAO;



public class ReplyServiceImpl implements ReplyService {

	private ReplyDAO replyDAO;

	public void setReplyDAO(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}

	@Override
	public Map<String, Object> getReplyList(String fran_notice_num, SearchCriteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<FranReplyVO> replyList = replyDAO.selectReplyListPage(fran_notice_num, cri);

		int count = replyDAO.countReply(fran_notice_num);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);

		dataMap.put("replyList", replyList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public void registReply(FranReplyVO reply) throws SQLException {
		String fran_reply_num = replyDAO.selectReplySeqNextValue();
		reply.setFran_reply_num(fran_reply_num);

		replyDAO.insertReply(reply);

	}

	@Override
	public void modifyReply(FranReplyVO reply) throws SQLException {

		replyDAO.updateReply(reply);

	}

	@Override
	public void removeReply(String fran_reply_num) throws SQLException {

		replyDAO.deleteReply(fran_reply_num);
	}

	@Override
	public int getReplyListCount(String fran_notice_num) throws SQLException {
		int count = replyDAO.countReply(fran_notice_num);
		return count;
	}

}
