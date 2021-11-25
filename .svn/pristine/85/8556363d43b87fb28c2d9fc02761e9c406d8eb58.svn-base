<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="reply-list-template" >
{{#each .}}
<div class="replyLi" >
	<div class="user-block">
    </div>
	
 	<div class="timeline-item" >
  		<span class="time">
    		<i class="fa fa-clock"></i>{{prettifyDate fran_reply_date}}
	 		<a class="btn btn-primary btn-xs {{fran_notice_num}}-a" id="modifyReplyBtn" data-fran_notice_num="{{fran_notice_num}}"
				onclick="replyModifyModal_go('{{fran_notice_num}}');"				
				
	    		data-replyer="{{emp_no}}" data-toggle="modal" data-target="#modifyModal">Modify</a>
  		</span>
	
  		<h3 class="timeline-header"><strong style="display:none;">{{fran_notice_num}}</strong>{{emp_no}}</h3>
  		<div class="timeline-body" id="{{fran_notice_num}}-fran_reply_content">{{fran_reply_content}} </div>
	</div>
</div>
{{/each}}
</script>

    
<script type="text/x-handlebars-template"  id="reply-pagination-template" >
<li class="paginate_button page-item">
	<a href="1" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		<i class='fas fa-angle-double-left'></i>
	</a>
</li>
<li class="paginate_button page-item">
	<a href="{{#if prev}}{{prevPageNum}}{{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		<i class='fas fa-angle-left'></i>
	</a>
</li>
{{#each pageNum}}
<li class="paginate_button page-item {{signActiveReply this}} ">
	<a href="{{this}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		{{this}}
	</a>
</li>
{{/each}}

<li class="paginate_button page-item ">
	<a href="{{#if next}}{{nextPageNum}}{{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		<i class='fas fa-angle-right'></i>
	</a>
</li>
<li class="paginate_button page-item">
	<a href="{{realEndPage}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
		<i class='fas fa-angle-double-right'></i>
	</a>
</li>	
</script>


<script>
var replyPage=1;

function printDataReply(replyArr,target,templateObject){
	var template=Handlebars.compile(templateObject.html());
	var html = template(replyArr);	
	//console.log(html);
	$('.replyLi').remove();
	target.after(html);
}

function getPage(pageInfo){	 
	$.ajax({
		url:pageInfo,	
		type:"get",
		contentType:"application/json",
		success:function(data){
			console.log(data);
			
			var htmlCode = "";
			
			$.each(data.replyList, function(i,v){
				htmlCode += '<div class="replyLi" >';
				htmlCode += '<div class="user-block">';
				htmlCode += '</div>';
				
				htmlCode += '<div class="timeline-item" >';
				htmlCode += '	<span class="time">';
				htmlCode += '		<i class="fa fa-clock"></i>'+ prettifyDate( v.fran_reply_date) ;
				htmlCode += ' 		<a class="btn btn-primary btn-xs ' + v.fran_notice_num + '-a" id="modifyReplyBtn" data-fran_notice_num="' + v.fran_notice_num + '"';      
				htmlCode += '			onclick="replyModifyModal_go(\'' + v.fran_reply_num + '\');"		';		
				htmlCode += '           style="display:' + visibleByLoginCheck( v.emp_no) + ';" ';
				htmlCode += '    		data-replyer="'+ v.emp_no+'" data-toggle="modal" data-target="#modifyModal">수정</a>';
				htmlCode += '	</span>';
				
				htmlCode += '	<h3 class="timeline-header"><strong style="display:none;">'+ v.fran_notice_num + '</strong>' + v.emp_no + '</h3>';
				htmlCode += '	<div class="timeline-body" id="' + v.fran_notice_num + '-fran_reply_content">' + v.fran_reply_content + '</div>';
				htmlCode += '</div>';
				htmlCode += '</div>';
			
				
			});
			$('.replyLi').remove();
			$('#repliesDiv').after(htmlCode);
			
			//printDataReply(data.replyList,$('#repliesDiv'),$('#reply-list-template'));
			
			
			var pageNum = new Array(data.pageMaker.endPage - data.pageMaker.startPage+1);
			
			for(var i=0;i<data.pageMaker.endPage - data.pageMaker.startPage+1;i++){
				pageNum[i] = data.pageMaker.startPage+i;
			}	
			data.pageMaker.pageNum = pageNum;  
			data.pageMaker.prevPageNum = data.pageMaker.startPage-1;
			data.pageMaker.nextPageNum = data.pageMaker.endPage+1;
			
			
			
			var pageHtmlCode = '';
			pageHtmlCode += '<li class="paginate_button page-item">';
			pageHtmlCode += '<a href="1" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">';
			pageHtmlCode += '	<i class="fas fa-angle-double-left"></i>';
			pageHtmlCode += '</a>';
			pageHtmlCode += '</li>';
			pageHtmlCode += '<li class="paginate_button page-item">';
			pageHtmlCode += '	<a href="' + (data.pageMaker.prev ? data.pageMaker.prevPageNum : "" ) + '" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">';
			pageHtmlCode += '		<i class="fas fa-angle-left"></i>';
			pageHtmlCode += '	</a>';
			pageHtmlCode += '</li>';
			
			$.each(data.pageMaker.pageNum, function (i, v){
				pageHtmlCode += '<li class="paginate_button page-item ' + signActive( v ) + '">';
				pageHtmlCode += '	<a href="' + v + '" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">';
						
				pageHtmlCode += v + '</a>';
				pageHtmlCode += '</li>';
			});

			pageHtmlCode += '<li class="paginate_button page-item ">';
			pageHtmlCode += '	<a href="' + (data.pageMaker.next ? data.pageMaker.nextPageNum : "" ) + '" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">';
			pageHtmlCode += '		<i class="fas fa-angle-right"></i>';
			pageHtmlCode += '	</a>';
			pageHtmlCode += '</li>';
			pageHtmlCode += '<li class="paginate_button page-item">';
			pageHtmlCode += '	<a href="' + data.pageMaker.realEndPage + '" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">';
			pageHtmlCode += '		<i class="fas fa-angle-double-right"></i>';
			pageHtmlCode += '	</a>';
			pageHtmlCode += '</li>';	
			
			$('ul#pagination').html(pageHtmlCode);
			
// 			printPaginationReply(data.pageMaker,$('ul#pagination'),$('#reply-pagination-template'));
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);			
		}
	});

}

// function getPage(pageInfo){	 
// 	$.ajax({
// 		url:pageInfo,	
// 		type:"get",
// 		contentType:"application/json",
// 		success:function(data){
// 			console.log(data);
// 			printDataReply(data.replyList,$('#repliesDiv'),$('#reply-list-template'));
// 			printPaginationReply(data.pageMaker,$('ul#pagination'),$('#reply-pagination-template'));
// 		},
// 		error:function(error){
// 			AjaxErrorSecurityRedirectHandler(error.status);			
// 		}
// 	});

// }


function prettifyDate(timeValue){ //Handlbars에 날짜출력함수 등록
	var dateObj=new Date(timeValue);
	var year=dateObj.getFullYear();
	var month=dateObj.getMonth()+1;
	var date=dateObj.getDate();
	return year+"/"+month+"/"+date;
}

function visibleByLoginCheck(replyer){
	console.log(replyer);
	var result="none";		
	if(replyer == "${loginEmp.emp_no}") result="visible";		
	return result;						  
}

function signActive(pageNum){
	if(pageNum == replyPage) return 'active';
}

var page;


Handlebars.registerHelper({
	"prettifyDate":function(timeValue){ //Handlbars에 날짜출력함수 등록
		var dateObj=new Date(timeValue);
		var year=dateObj.getFullYear();
		var month=dateObj.getMonth()+1;
		var date=dateObj.getDate();
		return year+"/"+month+"/"+date;
	},
	
	"visibleByLoginCheck":function(replyer){
		console.log(replyer);
		var result="none";		
		if(replyer == "${loginEmp.emp_no}") result="visible";		
		return result;						  
	},
	
	"signActive":function(pageNum){
		if(pageNum == replyPage) return 'active';
	}
});


function printPaginationReply(pageMaker,target,templateObject){
	
	var pageNum = new Array(pageMaker.endPage-pageMaker.startPage+1);
	
	for(var i=0;i<pageMaker.endPage-pageMaker.startPage+1;i++){
		pageNum[i]=pageMaker.startPage+i;
	}	
	pageMaker.pageNum=pageNum;  
	pageMaker.prevPageNum=pageMaker.startPage-1;
	pageMaker.nextPageNum=pageMaker.endPage+1;
	
	var template=Handlebars.compile(templateObject.html());	
	var html = template(pageMaker);	
	target.html("").html(html);
}



function replyRegist_go(){
	//alert("click add btn");
	
	var emp_no=$('#newReplyWriter').val();
	var fran_reply_content=$('#newReplyText').val();
	var fran_notice_num=$('input[name="fran_notice_num"]').val()
	
	if(!replytext){
		alert("내용은 필수입니다.");
		return;
	}
	
	//alert(replyer+":"+replytext+":"+bno);
	var data={
			"fran_notice_num":""+fran_notice_num+"",
			"emp_no":emp_no,
			"fran_reply_content":fran_reply_content	
	}
	$.ajax({
		url:"<%=request.getContextPath()%>/replies",
		type:"post",
		data:JSON.stringify(data),	
		contentType:'application/json',
		success:function(page){			
			alert('댓글이 등록되었습니다.\n마지막 페이지로 이동합니다.');			
			getPage("<%=request.getContextPath()%>/replies/"+fran_notice_num+"/"+page); //리스트 출력
			replyPage=page;
			$('#newReplyText').val("");				
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);			
		}
	});
		
	
	
}

//댓글 수정
function replyModifyModal_go(fran_reply_num){
	//alert(fran_notice_num);
	//var replytext = $('div#'+fran_notice_num+'-replytext').text()
	//var replyer = $('a.'+fran_notice_num+'-a').attr('data-replyer');
	
	//alert("fran_notice_num:"+fran_notice_num+"\nreplyer:"+replyer+"\nreplytext:"+replytext);
	
	$('div#modifyModal div.modal-body #replytext').val($('div#'+fran_reply_num+'-replytext').text());
	$('div#modifyModal div.modal-header h4.modal-title').text(fran_reply_num);
}

function replyModify_go(){
	//alert('reply modify modal btn');
	
	var fran_reply_num=$('.modal-title').text();
	var fran_reply_content=$('#replytext').val();
	
	var sendData={
			fran_reply_num:fran_reply_num,
			fran_reply_content:fran_reply_content
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/replies/"+fran_reply_num,
		type:"put",
		headers:{			
			"X-HTTP-Method-Override":"PUT"
		},
		data:JSON.stringify(sendData),
		contentType:"application/json",
		success:function(result){
			alert("수정되었습니다.");			
			getPage("<%=request.getContextPath()%>/replies/${franNotice.fran_notice_num}/"+replyPage);
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);			
		},
		complete:function(){
			$('#modifyModal').modal('hide');
		}
	});
}

function replyRemove_go(){
	//alert("click remove btn");
	
	var fran_reply_num=$('.modal-title').text();
	//alert(fran_notice_num);
	
	$.ajax({
		url:"<%=request.getContextPath()%>/replies/${franNotice.fran_notice_num}/"+fran_reply_num+"/"+replyPage,
		type:"delete",
		headers:{			
			"X-HTTP-Method-Override":"DELETE"
		},
		success:function(page){
			alert("삭제되었습니다.");
			getPage("<%=request.getContextPath()%>/replies/${franNotice.fran_notice_num}/"+page);
			replyPage=page;
		},
		error:function(error){
			AjaxErrorSecurityRedirectHandler(error.status);			
		},
		complete:function(){
			$('#modifyModal').modal('hide');
		}
	});
}


/* page upload */
window.onload=function(){
	getPage("<%=request.getContextPath()%>/replies/${franNotice.fran_notice_num}/"+replyPage);
	
	$('ul.pagination').on('click','li a',function(event){
		//alert("click page number");
		// $(this) : event.currentTarget
		if($(this).attr("href")) {
			replyPage=$(this).attr("href");
			getPage("<%=request.getContextPath()%>/replies/${franNotice.fran_notice_num}/"+replyPage);
		}
		return false;
	});
}
</script>









