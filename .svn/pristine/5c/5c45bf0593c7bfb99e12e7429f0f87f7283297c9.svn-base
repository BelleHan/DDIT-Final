<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>

  <!-- Content Wrapper. Contains page content -->
  <div  style="max-width:800px;min-width:420px;margin:0 auto;max-height:812px;">
   
   
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>상세보기</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>반품목록
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	상세보기
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	</section>
	 
   
      <!-- Main content -->
    <section class="content container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card card-outline card-info">
					<div class="card-header">
						<h3 class="card-title">상세보기</h3>
						<div class="card-tools">
						    <button type="button" id="listBtn" class="btn btn-primary" onclick='location.href="<%=request.getContextPath()%>/logis/updateReturnSt.do?returnSt=승인&rcode=${returnDetail.return_code }";'>승인</button>
							<button type="button" id="modifyBtn" class="btn btn-warning" onclick='location.href="<%=request.getContextPath()%>/logis/updateReturnSt.do?returnSt=보류&rcode=${returnDetail.return_code }";'>보류</button>						
						    <button type="button" id="removeBtn" class="btn btn-danger" onclick='location.href="<%=request.getContextPath()%>/logis/updateReturnSt.do?returnSt=반려&rcode=${returnDetail.return_code }";'>반려</button>
					    </div>
					</div>
					<div class="card-body">
						<div class="row">	
							<div class="form-group col-sm-6">
								<label for="title">반품코드</label>
								<input type="text" class="form-control" id="title" readonly disabled value="${returnDetail.return_code }" />							
							</div>
							<div class="form-group col-sm-6">
								<label for="title">가맹점명</label>
								<input type="text" class="form-control" id="title" readonly disabled value="${returnDetail.franVO.fran_name }" />							
							</div>
						</div>
						<div class="row">	
							<div class="form-group col-sm-12">
									<label for="title">가맹점위치</label>
									<input type="text" class="form-control" id="title" readonly disabled value="${returnDetail.franVO.fran_addr }" />							
							</div>
						</div>
						<div class="row">	
							<div class="form-group col-sm-3" >
								<label for="writer">물품</label>
								<input type="text" class="form-control" id="writer" readonly value="${returnDetail.supGoodsVO.sup_goods_name }"/>
							</div>		
							
							<div class="form-group col-sm-3" >
								<label for="viewcnt">물품수량</label>
								<input type="text" class="form-control" id="viewcnt" readonly value="${returnDetail.returnDetailVO.return_quan }"/>
							</div>
							
							<div class="form-group col-sm-4" >
								<label for="regDate">신청일자</label>
								<input type="text" class="form-control" id="regDate" readonly 
									value="<fmt:formatDate value="${returnDetail.return_apply_date }" pattern="yyyy-MM-dd" />" />
<%-- 									value="${returnDetail.return_apply_date }" /> --%>
							</div>
							
							<div class="form-group col-sm-2" >
								<label for="viewcnt">상태</label>
								<input type="text" class="form-control" id="viewcnt" readonly value="${returnDetail.return_st }"/>
							</div>
						</div>		
						<div class="form-group col-sm-12">
							<label for="content">반품 사유</label>
							<div id="content">${returnDetail.return_reason }</div>	
						</div>
												
					</div>													
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row  -->
    </section>
    </div>
    <!-- /.content -->

<form role="form">
	<input type="hidden" name="rcode" value="${returnDetail.return_code }" />
</form>
	
  
<script>
	<c:if test="${from eq 'modify'}" >
		alert("정상적으로 수정되었습니다.");	
		window.opener.location.reload();
	</c:if>
	<c:if test="${from eq 'remove'}" >
		alert("삭제되었습니다.");
		window.opener.location.reload();
		window.close();
	</c:if>
	

	function modify_go(){
		var formObj = $("form[role='form']");
		//alert("click modify btn");
		formObj.attr({
			'action':'modifyForm.do',
			'method':'post'
		});
		formObj.submit();
	}
	function remove_go(){
		var formObj = $("form[role='form']");
		//alert("click remove btn");
		var answer = confirm("정말 삭제하시겠습니까?");
		if(answer){		
			formObj.attr("action", "remove.do");
			formObj.attr("method", "post");
			formObj.submit();
		}
	}
 	
	
</script>

<%-- <%@ include file="./reply_js.jsp" %> --%>
 
</body> 
 
 
 
 
 
 
 
 
 
 