package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dto.AttachVO;
import kr.or.fms.dto.ReturnVO;

public interface HqReturnService {
	
	    // 목록조회	
		Map<String,Object> getReturnList(SearchCriteria cri)throws SQLException;
		
		//첨부파일 조회
		List<AttachVO> getAttachByAttach_no(String attach_no)throws SQLException;
		
		//첨부파일 조회
		AttachVO getAttachByAno(String attach_no)throws SQLException;
		
		//파일정보 삭제
		void removeAttachByAttach_no(String attach_no)throws SQLException;
		
		public AttachVO selectAttachDownload(String attach_no)throws SQLException;
		
		// 상세내용 조회
		ReturnVO read(String return_code) throws SQLException;
		
		// 승인상태 변경
		void modify(ReturnVO returnVO) throws SQLException;

		
}
