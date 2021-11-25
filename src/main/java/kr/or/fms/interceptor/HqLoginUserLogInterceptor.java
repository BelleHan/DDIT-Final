package kr.or.fms.interceptor;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.or.fms.hq.dto.HqEmpVO;
import kr.or.fms.logis.dto.LogisVO;

public class HqLoginUserLogInterceptor extends HandlerInterceptorAdapter {

	private String savePath="c:\\log";;
	private String saveFileName = "login_user_log.csv";
	
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	
		HqEmpVO empUser=(HqEmpVO)request.getSession().getAttribute("loginUser");
		if(empUser==null) return;
		
		//로그인 정보를 스트링으로 저장.
		String tag ="[login:user]";
		String log =tag
					+empUser.getEmp_no()+","					
					+request.getRemoteAddr()+","
					+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		
		File file=new File(savePath);
		if(!file.exists()){
			file.mkdirs();
		}
		String logFilePath=savePath+File.separator+saveFileName;		
		BufferedWriter out=new BufferedWriter(new FileWriter(logFilePath,true));
		

		//로그를 기록
		out.write(log);
		out.newLine();
		
		out.close();
	}

}
