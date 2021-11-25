package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranReplyVO;

public class ReplyDAOImpl implements ReplyDAO {

	private SqlSession session;

	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public void insertReply(FranReplyVO reply) throws SQLException {
		session.update("Reply-Mapper.insertReply", reply);
		
	}

	@Override
	public void updateReply(FranReplyVO reply) throws SQLException {
		session.update("Reply-Mapper.updateReply", reply);
		
	}

	@Override
	public void deleteReply(String fran_reply_num) throws SQLException {
		session.update("Reply-Mapper.deleteReply", fran_reply_num);
		
	}

	@Override
	public String selectReplySeqNextValue() throws SQLException {
		String fran_reply_num = session.selectOne("Reply-Mapper.selectReplySeqNextValue");
		return fran_reply_num;
	}

	@Override
	public List<FranReplyVO> selectReplyListPage(String fran_notice_num, SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		List<FranReplyVO> replyList = session.selectList("Reply-Mapper.selectReplyList", fran_notice_num, rowBounds);
		return replyList;
	}

	@Override
	public int countReply(String fran_notice_num) throws SQLException {
		int count = session.selectOne("Reply-Mapper.countReply", fran_notice_num);
		return count;
	}

	
}
