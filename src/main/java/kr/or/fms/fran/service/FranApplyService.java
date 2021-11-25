package kr.or.fms.fran.service;

import java.sql.SQLException;

import kr.or.fms.dto.AttachVO;
import kr.or.fms.fran.dto.FranAppliDocVO;
import kr.or.fms.fran.dto.FranVO;

public interface FranApplyService {
	
	// 등록
	void registFranApply(FranAppliDocVO franAppliDocVO)throws SQLException;
	
	void registFran(FranVO franVO)throws SQLException;
	
	//첨부파일 
	AttachVO getAttachByAno(String attach_no)throws SQLException;
	
	
	//파일정보 삭제
	void removeAttachByAttach_no(String attach_no)throws SQLException;
	
	//최근정보
	String getFranApplySeqCurr() throws SQLException;
}
