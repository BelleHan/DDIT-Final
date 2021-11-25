package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranNoticeVO;

public interface FranNoticeService {
	
	//가맹점게시글리스트 조회
			List<FranNoticeVO> getFranNoticeList()throws SQLException;
			List<FranNoticeVO> getFranNoticeList(Criteria cri)throws SQLException;
			Map<String, Object> getFranNoticeList(SearchCriteria cri)throws SQLException;
			
			
		// 게시글 상세조회
			FranNoticeVO getFranNoticeDetail(String fNum) throws SQLException;

	
			
		//게시글 등록
	
	
	
}
