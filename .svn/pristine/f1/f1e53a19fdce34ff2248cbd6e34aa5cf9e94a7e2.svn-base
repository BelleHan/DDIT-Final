package kr.or.fms.command;

import kr.or.fms.dto.ReturnDetailVO;
import kr.or.fms.dto.ReturnVO;

public class FranReturnReqModifyCommand extends FranReturnReqRegistCommand {
	
	private String return_code;
	private String return_reason;
	private String[] deleteFile;
	
	public String getReturn_reason() {
		return return_reason;
	}
	public void setReturn_reason(String return_reason) {
		this.return_reason = return_reason;
	}

	public String getReturn_code() {
		return return_code;
	}
	public void setReturn_code(String return_code) {
		this.return_code = return_code;
	}
	public String[] getDeleteFile() {
		return deleteFile;
	}
	public void setDeleteFile(String[] deleteFile) {
		this.deleteFile = deleteFile;
	}
	
	@Override
	public ReturnVO toReturnVO() {
		ReturnVO returnVO = super.toReturnVO();
		returnVO.setReturn_code(this.return_code);
		returnVO.setReturn_reason(this.return_reason);
		
		return returnVO;
	}
	
	
	@Override
	public ReturnDetailVO toReturnDetailVO() {
		ReturnDetailVO returnDeVO = super.toReturnDetailVO();
		returnDeVO.setReturn_code(this.return_code);
		
		return returnDeVO;
	}
	
}
