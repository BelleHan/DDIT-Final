package kr.or.fms.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import edu.emory.mathcs.backport.java.util.Collections;
import kr.or.fms.dto.ChatVO;
import kr.or.fms.util.JsonUtil;

@ServerEndpoint("/takingSocket")
public class WebsocketController {
	
	static List<ChatVO> sessionUsers = Collections.synchronizedList(new ArrayList<ChatVO>());

	@OnOpen
	public void handleOpen(Session session) {
		ChatVO chatVO = new ChatVO(null, session);
		sessionUsers.add(chatVO);
	}
	
	@OnMessage
	public void handletakingData(Session session, String takingData) throws IOException {
		Iterator<ChatVO> iterator = sessionUsers.iterator();
		while (iterator.hasNext()) {
			ChatVO vo= iterator.next();
			vo.getSession().getBasicRemote().sendText(buildJsonData(takingData));
		}
	}
	
	@OnClose
	public void handleClose(Session session) {
		System.out.println(session.getId() + " : 접속해제");
		ChatVO chatVO = new ChatVO(null, session);
		sessionUsers.remove(chatVO);
		System.out.println(sessionUsers.size() + "세션 개수확인");
	}
	
	@OnError
	public void handleError(Throwable t) {
		t.printStackTrace();
	}

	public String buildJsonData(String takingData) {
		Map<String, Object> jsonMap = new HashMap<>();
		jsonMap.put("takingData", takingData);
		String jsonString = JsonUtil.MapToJson(jsonMap);
		System.out.println(jsonString);
		return jsonString;
	}
}

