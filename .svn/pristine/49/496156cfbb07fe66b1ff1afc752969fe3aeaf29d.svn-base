<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
<c:if test="${from eq 'modify'}">
	<script>
	alert("정상적으로 수정되었습니다.");
	</script>	
	</c:if>

  <!-- Content Wrapper. Contains page content -->
  <div  style="max-width:800px;min-width:420px;margin:0 auto;min-height:812px;">


  <!-- Content Wrapper. Contains page content -->
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>출고 상세</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>출고계획
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
						<!-- 	<button type="button" id="saveBtn" class="btn btn-warning" onclick="save_go();">SAVE</button>		 -->				
							<button type="button" id="modifyFormBtn" class="btn btn-warning" onclick="modify_go();">MODIFY</button>						
						    <!-- <button type="button" id="removeBtn" class="btn btn-danger" onclick="remove_go();">REMOVE</button> -->
						    <button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">CLOSE</button>
					    </div>
					</div>
					<div class="card-body">
						<div class="card card-primary">
              <!-- <div class="card-header">
                <h3 class="card-title" style="margin-left: 43%;" >공급업체 정보</h3>
              </div> -->
              <!-- /.card-header -->
              <!-- form start -->
             <form role="form" method="post" action="<%=request.getContextPath() %>/hq/inout/outdetail.do" name="modifyForm">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">출고번호</label>
                    <input type="text" class="form-control" id="outCode" readonly value="${out.out_code }" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">물류센터코드</label>
                   <input type="text" class="form-control" id="logisCode" readonly value="${out.logis_code }" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">물품코드</label>
                  <input type="text" class="form-control" id="hqGoodsCode" readonly value="${out.hq_goods_code }" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">출고지유형</label>
                      <select class="form-control" name="out_loca_type" disabled="disabled">
                          <option value="1" ${ out.out_loca_type == 1 ? 'selected' : '' }>물류센터</option>
                          <option value="2" ${ out.out_loca_type == 2 ? 'selected' : '' }>가맹점</option>
                        </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">도착지</label>
                   <input type="text" class="form-control" id="outLoca" readonly value="${out.out_loca }" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">출고일자</label>
                  	
                   <input type="text" class="form-control" id="outDate" readonly value="<fmt:formatDate value="${out.out_date }" pattern="yyyy-MM-dd"/>" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">출고상태</label>
                   <input type="text" class="form-control" id="outSt" readonly value="${out.out_st }" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">출고수량</label>
                   <input type="text" class="form-control" id="outNum" readonly value="${out.out_num  }" />
                  </div>
                  
                 
                <!-- /.card-body -->

               
              </form>
            </div>
													
					</div>													
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row  -->
    
    </section>
    
    
    
    
    
    
    </div>
    
    <!-- /.content -->
  <!-- /.content-wrapper -->

<form role="form">
	<input type="hidden" name="ocode" value="${out.out_code}" />
</form>

<script>
var formObj = "";
window.onload=function(){
	formObj = $("form[role='form']");
}
function modify_go(){
// 	alert("modify");
	formObj.attr('action', '<%=request.getContextPath()%>/hq/inout/outmodifyForm.do').submit();
}

</script>
</body>