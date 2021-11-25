<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
<%-- <c:if test="${from eq 'remove' }" >
	<script>
		alert("삭제되었습니다.");
		window.opener.location.reload();
		window.close();
	</script>
</c:if> --%>

  <!-- Content Wrapper. Contains page content -->
<!--   <div  style="max-width:800px;min-width:420px;margin:0 auto;min-height:812px;"> -->


  <!-- Content Wrapper. Contains page content -->
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>가맹점정보 상세</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>가맹점
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
							<button type="button" id="modifyBtn" class="btn btn-warning"
								onclick="modify_go();">수정</button>
							<!-- 						    <button type="button" id="removeBtn" class="btn btn-danger" onclick="remove_go();">REMOVE</button> -->
							<button type="button" id="listBtn" class="btn btn-primary"
								onclick="CloseWindow();">닫기</button>
						</div>
					</div>
					<div class="card-body">

						<div class="row">
							<div class="form-group col-sm-2" >
								<label for="fran_code">가맹점코드</label>
								<input type="text" class="form-control" id="fran_code" name="fran_code" readonly value="${fran.fran_code }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_name">가맹점명</label>
								<input type="text" class="form-control" id="fran_name" name="fran_name" readonly value="${fran.fran_name }" />
							</div>
						
							<div class="form-group col-sm-2" >
								<label for="fran_owner">점주명</label>
								<input type="text" class="form-control" id="fran_owner" name="fran_owner" readonly value="${fran.fran_owner }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_tel">전화번호</label>
								<input type="text" class="form-control" id="fran_tel" name="fran_tel" readonly value="${fran.fran_tel }" />
							</div>
							<div class="form-group col-sm-4" >
								<label for="fran_addr">주소</label>
								<input type="text" class="form-control" id="fran_addr" name="fran_addr" readonly value="${fran.fran_addr }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_st">계약상태</label>
								<input type="text" class="form-control" id="fran_st" name="fran_st" readonly value="${fran.fran_st }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_reg_st">운영상태</label>
								<input type="text" class="form-control" id="fran_reg_st" name="fran_reg_st" readonly value="${fran.fran_reg_st }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_area">면적</label>
								<input type="text" class="form-control" id="fran_area" name="fran_area" readonly value="${fran.fran_area }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="fran_gtn">보증금</label>
								<input type="text" class="form-control" id="fran_gtn" name="fran_gtn" readonly value="${fran.fran_gtn }" />
							</div>
							<div class="form-group col-sm-2" >
								<label for="writer">임대료</label>
								<input type="text" class="form-control" id="fran_rent_charge" name="fran_rent_charge" readonly value="${fran.fran_rent_charge }" />
							</div>
							
							<div class="form-group col-sm-2" >
								<label for="fran_manage_cost">관리비</label>
								<input type="text" class="form-control" id="fran_manage_cost" name="fran_manage_cost" readonly value="${fran.fran_manage_cost}" />
							</div>
							
							<div class="form-group col-sm-2" >
								<label for="fran_se">점포구분</label>
								<input type="text" class="form-control" id="fran_se" name="fran_se" readonly value="${fran.fran_se}" />
							</div>
						</div>
					</div>
				</div>
				<!-- end card -->
			</div>
			<!-- end col-md-12 -->
		</div>
		<!-- end row  -->
	</section>

	<!-- /.content -->
  <!-- /.content-wrapper -->

<form role="form">
	<input type="hidden" name="fcode" value="${fran.fran_code}" />
</form>

<script>
var formObj = "";
window.onload=function(){
	formObj = $("form[role='form']");
}
function modify_go(){
// 	alert("modify");
	formObj.attr('action', '<%=request.getContextPath()%>/hq/com/franmodifyForm.do').submit();
}
function remove_go(){
// 	alert("remove");
	var answer = confirm("정말 삭제하시겠습니까?");
	if(answer) formObj.attr({'action':'remove.do','method':'post'}).submit();
}
</script>
</body>