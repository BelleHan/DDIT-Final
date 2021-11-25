<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<head>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.css">
</head>
 <body>  
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>가맹점정보 수정하기</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>가맹점정보
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	수정하기
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
						<h3 class="card-title"></h3>
						<div class="card-tools">
							<button type="button" id="modifyBtn" class="btn btn-warning"
								onclick="modify_go();">수정</button>
							<!-- 						    <button type="button" id="removeBtn" class="btn btn-danger" onclick="remove_go();">REMOVE</button> -->
							<button type="button" id="listBtn" class="btn btn-default"
								onclick="history.go(-1);">취소</button>
						</div>
					</div>
					<div class="card-body">
						<form role="form" method="post" action="franmodify.do" name="modifyForm">
						<div class="row">
							<div class="form-group col-sm-2" >
								<label for="fran_code">가맹점코드</label>
								<input type="text" class="form-control" id="fran_code" name="fran_code" readonly value="${fran.fran_code }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_name">가맹점명</label>
								<input type="text" class="form-control" id="fran_name" name="fran_name"  value="${fran.fran_name }" />
							</div>
						
							<div class="form-group col-sm-2" >
								<label for="fran_owner">점주명</label>
								<input type="text" class="form-control" id="fran_owner" name="fran_owner"  value="${fran.fran_owner }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_tel">전화번호</label>
								<input type="text" class="form-control" id="fran_tel" name="fran_tel"  value="${fran.fran_tel }" />
							</div>
							<div class="form-group col-sm-4" >
								<label for="fran_addr">주소</label>
								<input type="text" class="form-control" id="fran_addr" name="fran_addr" value="${fran.fran_addr }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_st">계약상태</label>
								<input type="text" class="form-control" id="fran_st" name="fran_st"  value="${fran.fran_st }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_reg_st">운영상태</label>
								<input type="text" class="form-control" id="fran_reg_st" name="fran_reg_st"  value="${fran.fran_reg_st }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_area">면적</label>
								<input type="text" class="form-control" id="fran_area" name="fran_area"  value="${fran.fran_area }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_gtn">보증금</label>
								<input type="text" class="form-control" id="fran_gtn" name="fran_gtn"  value="${fran.fran_gtn }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="writer">임대료</label>
								<input type="text" class="form-control" id="fran_rent_charge" name="fran_rent_charge"  value="${fran.fran_rent_charge }" />
							</div>
							
							<div class="form-group col-sm-2" >
								<label for="fran_manage_cost">관리비</label>
								<input type="text" class="form-control" id="fran_manage_cost" name="fran_manage_cost" value="${fran.fran_manage_cost}" />
							</div>
							
							<div class="form-group col-sm-2" >
								<label for="fran_se">점포구분</label>
								<input type="text" class="form-control" id="fran_se" name="fran_se" value="${fran.fran_se}" />
							</div>
						</div>		
						</form>						
						</div>
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row  -->
		
    </section>
    
    
    <!-- /.content -->
<%--     <%@ include file="/WEB-INF/views/common/summernote.jsp" %> --%>

<script>
window.onload = function(){
	Summernote_start($('#content'));
}

function modify_go(){
	$("form[role='form']").submit();
}
</script>
</body>