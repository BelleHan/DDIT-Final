<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="logisWh" value="${logisWh }" />
<head>
<!-- summernote -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.css">
</head>
<body>   
	<c:forEach items="${logisWh }" var="logisWh">
   <section class="content-header">
   <div class="container-fluid">
           <div class="row md-2">
              <div class="col-sm-12" style="text-align: right;">
      			  <div class="col-sm-12">
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                      <li class="small"><span class="fa-li"></span>창고코드&nbsp;:&nbsp;${logisWh.wh_code }</li>
                        <li class="small"><span class="fa-li"></span>창고면적&nbsp;:&nbsp;${logisWh.wh_area }</li>
                        <li class="small"><span class="fa-li"></span>창고구분&nbsp;:&nbsp;${logisWh.wh_st }</li>
                        <li class="small"><span class="fa-li"></span>갱신일자&nbsp;:&nbsp;<fmt:formatDate value="${logisWh.stock_update }" pattern="yyyy-MM-dd" /></li>
                      </ul>
                  </div>
              </div>
           </div>
        </div>
   </section>
   </c:forEach>
   <section class="content container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-outline card-info">
            <div class="card-header">
              <h4 class="col-md-8">재고수정</h4>
                <div class="float-right">
                  <button type="button" class="btn btn-warning" id="modifyBtn" onclick="modify_go();">저 장</button>
                  <button type="button" class="btn btn-default " id="cancelBtn" onclick="history.go(-1);">취 소</button>
                </div>
            </div><!--end card-header  -->
            <div class="card-body">
              <form role="form" method="post" action="modify.do" name="modifyForm">
              <c:forEach items="${logisWh }" var="logisWh">
              <div class="row">
                <input type="hidden" name="wh_name" value="${logisWh.wh_name }" />
                <input type="hidden" name="hq_goods_code" value="${logisWh.hq_goods_code }" />
                <input type="hidden" name="logis_code" value="${logisWh.logis_code }" />
                <div class="form-group col-sm-4">
                  <label for="logis_goods_stock">현재고</label> 
                  <input type="text" id="logis_goods_stock" name='logis_goods_stock' class="form-control" value="${logisWh.logis_goods_stock }">
                </div>
                <div class="form-group col-sm-4">
                  <label for="logis_safe_stock">안전재고</label> 
                  <input type="text" id="logis_safe_stock" 	name="logis_safe_stock" class="form-control"  value="${logisWh.logis_safe_stock }">
                </div>
                <div class="form-group col-sm-4">
                  <label for="logis_suit_stock">적정재고</label> 
                  <input type="text" id="logis_suit_stock" 	name="logis_suit_stock" class="form-control"  value="${logisWh.logis_suit_stock }">
                </div>
              </div>
                </c:forEach>
              </form>
            </div><!--end card-body  -->
            
          </div><!-- end card -->				
        </div><!-- end col-md-12 -->
      </div><!-- end row -->
      </section>
    <!-- /.content -->
    
    
    <script>
    	window.onload=function(){
    		Summernote_start($("#content"));
    	}
    	
    	function modify_go(){
    		$("form[role='form']").submit();
    	}
    </script>
    
</body>    
    
    
    
    
    
    
    
    
    
    