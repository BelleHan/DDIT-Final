package kr.or.fms.hq.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.josephoconnell.html.HTMLInputFilter;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.ReplyModifyCommand;
import kr.or.fms.command.ReplyRegistCommand;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranReplyVO;
import kr.or.fms.hq.service.ReplyService;




// url : /replies

// fran_notice_num번 게시글의 페이징 처리된 댓글 목록
// /replies/{fran_notice_num}/{page} 			page list: GET방식
// /replies 						regist : POST 방식 : 댓글 입력
// /replies/{fran_reply_num}					modify : PUT,PATCH방식, fran_reply_num 댓글의 수정 
// /replies/{fran_notice_num}/{fran_reply_num}/{page}		remove : DELETE 방식, fran_reply_num 댓글의 삭제
// /replies 				

@RestController
@RequestMapping("/replies")
public class BoardReplyController {

	@Autowired
	private ReplyService service;
	
	@RequestMapping(value="/{fran_notice_num}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> replyList(@PathVariable("fran_notice_num") String fran_notice_num, 
														 @PathVariable("page") int page)
																 		throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(page);
		
		try {
			Map<String, Object> dataMap = service.getReplyList(fran_notice_num, cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap,HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		
		return entity;
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReplyRegistCommand replyReq)	
														throws Exception {
		
		ResponseEntity<String> entity=null;
		
		FranReplyVO reply = replyReq.toReplyVO();
		reply.setFran_reply_content(HTMLInputFilter.htmlSpecialChars(reply.getFran_reply_content()));
		
		
		try {
			service.registReply(reply);

			SearchCriteria cri = new SearchCriteria();

			Map<String, Object> dataMap = service.getReplyList(reply.getFran_notice_num(),cri);
			PageMaker pageMaker = (PageMaker) dataMap.get("pageMaker");
			int realEndPage = pageMaker.getRealEndPage();

			entity = new ResponseEntity<String>(realEndPage+"",HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),
					HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/{fran_reply_num}", method = { RequestMethod.PUT,RequestMethod.PATCH })
	public ResponseEntity<String> modify(@PathVariable("fran_reply_num") String fran_reply_num,
										 @RequestBody ReplyModifyCommand modifyReq)
												 					throws Exception {
		ResponseEntity<String> entity = null;
		
		FranReplyVO reply = modifyReq.toReplyVO();
		reply.setFran_reply_num(fran_reply_num);
		
		try {
			service.modifyReply(reply);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/{fran_notice_num}/{fran_reply_num}/{page}",method=RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("fran_reply_num") String fran_reply_num,
										 @PathVariable("fran_notice_num") String fran_notice_num,
										 @PathVariable("page") int page) throws Exception{
		
		ResponseEntity<String> entity=null;
		
		try{
			service.removeReply(fran_reply_num);
			
			SearchCriteria cri= new SearchCriteria();
						
			Map<String,Object> dataMap=service.getReplyList(fran_notice_num, cri);
			PageMaker pageMaker = (PageMaker)dataMap.get("pageMaker");
			
			int realEndPage=pageMaker.getRealEndPage();
			if(page>realEndPage){page=realEndPage;}
			
			
			entity=new ResponseEntity<String>(""+page,HttpStatus.OK);
		}catch(SQLException e){
			e.printStackTrace();
			entity=new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
}







