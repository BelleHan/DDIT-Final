<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>

  <!-- Content Wrapper. Contains page content -->
   
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
      <!-- Main content -->
    <section class="content container-fluid">
      <div class="row">
         <div class="col-md-12">
            <div class="card card-outline card-info">
               <div class="card-header">
               <c:forEach items="${logisWh }" var="logisWh">
                 <h4>${logisWh.wh_name }&nbsp;${logisWh.hq_goods_code } 재고</h4>              
                  <div class="card-tools">
                     <button type="button" id="modifyBtn" class="btn btn-warning" onclick="modify_go();">수 정</button>                  
                      <button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">닫 기</button>
                   </div>
				</c:forEach>
               </div>
               <div class="card-body">
               <c:forEach items="${logisWh }" var="logisWh">
                  <div class="row">   
                  <div class="form-group col-sm-4">
                     <label for="logis_goods_stock">현재고</label>
                     <input type="text" class="form-control" id="logis_goods_stock" name="logis_goods_stock" readonly value="${logisWh.logis_goods_stock }" />                     
                  </div>
                     <div class="form-group col-sm-4" >
                        <label for="logis_safe_stock">안전재고</label>
                        <input type="text" class="form-control" id="logis_safe_stock" name="logis_safe_stock" readonly value="${logisWh.logis_safe_stock }"/>
                     </div>      
                     
                     <div class="form-group col-sm-4" >
                        <label for="logis_suit_stock">적정재고</label>
                        <input type="text" class="form-control" id="logis_suit_stock" name="logis_suit_stock" readonly value="${logisWh.logis_suit_stock }"/>
                     </div>
                  </div>      
               </c:forEach>           
               </div>                                       
            </div><!-- end card -->            
         </div><!-- end col-md-12 -->
      </div><!-- end row  -->
    </section>
    <!-- /.content -->
  <!-- /.content-wrapper -->

<form role="form">
<c:forEach items="${logisWh }" var="logisWh">
   <input type="hidden" name="hq_goods_code" value="${logisWh.hq_goods_code }" />
   <input type="hidden" name="wh_name" value="${logisWh.wh_name }" />
   <input type="hidden" name="logis_code" value="${logisWh.logis_code }" />
</c:forEach>
</form>
   
  
<script>
   <c:if test="${from eq 'modify' }">
      alert("수정되었습니다.");
   </c:if>
   <c:if test="${from eq 'remove' }">
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
</body>
 
 
 
 
 
 
 
 
 
 
 