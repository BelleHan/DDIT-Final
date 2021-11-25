<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
.content {
	font-family: 'Noto Sans KR', sans-serif;
}
.table {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 13px;
    text-align: center;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body class="sidebar-mini sidebar-collapse" style="height: auto;">
<div class="wrapper">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 1071.31px;">
<!--     Content Header (Page header) -->
    <section class="content-header">

    </section>

<!--     Main content -->
    <section class="content">
      <div class="container-fluid">
      
      <c:if test="${fran_appr_st eq 2}">
       <div class="card card-default">
          <div class="card-header">
<!--           <div class="row"> -->
          <div>
            <i class="fa fa-rocket float-left" style="padding:4px 5px 0 0;"></i><h3 class="card-title">총알 배송 가능</h3>
          </div>
           
            <div style="float: right;">
<!--             	<button type="button" class="btn btn-info btn-sm" style="width:91px;" value='selectall' id="selectAll">전체선택</button> -->
            	<button type="button" class="btn btn-info btn-sm" style="width:91px;" onclick="send()">총알변경</button>
          	</div>
<!--           </div> -->
          </div>
<!--           /.card-header -->

		<div class="col-12">
              <div class="card-body table-responsive p-0" style="padding-bottom:10px;">
                <table class="table table-hover" style="padding-bottom:10px;">
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="quickCheck"/></th>
                      <th>발주코드</th>
                      <th>발주상세번호</th>
                      <th>물품코드</th>
                      <th>물품명</th>
                      <th>수량</th>
                      <th>가격</th>
                    </tr>
                  </thead>
                  <tbody>
	                  <c:forEach items="${QuickList }" var="QuickList">
	                  	<c:if test="${QuickList.avail_num != 0 and QuickList.avail_num > QuickList.fran_order_quan}">
		                    <tr>
		                      <td><input data-target="quickCheck" type="checkbox" name="quickCheck" 
		                      		fran_order_code="${QuickList.fran_order_code }" order_detail_num="${QuickList.order_detail_num }"/></td>
		                      <td>${QuickList.fran_order_code }</td>
		                      <td>${QuickList.order_detail_num }</td>
		                      <td>${QuickList.hq_goods_code }</td>
		                      <td>${QuickList.hqGoodsVO.hq_goods_name }</td>
		                      <td>${QuickList.fran_order_quan }</td>
		                      <td>${QuickList.fran_order_price }</td>
		                    </tr>
		                </c:if>
	                  </c:forEach>  
                  </tbody>
                </table>

              </div>
              <!-- /.card-body -->
	          <div class="card-footer">

			</div>
            </div>
            <!-- /.card -->
   
            		

          </div>
      </c:if>
      
      
<!--         SELECT2 EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
<!--           <div class="row"> -->
          <div>
            <i class="fas fa-info-circle float-left" style="padding:4px 5px 0 0;"></i><h3 class="card-title">발주 상세 내역</h3>
          </div>
           <c:if test="${fran_appr_st eq 2}">
            <div style="float: right;">
<%--             	<button type="button" class="btn btn-info btn-sm" style="width:91px;" onclick='location.href="<%=request.getContextPath()%>/hq/updateApprSt.do?fran_appr_st=2&fran_order_code=${franOrderDeVO[0].fran_order_code }";'>미승인</button> --%>
<%--             	<button type="button" class="btn btn-info btn-sm" style="width:91px;" onclick='location.href="<%=request.getContextPath()%>/hq/updateApprSt.do?fran_appr_st=1&fran_order_code=${franOrderDeVO[0].fran_order_code }";'>승인</button> --%>
            	<button type="button" class="btn btn-info btn-sm" style="width:91px;" onclick="submitSt()">승인</button>
          	</div>
          </c:if>
<!--           </div> -->
          </div>
<!--           /.card-header -->

		<div class="col-12">
              <div class="card-body table-responsive p-0" style="padding-bottom:10px;">
                <table class="table table-hover" style="padding-bottom:10px;">
                  <thead>
                    <tr>
                      <th>NO</th>
                      <th>발주코드</th>
                      <th>발주상세번호</th>
                      <th>물품코드</th>
                      <th>물품명</th>
                      <th>수량</th>
                      <th>가격</th>
                    </tr>
                  </thead>
                  <tbody>
	                  <c:forEach items="${franOrderDeVO }" var="franOrder">
	                  	<c:set var="i" value="${i+1 }" />
	                    <tr>
	                      <td>${i }</td>
	                      <td>${franOrder.fran_order_code }</td>
	                      <td>${franOrder.order_detail_num }</td>
	                      <td>${franOrder.hq_goods_code }</td>
	                      <td>${franOrder.hqGoodsVO.hq_goods_name }</td>
	                      <td>${franOrder.fran_order_quan }</td>
	                      <td>${franOrder.fran_order_price }</td>
	                    </tr>
	                  </c:forEach>  
                  </tbody>
                </table>

              </div>
              <!-- /.card-body -->
	          <div class="card-footer">

			</div>
            </div>
            <!-- /.card -->
   
            		

          </div>
          
          
          


		</div>
           </section>
		</div>
	  </div>



<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
	function submitSt() {
		$('form[name="submitProduct"]').submit();
	}
	
	window.onload=function(){
		
		
		
		$('#quickCheck').click(function () {
			if ($("input:checkbox[id='quickCheck']").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
		});
		
		$()
		
		$('#selectAll').click(function () {
			$("input[type=checkbox]").prop("checked", true);
		});
		
		$('input[data-target="quickCheck"]').change(function(event){
			if($(this).prop("checked")){
				var input = $('<input>').attr({
					type : "text",
					fran_order_code : $(this).attr("fran_order_code"),
					name : "order_detail_num",
					value : $(this).attr("order_detail_num")
				});
				$('form[name="submitProduct"]').append(input);
			}else{
				$('form[name="submitProduct"]>input[order_detail_num="'+$(this).attr("order_detail_num")+'"]').remove();
			}
		});
	} // onload 끝...
	
	
	function send(){
		
		var tempData = "";
		$("input[name='quickCheck']:checked").each(function(i,v){
			
			if(tempData!="") tempData += "&";
			
			fran_order_code = $(this).attr("fran_order_code");
			order_detail_num = $(this).attr("order_detail_num");
			
			tempData += "fran_order_code=" + fran_order_code + "&order_detail_num=" + order_detail_num
			
			//data = {"fran_order_code" : fran_order_code, "order_detail_num" : order_detail_num};
			
		});
		
		
		$.ajax({
			url : '<%=request.getContextPath()%>/hq/updateQuickList',
			//data : JSON.stringify(data),
			data : tempData,
			//contentType : "application/json; charset=URF-8",
			type : 'POST',
			success : function(data){
				alert("총알 배송으로 변경되었습니다.");
				location.reload();
			},
			error : function(error){
				alert("변경 실패하였습니다.");
			}
		});
	}


	
</script>

<form name="submitProduct" action="<%=request.getContextPath() %>/hq/updateApprSt.do" method="post">
	<input type="hidden" name="fran_code" value="${fran_code }" />
	<input type="hidden" name="fran_appr_st" value="1" />
  	<input type="hidden" name="fran_order_code" value="${franOrderDeVO[0].fran_order_code }" />
	  <c:forEach items="${franOrderDeVO }" var="franOrder">
	  	<input type="hidden" name="hq_goods_code" value="${franOrder.hq_goods_code }" />
	  	<input type="hidden" name="fran_order_quan" value="${franOrder.fran_order_quan }" />
	  	<input type="hidden" name="order_detail_st" value="${franOrder.order_detail_st }" />
	  </c:forEach>  
</form>

</body>
</html>