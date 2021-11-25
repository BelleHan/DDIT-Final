package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranNoticeVO;

public interface FranNoticeDAO {
	
	//가맹점게시글리스트 조회
		List<FranNoticeVO> selectFranNoticeList()throws SQLException;
		List<FranNoticeVO> selectFranNoticeList(Criteria cri)throws SQLException;
		List<FranNoticeVO> selectFranNoticeList(SearchCriteria cri)throws SQLException;
		
		
	// 게시글 상세조회
		FranNoticeVO selectFranNoticeDetail(String fNum) throws SQLException;


	// 검색 결과의 전체 리스트 개수
		int selectFranNoticeListCount(SearchCriteria cri) throws SQLException;
	

	//게시글 등록
}
