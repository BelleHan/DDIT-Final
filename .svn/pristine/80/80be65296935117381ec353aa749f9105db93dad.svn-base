<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.css">
</head>
 <body>  
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>출고계획 수정하기</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>출고계획
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
							<button type="button" id="modifyBtn" class="btn btn-primary" onclick="modify_go();">MODIFY</button>						
						    <button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">CLOSE</button>
					    </div>
					</div>
					<div class="card-body">
						<div class="card card-primary">
              
				              <!-- /.card-header -->
				              <!-- form start -->
				            <form role="form" method="post" action="outmodify.do" name="modifyForm">
				                <div class="card-body">
				                  <div class="form-group">
				                    <label for="exampleInputEmail1">출고번호</label>
				                    <input type="text" class="form-control" id="outCode" readonly value="${out.out_code }" name="out_code" />
				                  </div>
				                  <div class="form-group">
				                    <label for="exampleInputPassword1">물류센터코드</label>
				                   <input type="text" class="form-control" id="logisCode" readonly value="${out.logis_code }" name="logis_code"/>
				                  </div>
				                  <div class="form-group">
				                    <label for="exampleInputPassword1">물품코드</label>
				                  <input type="text" class="form-control" id="hqGoodsCode"  readonly value="${out.hq_goods_code }" name="hq_goods_code" />
				                  </div>
				                  <div class="form-group">
				                    <label for="exampleInputPassword1">출고지유형</label>
				              		  <select class="form-control" name="out_loca_type">
				                          <option value="1" ${ out.out_loca_type == 1 ? 'selected' : '' }>물류센터</option>
				                          <option value="2" ${ out.out_loca_type == 2 ? 'selected' : '' }>가맹점</option>
				                        </select>
				                  </div>
				                  <div class="form-group">
				                    <label for="exampleInputPassword1">도착지</label>
				                   <input type="text" class="form-control" id="outLoca" value="${out.out_loca }" name="out_loca" />
				                  </div>
				                  <div class="form-group">
				                    <label for="exampleInputPassword1">출고일자</label>
				                   <input type="text" class="form-control" id="outDate" value="<fmt:formatDate value="${out.out_date }" pattern="yyyy-MM-dd"/>" name="out_date" />
				                  </div>
				                  <div class="form-group">
				                    <label for="exampleInputPassword1">출고상태</label>
				                   <input type="text" class="form-control" id="outSt" value="${out.out_st }" name="out_st"/>
				                  </div>
				                  <div class="form-group">
				                    <label for="exampleInputPassword1">출고수량</label>
				                   <input type="text" class="form-control" id="outNum" value="${out.out_num  }"name="out_num " />
				                  </div>
				                  
				                 </div>
				                 
				                 
				                <!-- /.card-body -->

               
					             </form>
					           
																	
							</div>													
				</div><!-- end card -->				
			</div><!-- end col-md-12 -->
		</div><!-- end row  -->
    
    </section>
    
    
    <!-- /.content -->
<%--     <%@ include file="/WEB-INF/views/common/summernote.jsp" %> --%>

<script>
    	window.onload=function(){
    		Summernote_start($("#content"));
    	}
    	
    	function modify_go(){
    		$("form[role='form']").submit();
    	}
</script>

</body>