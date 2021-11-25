package kr.or.fms.fran.service;

import java.sql.SQLException;

import kr.or.fms.dao.AttachDAO;
import kr.or.fms.dto.AttachVO;
import kr.or.fms.fran.dao.FranApplyDAO;
import kr.or.fms.fran.dto.FranAppliDocVO;
import kr.or.fms.fran.dto.FranVO;

public class FranApplyServiceImpl implements FranApplyService{
	private FranApplyDAO franApplyDAO;
	
	public void setFranApplyDAO(FranApplyDAO franApplyDAO) {
		this.franApplyDAO = franApplyDAO;
	}
	
	private AttachDAO attachDAO;
	
	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	}

	@Override
	public void registFranApply(FranAppliDocVO franAppliDocVO) throws SQLException {
		franApplyDAO.insertFranApply(franAppliDocVO);
		String attachSeq = franApplyDAO.getFranApplySeqCurr();
		if(franAppliDocVO.getAttachList() != null) {
			for(AttachVO attach :franAppliDocVO.getAttachList()) {
				attach.setFile_no(attachSeq);
				attach.setFile_register(franAppliDocVO.getFran_applidoc_code());
				attachDAO.insertAttach(attach);
			}
		}
	}

	@Override
	public void registFran(FranVO franVO) throws SQLException {
		franApplyDAO.insertFran(franVO);
		
	}

	@Override
	public AttachVO getAttachByAno(String attach_no) throws SQLException {
		AttachVO attach = attachDAO.selectAttachByAno(attach_no);
		return attach;
	}

	@Override
	public void removeAttachByAttach_no(String attach_no) throws SQLException {
		attachDAO.deleteAttach(attach_no);
		
	}

	@Override
	public String getFranApplySeqCurr() throws SQLException {
		String fran_applidoc_code = franApplyDAO.getFranApplySeqCurr();
		return fran_applidoc_code;
	}
	
	
	

}
