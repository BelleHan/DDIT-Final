package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dao.AttachDAO;
import kr.or.fms.dto.AttachVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.hq.dao.HqReturnDAO;

public class HqReturnServiceImpl implements HqReturnService {
	
	
	private HqReturnDAO hqReturnDAO;
	public void setHqReturnDAO(HqReturnDAO hqReturnDAO) {
		this.hqReturnDAO = hqReturnDAO;
	}
	
	private AttachDAO attachDAO;
	
	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	}

	@Override
	public Map<String, Object> getReturnList(SearchCriteria cri) throws SQLException {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<ReturnVO> hqReturnList = hqReturnDAO.selectBoardCriteria(cri);

		for(ReturnVO rtnVo : hqReturnList) {
			List<AttachVO> attachList = getAttachByAttach_no(rtnVo.getReturn_code());
			if(attachList!=null && attachList.size()>0) {
				rtnVo.setAttachList(attachList);
			}
			
		}
		
		
		// 전체 board 개수
		int totalCount = hqReturnDAO.selectBoardCriteriaTotalCount(cri);

		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("hqReturnList", hqReturnList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;

	}
	
	@Override
	public ReturnVO read(String return_code) throws SQLException {
		ReturnVO returnVO = hqReturnDAO.selectReturnByReturn_code(return_code);

		addAttachList(returnVO);

		return returnVO;
	}
	
	private void addAttachList(ReturnVO returnVO) throws SQLException {

		if (returnVO == null)
			return;
	
		String return_code = returnVO.getReturn_code();
		List<AttachVO> attachList = attachDAO.selectAttachesByReturn_code(return_code);
	
		returnVO.setAttachList(attachList);
	}

	@Override
	public List<AttachVO> getAttachByAttach_no(String attach_no) throws SQLException {
		List<AttachVO> attachList = attachDAO.selectAttachByAttach_no(attach_no);
		for (AttachVO attach : attachList) {
			String file_name = attach.getFile_name();
			attach.setFile_name(file_name.split("\\$\\$")[1]);
		}
		return attachList;
	}

	@Override
	public void removeAttachByAttach_no(String attach_no) throws SQLException {
		attachDAO.deleteAttach(attach_no);
		
	}

	@Override
	public AttachVO selectAttachDownload(String attach_no) throws SQLException {
		
		return attachDAO.selectAttachDownload(attach_no);
	}
	
	@Override
	public AttachVO getAttachByAno(String attach_no) throws SQLException {
		AttachVO attach = attachDAO.selectAttachByAno(attach_no);

		return attach;
	}

	@Override
	public void modify(ReturnVO returnVO) throws SQLException {
		
		hqReturnDAO.updateReturnCheckSt(returnVO);
		
	}
	

}
