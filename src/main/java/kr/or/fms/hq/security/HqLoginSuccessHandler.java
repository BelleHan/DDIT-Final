package kr.or.fms.hq.security;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import kr.or.fms.hq.dto.HqEmpVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.sup.dto.SupVO;

public class HqLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{

	private String savePath = "c:\\log";
	private String saveFileName = "login_logisUser_log.csv";
	
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		UserHqEmp user = (UserHqEmp) authentication.getDetails();
		HqEmpVO loginEmp = user.getHqEmpVO();
		
		HttpSession session = request.getSession();
		session.setAttribute("loginEmp", loginEmp);
		session.setMaxInactiveInterval(60*60);
		
		//log작성
		loginUserlogFile(loginEmp, request);
		
		super.onAuthenticationSuccess(request, response, authentication);
		
	}

	private void loginUserlogFile(HqEmpVO loginEmp, HttpServletRequest request)throws IOException{
		//로그인 정보를 스트링으로 저장
		String tag ="[login:user]";
		String log = tag+loginEmp.getEmp_no()+","
				+request.getRemoteAddr()+","
				+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		
		//로그파일 생성
		File file = new File(savePath);
		if(!file.exists()) {
			file.mkdirs();
		}
		String logFilePath = savePath+File.separator+saveFileName;
		BufferedWriter out = new BufferedWriter(new FileWriter(logFilePath,true));
		
		//로그를 기록
		try {
			out.write(log);
			out.newLine();
		} finally {
			if(out!=null) out.close();
		}
	}
}
