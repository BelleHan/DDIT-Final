package kr.or.fms.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.or.fms.dto.AttachVO;

public class GetAttachesAsMultipartFiles {
	
	public static List<AttachVO> save(List<MultipartFile> multiFiles, String savePath) throws Exception {
		
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		
		// 저장 -> attachVO -> list.add
		if (multiFiles != null) {
			for (MultipartFile multi : multiFiles) {
				String fileName = MakeFileName.toUUIDFileName(multi.getOriginalFilename(), "$$");
				File target = new File(savePath, fileName);
				
//				target.mkdirs();
				
				multi.transferTo(target);
				
				AttachVO attach = new AttachVO();
				attach.setFile_location(savePath);
				attach.setFile_name(fileName);
				attach.setFile_type(fileName.substring(fileName.lastIndexOf('.') + 1).toUpperCase());
				
				attachList.add(attach);
			}
		}
		
		return attachList;
	}

}
