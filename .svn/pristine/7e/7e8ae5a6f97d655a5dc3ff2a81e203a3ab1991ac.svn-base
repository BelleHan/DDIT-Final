<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>반품신청등록</title>
<body>
	<c:if test="${from eq 'modify' }" >
		<script>
			alert("수정되었습니다.");
			window.opener.location.reload();
		</script>
	</c:if>
	
	
	<c:if test="${from eq 'remove' }" >
		<script>
			alert("삭제되었습니다.");
			window.opener.location.reload();
			window.close();
		</script>
	</c:if> 
<%-- <head>
<!-- summernote -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.css">
</head> --%>
<body> 
   <!-- Content Header (Page header) -->
    <section class="content-header">
    	<div class="container-fluid">
    		<div class="row mb-2">
    			<div class="col-sm-12">
	      			<h1 style="text-align: center;">반품신청상세</h1>
	      		</div>	      		
	    	
	     	</div>	     	
      	</div>
    </section>

    <section class="content container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card card-outline card-info">
					<div class="card-header">
						<button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();" style="float: right">닫기 </button>
						&nbsp;&nbsp;&nbsp;&nbsp;						
					    &nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" id="modifyBtn" class="btn btn-warning" onclick="submit_go('modifyForm.do','${returnVO.return_code}');" style="float: right">수정</button>
					    <button type="button" id="removeBtn" class="btn btn-danger" onclick="submit_go('remove.do','${returnVO.return_code}');" style="float: left;">반품취소</button>
					</div>
					<div class="card-body">
						<!-- <h4>반품하실 물품을 검색하세요.</h4>
						<div class="input-group mb-3">
							<input class="form-control" type="text" id="goods" style="text-align:right;">
                  			<span class="input-group-append">
                  				<button type="button" id="searchBtn" onclick="search_goodsName()" class="btn btn-info btn-flat">검색</button>
                  			</span>
						</div> -->
							<!-- <input type="hidden" name="return_code" id="return_code" value= />
							<div class="form-group" >
								<select class="form-control" name="hq_goods_code" id="hq_goods_code">
									<option value="" style="text-align:center;" >물품명</option>
								</select>
							</div> -->
							<!-- /btn-group -->
							<div class="form-group">
								<label for="return_title">제 목</label> 
								<input type="text" id="return_title" name='return_title' class="form-control" readonly style="text-align:left;" value="${returnVO.return_title }">
							</div>
							
							<div class="row">
								<div class="form-group col-sm-6" >
									<label for="hq_goods_name">물품명</label>
									<input type="text" class="form-control" id="hq_goods_name" name="hq_goods_name"	style="text-align:left;" value="${returnVO.hqGoodsVO.hq_goods_name }" readonly  />
								</div>
								
								<div class="form-group col-sm-6" >
									<label for="return_quan">수량</label>
									<input type="text" class="form-control" id="return_quan" name="return_quan" readonly style="text-align:left;"
									value="${returnVO.returnDetailVO.return_quan }" />
								</div>
							</div>
							
							<div class="row">
								<div class="form-group col-sm-6" >
									<label for="return_reason">반품사유</label>
									<c:if test="${returnVO.return_reason_code eq 1}">
										<input type="text" class="form-control" id="return_reason" name="return_reason" style="text-align:left;" value="오배송" readonly />
									</c:if>
									<c:if test="${returnVO.return_reason_code eq 2}">
										<input type="text" class="form-control" id="return_reason" name="return_reason" style="text-align:left;" value="결품" readonly />
									</c:if>
								</div>
							
								<div class="form-group col-sm-6">
									<label for="fran_name">가맹점명</label> 
									<input type="text" id="fran_name" name='fran_name' class="form-control" readonly style="text-align:left;" value="${returnVO.franVO.fran_name }">
								</div>
							</div>
							
							<div class="form-group">
								<label for="fran_name">반품 사유 상세</label> 
								<input type="text" id="fran_name" name='fran_name' class="form-control" readonly style="text-align:left;" value="${returnVO.return_reason }">
							</div>
							
							<div class="form-group col-sm-12">
									<label for="fran_name">첨부파일</label> 
								<div class="card-footer">
									<div class="row">
									 <c:if test="${empty attachList }">
		                              <strong style="text-align: center;">첨부파일이 없습니다.</strong>
		                              </c:if>
										<c:forEach items="${attachList }" var="attach">
											<div class="col-md-4 col-sm-4 col-xs-12"  style="cursor:pointer;" onclick="location.href='<%=request.getContextPath()%>/fr/return/getFile.do?attach_no=${attach.attach_no }';">
												<div class="info-box" style="width:250px; height:20px; ">
												 	<span class="info-box-icon bg-yellow">
														<i class="fa fa-copy"></i>
													</span>
													<div class="info-box-content">
														<span class ="info-box-number">${attach.file_name }</span>
													</div>
												</div>
											 </div>							
										</c:forEach>
									</div>
								</div>
						</div>
					</div><!--end card-body  -->
					<div class="card-footer">
						   	
					</div>	
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row -->
    </section>
    <!-- /.content -->
 	
    <script>
	function submit_go(url,return_code){
		//alert(url);
		location.href=url+"?return_code="+return_code;
	}
	</script>
</body>