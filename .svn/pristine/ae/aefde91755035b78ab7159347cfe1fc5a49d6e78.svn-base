<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당장거래요청서</title>
<style type="text/css">
th{
	text-align: center;
}
</style>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<c:if test="${!empty franDealList}">
		<c:forEach items="${franDealList }" var="dealList">
			<form name = "dealSuccess" action="<%=request.getContextPath()%>/fr/toFran/dealSuccess">
			<div class="col-12">
		           <input type="hidden" value="${dealList.fran_deal_code }" id="dealCode" name="fran_deal_code"/>
	            <div class="card card-outline card-danger">
		              <div class="card-header">
		                <h3 class="card-title" style="background-color: #F5A9A9;"><i class="fas fa-carrot float-left" style="padding:4px 5px 0 0;"></i><b>당장거래요청서</b></h3>
		              </div>
		              
		              <div class="card-body">
						 <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
				                <tbody>
					                <tr role="row" >
					                  <th class="sorting_1" style="width:15%">요청지점</th>
					                  <td>${dealList.franVO.fran_name}</td>
					                  <th class="sorting_1" style="width:15%">전화번호</th>
					                  <td>${dealList.franVO.fran_tel}</td>
					                </tr>
					                <tr role="row">
					                  <th class="sorting_1">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</th>
					                  <td colspan="3">${dealList.franVO.fran_addr}&nbsp;${dealList.franVO.fran_detail_addr}</td>
					                </tr>
					                <tr role="row" >
					                  <th class="sorting_1">물품명</th>
					                  <td><b>${dealList.hqGoodsVO.hq_goods_name}</b></td>
					                  <th class="sorting_1">요청수량</th>
					                  <td style="color:red;"><b>${dealList.deal_quan}</b></td>
					                </tr>
				               </tbody>
			              </table>
			              <div class="row" style="padding:10px;">
			              	<div class="col-sm-3"></div>
			              	<div class="col-sm-3"><button type="button" class="btn btn-block btn-secondary" onclick="denyDeal()">거&nbsp;&nbsp;절</button></div>
			              	<div class="col-sm-3"><button type="button" class="btn btn-block btn-primary" onclick="acceptDeal();">수&nbsp;&nbsp;락</button></div>
			              	<div class="col-sm-3"></div>
			              </div>
		              </div>
		              <!-- /.card-body -->
	            </div>
		            <!-- /.card -->
	          </div>
		</form>
		</c:forEach>      
	
		<div class="col-12">
	            
            <div class="card card-danger">
	              <div class="card-header">
	                <h3 class="card-title"><i class="fas fa-carrot float-left" style="padding:4px 5px 0 0;"></i><b>요청물품에 대한 현재고정보</b></h3>
	              </div>
	              
	              <div class="card-body">
					 <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info" style="font-size: 15px;">
			                <tbody>
				                <tr role="row" >
				                  <th class="sorting_1" style="width:15%">물품코드</th>
				                  <th class="sorting_1" style="width:30%">물품명</th>
				                  <th class="sorting_1" style="width:15%">현재고량</th>
				                  <th class="sorting_1" style="width:20%">적정재고량</th>
				                  <th class="sorting_1" style="width:20%">여유수량</th>
				                </tr>
								<c:forEach items="${goodsList }" var="goods">
					                <tr role="row" >
					                  <td class="sorting_1" style="text-align: center;">${goods.hq_goods_code}</td>
					                  <td class="sorting_1" ><b>${goods.hqGoodsVO.hq_goods_name}</b></td>
					                  <td class="sorting_1" style="text-align: center;">${goods.fran_goods_stock}</td>
					                  <td class="sorting_1" style="text-align: center;">${goods.fran_suit_stock}</td>
					                  <c:if test="${goods.fran_goods_stock - goods.fran_suit_stock > 0}">
					                	  <td class="sorting_1" style="color:red;text-align: center;background-color: yellow;"><b>${goods.fran_goods_stock - goods.fran_suit_stock }</b></td>
					                  </c:if>
					                  <c:if test="${goods.fran_goods_stock - goods.fran_suit_stock <= 0}">
					                 	 <td class="sorting_1" style="color:red;text-align: center;"><b>${goods.fran_goods_stock - goods.fran_suit_stock }</b></td>
					                  </c:if>
					                </tr>
								</c:forEach>      
			               </tbody>
		              </table>
	              </div>
	              <!-- /.card-body -->
            </div>
	            <!-- /.card -->
          </div>
	</c:if>
	
	<c:if test="${empty franDealList }">
		<div class="col-12">
	            <div class="card card-outline card-danger">
		              <div class="card-header">
		                <h3 class="card-title"><i class="fas fa-carrot float-left" style="padding:4px 5px 0 0;"></i><b>당장거래요청서</b></h3>
		              </div>
		              
		              <div class="card-body">
						 <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
				                <tbody>
					                <tr role="row" >
					                  <th>요청 내용이 없습니다.</th>
					                </tr>
				               </tbody>
			              </table>
		              </div>
		              <!-- /.card-body -->
	            </div>
		            <!-- /.card -->
	          </div>
	  </c:if>        

<form name="denySubmit" action="<%=request.getContextPath()%>/fr/toFran/dealDeny" method="post">
</form>          
<script>
	function acceptDeal(){
		if(confirm("당장거래 요청을 승인하시겠습니까?")==true){
			$('form[name="dealSuccess"]').submit();
		}
	}
	
	function denyDeal(){
		var param = $("#dealCode").val();
		console.log(param);
		
		var input = $('<input>').attr({
			type	:	"hidden",
			name	:	"fran_deal_code",
			value	:	param
		});
		
		console.log(input)
		
		$('form[name="denySubmit"]').append(input);
		
		if(confirm("당장거래 요청을 거절하시겠습니까?")==true){
			$('form[name="denySubmit"]').submit();
		}
		
	}
	
</script>
</body>
</html>