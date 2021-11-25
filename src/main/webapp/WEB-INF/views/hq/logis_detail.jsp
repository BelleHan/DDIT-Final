<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.floatdiv{
	float : left;
}
</style>
<body>
  <!-- Content Wrapper. Contains page content -->
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>물류센터 정보</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>물류센터
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
						<h3 class="card-title"></h3>
						<div class="card-tools">
							<button type="button" id="saveBtn" class="btn btn-warning" onclick="save_go();">SAVE</button>						
							<button type="button" id="modifyFormBtn" class="btn btn-warning" onclick="modify_go();">수정</button>						
						    <button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">CLOSE</button>
						    <button type="button" class="btn btn-default " id="cancelBtn" onclick="history.go(-1);">닫기</button>
					    </div>
					</div>
					<div class="card-body">
						<form role="form" method="post" action="<%=request.getContextPath() %>/hq/com/logismodify.do" name="modifyForm">
							<div class="form-group">
								<label for="logis_code">물류센터코드</label>
								<input type="text" class="form-control" id="logis_code" name="logis_code" readonly value="${logis.logis_code }">
							</div>
							<div class="form-group">
								<label for="logis_local_num">지역코드</label>
								<input type="text" class="form-control logisform" id="logis_local_num" name="logis_local_num" readonly value="${logis.logis_local_num }" />
							</div>
							<div class="form-group">
								<label for="logis_name">물류센터명</label>
								<input type="text" class="form-control logisform" id="logis_name" name="logis_name" readonly value="${logis.logis_name }" />
							</div>
							<div class="form-group">
								<label for="logis_owner">대표자</label>
								<input type="text" class="form-control logisform" id="logis_owner" name="logis_owner" readonly value="${logis.logis_owner }" />
							</div>
							<div class="form-group">
								<label for="logis_tel">전화번호</label>
								<input type="text" class="form-control logisform" id="logis_tel" name="logis_tel" readonly value="${logis.logis_tel }" />
							</div>
							<div class="form-group">
								<label for="logis_email">이메일</label>
								<input type="text" class="form-control logisform" id="logis_email" name="logis_email" readonly value="${logis.logis_email }" />
							</div>
							<div class="form-group">
								<label for="logis_business_no">사업자번호</label>
								<input type="text" class="form-control logisform" id="logis_business_no" name="logis_business_no" readonly value="${logis.logis_business_no }" />
							</div>
							<div class="form-group">
								<label for="logis_zip">우편번호</label>
								<input type="text" class="form-control logisform" id="logis_zip" name="logis_business_no" readonly value="${logis.logis_zip }" />
							</div>
							<div class="form-group">
								<label for="logis_addr">주소</label>
								<input type="text" class="form-control logisform" id="logis_addr" name="logis_addr" readonly value="${logis.logis_addr }" />
							</div>
							<div class="form-group">
								<label for="logis_detail_addr">상세주소</label>
								<input type="text" class="form-control logisform" id="logis_detail_addr" name="logis_detail_addr" readonly value="${logis.logis_detail_addr }" />
							</div>
							<div class="form-group">
									<label for="logis_contract_st">계약상태</label>
									<input type="text" class="form-control logisform" id="logis_contract_st" name="logis_contract_st" readonly value="${logis.logis_contract_st }" />
							</div>
							<div class="form-group">
								<label for="logis_reg_st">등록상태</label>
								<input type="text" class="form-control logisform" id="logis_reg_st" name="logis_reg_st" readonly value="${logis.logis_reg_st }" />
							</div>
						</form>
					</div>													
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row  -->
    </section>

<script>
var formObj = "";
window.onload=function(){
	formObj = $("form[role='form']");
	
	$('#saveBtn').hide();
	$('#cancelBtn').hide();
}

function modify_go(){
	$('input.logisform').removeAttr('readonly');
	$('#modifyFormBtn').hide();
	$('#listBtn').hide();
	$('#saveBtn').show();
	$('#cancelBtn').show();
}
function save_go(){
	formObj.submit();
}
function remove_go(){
// 	alert("remove");
	var answer = confirm("정말 삭제하시겠습니까?");
	if(answer) formObj.attr({'action':'remove.do','method':'post'}).submit();
}
</script>
</body>