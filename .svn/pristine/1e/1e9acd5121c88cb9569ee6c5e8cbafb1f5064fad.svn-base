package kr.or.fms.util;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import kr.or.fms.dto.AttachVO;

public class MakeFileName {
	
	public static String toUUIDFileName(String fileName, String delimiter) {
		String uuid = UUID.randomUUID().toString().replace("-", "");
		return uuid + delimiter + fileName;
	}
	
	public static String parseFileNameFromUUID(String fileName, String delimiter) {
		String[] uuidFileName = fileName.split(delimiter);
		return uuidFileName[uuidFileName.length - 1];
	}	
	

	public static List<AttachVO> parseFileNameFromAttaches(List<AttachVO> attachList,
																	String delimiter) {

		List<AttachVO> renamedAttachList = new ArrayList<AttachVO>();
		
		if(attachList!=null) {
			for (AttachVO attach : attachList) {
				String fileName = attach.getFile_name(); // DB상의 fileName
				fileName = parseFileNameFromUUID(fileName, delimiter); // uuid가 제거된
																		// fileName
				attach.setFile_name(fileName);
	
				renamedAttachList.add(attach);
			}
		}
		return renamedAttachList;
	}
	
}
