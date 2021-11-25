<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="orderGoodsList" value="${dataMap.orderGoodsList }" />
<c:set var="lacaList" value="${dataMap.lacaList }" />
<c:set var="smcaList" value="${dataMap.smcaList }" />
<c:set var="keyword" value="${dataMap.keyword }" />

<head>
<title>발주신청</title>
</head>
<style>
/* 리스트 css */

.container-fluid{
	margin-top: 20px;
}
.container-fluid .card{
	margin-left:auto;
	margin-right:auto;
}


.container {
  background-color: #b5c1dc57;
}



</style>
<!-- <script type="text/javascript"> 
// 	$(document).ready(function() {
// 		$("#cbx_chkAll").click(function() {
// 			if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
// 			else $("input[name=chk]").prop("checked", false);
// 		});
		
// 		$("input[name=chk]").click(function() {
// 			var total = $("input[name=chk]").length;
// 			var checked = $("input[name=chk]:checked").length;
			
// 			if(total != checked) $("#cbx_chkAll").prop("checked", false);
// 			else $("#cbx_chkAll").prop("checked", true); 
// 		});
// 	});
</script> -->
<body>
<script src="<%=request.getContextPath() %>/resources/js/common_kjy.js"></script>
<script src="/fms/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
 <!-- Main content -->
<div class="row" style="padding:10px;">
<!-- 		<div class="col-2 column" > -->
<!-- 		</div> -->
		<div class="col-8 column" >
<!-- 			  <button type="button" class="btn btn-primary float-sm-right">물품추가</button> -->
			  <button type="button" class="btn btn-block btn-warning btn-xs" onclick="addOrder()">물품추가&nbsp;&nbsp;<i class="fas fa-chevron-circle-right"></i></button>
		</div>
<!-- 		<div class="col-2 column" > -->
<!-- 		</div> -->
		<div class="col-4 column" >
<!-- 			  <button type="button" class="btn btn-primary float-sm-right">발주요청</button> -->
			  <button type="button" class="btn btn-block btn-primary btn-xs" onclick="Order();">발주요청</button>
		</div>
</div>

<div class="container-fluid">
	<div class="row">
		<!-- 세로 리스트 박스 -->
		<div class="col-4 column" >
		    <div class="info-box" style="height: 100px;">

              <div class="info-box-content" >
                <span class="info-box-text" style="padding-left: 15px;"><b>자동발주</b></span>
				<div class="row">
					<div class="col-sm-6">
		                  <a href="#" class="nav-link">
		                    <i class="fas fa-history"></i> 이전발주
		                  </a>
					</div>
					<div class="col-sm-6">
		                  <a href="#" class="nav-link">
		                    <i class="fas fa-thumbs-up"></i> 추천발주
		                  </a>
					</div>
				 </div>
              </div>
              <!-- /.info-box-content -->
            </div>
            <div class="card text-white bg-primary mb-3 no-move">
			<div class="card-header">Header</div>
			<div class="card-body">
			<h5 class="card-title">card 1</h5>
			<p class="card-text">no-move</p>
			</div>
	</div>

		<!-- 각 카드 리스트 박스 -->
		</div>
		
		<!-- 세로 리스트 박스 --><!-- 물품목록 -->
		<div class="col-4 container" >
			<div class="info-box"  style="height: 100px; margin-bottom: 5px;">
	<!--               <span class="info-box-icon bg-info"><i class="far fa-envelope"></i></span> -->
					<div class="col-sm-9">
					 	<div class="form-group row">
				 			<span>대분류</span>
							<select class="form-control col-md-8" name="laca" id="idLaca" onchange="list_go_orderGoods();" style="text-align: center;margin-left:10px;">
								<c:if test="${!empty lacaList }">
							  		<option value="">전체</option>
							  		<c:forEach var ="lacaList" items="${lacaList }">
						  				<option value="${lacaList}" <c:if test="${lacaList eq lacaList}">selected</c:if> >${lacaList}</option>
							  		</c:forEach>
							  	</c:if>						
					  		</select>
						</div>
					 	<div class="form-group row">
					 		<span>소분류</span>
							<select class="form-control col-md-8" name="smca" id="idSmca" onchange="list_go_orderGoods();" style="text-align: center;margin-left:10px;">
						  		<c:if test="${!empty smcaList }">
						  		<option value="" >전체</option>
						  		<c:forEach var ="smcaList" items="${smcaList }">
					  				<option value="${smcaList}"  <c:if test="${map.smca eq smcaList}">selected</c:if> >${smcaList}</option>
						  		</c:forEach>
					  			</c:if>
					  		</select>				
						</div>
					</div>
<!-- 	                <div class="info-box-content"> -->
<!-- 					 	<div class="col-sm-3" style="margin:auto 0;"> -->
<!-- 							<button class="btn btn-primary" type="button" onclick="list_go_orderGoods(1);" data-card-widget="search"> -->
<!-- 								<i class="fa fa-fw fa-search"></i> -->
<!-- 							</button> -->
<!-- 		              	</div> -->
<!-- 		             </div> -->
	              <!-- /.info-box-content -->
             </div>
             
             <!-- infobox(검색조건) -->
            <div class="row" style="padding:0 15px;">
            	<div class="col-sm-4" >
				     <input type="checkbox" id="allCheck"><label for="allCheck" style="font-size:13px;">&nbsp;&nbsp;전체선택</label>
            	</div>
				<div class="col-sm-8" style="text-align: right;">
		     		<span style="font-size:13px;">검색결과 <span style="color:red;"><b> ${orderGoodsList.size()} </b></span>개 </span>
				</div>
            </div>
            
			<div style="height:80vh;overflow-y:scroll;overflow-x:hidden;">
				<c:if test="${empty orderGoodsList }">
					<div style="text-align:center;vertical-align:middle;padding-top:50px;"><b>해당 내용이 없습니다.</b></div>
				</c:if>
			   <c:forEach items="${orderGoodsList }" var="orderGoods" varStatus="st">
					<!-- 전체검색결과 -->
					<div class="col-12" style="font-size:14px;">
			            <div class="info-box row" style="border:1px solid #6E6E6E;">
			            	<div class="col-sm-1" style="margin:auto 0;">
			            	<input type="checkbox" data-target="checkGoods" name="checkGoods" id="check_${orderGoods.hq_goods_code}"
									hq_goods_code="${orderGoods.hq_goods_code}"
									hq_goods_name="${orderGoods.hq_goods_name}"
									sup_goods_attr1="${orderGoods.supGoodsVO.sup_goods_attr1 }" 
									sup_goods_unit="${orderGoods.supGoodsVO.sup_goods_unit}"
									sup_goods_img="${orderGoods.supGoodsVO.sup_goods_img }"
									sup_goods_price="${orderGoods.goods_delivery_price}"
									st_count="${st.count}" 
									avail_num="${orderGoods.avail_num}"
									/>
			            	</div>
<%-- 			            	<label for="check_${orderGoods.hq_goods_code}"> --%>
							<div class="product-image col-sm-2" id="pictureView"
										style="height:85px; background-image:url('<%=request.getContextPath()%>/sup/goods/getPicture.do?sup_goods_img=${orderGoods.supGoodsVO.sup_goods_img}');background-repeat:no-repeat;background-position:center;background-size:cover;"></div>
<!-- 			            	</label> -->
					
				              <div class="info-box-content" style="padding-left: 10px;">
				                <label for="check_${orderGoods.hq_goods_code}" class="info-box-text" style="padding:0"><b>${orderGoods.hq_goods_name}(${orderGoods.supGoodsVO.sup_goods_attr1}${orderGoods.supGoodsVO.sup_goods_unit})</b></label>
				                <label for="check_${orderGoods.hq_goods_code}" class="info-box-number" style="padding:0">단가 &nbsp;&nbsp;${orderGoods.goods_delivery_price}<b>원</b></label>
<%-- 				                <span class="info-box-number" style="padding:0">단가 &nbsp;&nbsp;${orderGoods.avail_num}<b>원</b></span> --%>
				              </div>
			              <!-- /.info-box-content -->
			            </div>
			            <!-- /.info-box -->
	          		</div>
					<input data-target="st_count" type="hidden" name="st_count" id="st_count" value="${st.count}"/>
					<input data-target="orderGoodsCode" type="hidden" name="goods_code" id="goods_code" value="${orderGoods.supGoodsVO.sup_goods_code }"/>
				</c:forEach>
			</div>
		</div>
		<!-- 물품목록 박스-->	 

		<!-- 발주목록 세로 리스트 박스 -->
		<div class="col-4 column container" style="border: 1px solid #cecece; border-radius: 5px; height:95vh;overflow-y:scroll;overflow-x:hidden">
		<!-- 각 카드 리스트 박스 -->
				<div class="d-flex justify-content-between" style="padding-top:10px;">
	                 <h3 class="card-title">발주목록</h3>
	<!--                   <a href="javascript:void(0);">View Report</a> -->
	            	<div style="font-size:13px;">총 발주금액&nbsp; :&nbsp;<span style="color:red;"><b id="selectPrice">0</b></span>&nbsp;원</div>
	            </div>
               <hr>
	            <div class="row" style="padding:0 5px; ">
	            	<div class="col-sm-4" style="padding-left: 20px;">
					     <input type="checkbox" value="" id="all_check"><label for="all_check" style="font-size:13px;">&nbsp;&nbsp;전체선택</label>
	            	</div>
					<div class="col-sm-8" style="text-align: right;" id="totalCount">
			     		<span style="font-size:13px;">선택물품개수 &nbsp;<span style="color:red;"><b id="selectNum">0</b></span>&nbsp;개 </span>
					</div>
	            
	             <!-- 발주할 물품개수 -->
		             <div id="addOrderDiv" style="width:100%;">
		             
		             </div>
	            	<!-- addOrderDiv끝 -->
	            
				</div>
		</div>
		<!-- 발주목록 끝 -->
		
	</div>
	<div class="card-footer">
<%-- 				<%@ include file="/WEB-INF/views/common/paginationGoods.jsp" %>				 --%>

		</div>
</div>
<!-- 전체박스 -->

<!-- 전체선택 -->
<script>
// 	$("#allCheck").click(function(){
// 		var chk = $("allCheck").prop("checked");
// 		if(chk){
// 			$("")
// 		}
// 	})
</script>
<form id="jobForm">
	<input type="hidden" name="laca" id="goodlaca">
	<input type="hidden" name="smca" id="goodsmca">
</form>

<script>
function addOrder() {
// 	$('#addOrderDiv').empty();

	$('input[data-target="checkGoods"]:checked').each(function(){
		
// 		alert("#" + $(this).attr("hq_goods_code"));
// 		alert($("#" + $(this).attr("hq_goods_code") , "#addOrderDiv").length);
		
		if($("#" + $(this).attr("hq_goods_code") , "#addOrderDiv").length==0){
					
			var htmlCode = '<div  class="card bg-light mb-3 mb-3" data-target="order" name="order" id="'+$(this).attr("hq_goods_code")+'">'
				+ '<div class="card-header">'
				+ '<input type="checkbox" data-target="orderGoods" name="orderGoods" id="checkGoods_'+$(this).attr("hq_goods_code")+'"'
				+ 'hq_goods_code="'+$(this).attr("hq_goods_code")+'"'
				+ 'st_count="'+$(this).attr("st_count")+'"'
				+ 'avail_num="' + $(this).attr("avail_num") +'"/>'
				
				+ '<label  style="padding-left:8px;" for="checkGoods_'+$(this).attr("hq_goods_code")+'">'+$(this).attr("hq_goods_name")+'('+$(this).attr("sup_goods_attr1")+$(this).attr("sup_goods_unit")+')'+'</label>'
	   			+ '<button type="button" class="close" data-dismiss="alert" aria-hidden="true" onclick="deleteDiv('+$(this).attr("hq_goods_code")+')" id="delete'+$(this).attr("hq_goods_code")+'">×</button>'
				+ '</div>'
				+ '<div class="card-body" style="padding-bottom:inherit;">'
				+ '<div class="card-text">'
				+ '<div class="row">'
				+ '<div class="product-image col-sm-3" id="pictureView" style="background-image:url('
						+"'<%=request.getContextPath()%>/sup/goods/getPicture.do?sup_goods_img="
						+$(this).attr('sup_goods_img') 
						+"'"
						+');background-position:center;background-size:cover;background-repeat:no-repeat;" ></div>'
				+ '<table class="product-image col-sm-9" style="font-size: 13px">'
	            + '<tr><th class="col-sm-4">단가(원)</th>'
	            + '<td>'+$(this).attr("sup_goods_price")+'<b>원</b></td></tr>'
	            + '<tr><th class="col-sm-4">수량(개)</th>'
				+ '<td><input data-target="orderNum" type="text" class="form-control fran_order_quan" value=1 id="fran_order_quan'+$(this).attr("st_count")+'" name="fran_order_quan" onkeyup="calcprice('+$(this).attr("st_count")+','+$(this).attr("sup_goods_price")+','+$(this).attr("avail_num")+');"></td>'
	            + '</tr>'
				+ '<tr><th class="col-sm-4">금액(원)</th>'
	            + '<td><input data-target="orderPrice" type="text" readonly class="form-control fran_order_price" id="fran_order_price'+$(this).attr("st_count")+'" name="fran_order_price" value="'+$(this).attr("sup_goods_price")+'"></td>'
	            
	            + '</tr>'
	            + '</table>'
				+ '</div>'
				+ '<br>'
	        	+ '<div class="row" style="margin: 0 auto">'
	        	+ '<div class="col-sm-6">'
		        + '<input type="radio" value="1" id="generalorder" data-target="orderDeli" name="order-deli-se'+$(this).attr("st_count")+'" checked>'
	        	+ '<label for="check1">일반발주 <i class="fas fa-truck"></i></label></div>'
	        	
	        	+ '<div class="col-sm-6" id="fastOrderSt'+$(this).attr("st_count")+'" style="display:none;">'
	          	+ '<input type="radio" value="2" id="speedorder" data-target="orderDeli" name="order-deli-se'+$(this).attr("st_count")+'"/>'
	        	+ '<label for="check1">총알발주<i class="fas fa-space-shuttle"></i></label>'
	        	+ '</div>'
	        	
	        	+ '</div>'
				+ '</div>'
			    + '</div>'
			    + '</div>';
			$('#addOrderDiv').append(htmlCode);
				
		}
		
// 				var sum = $('#totalSum').val();
// 				var perPrice = $('input[name="fran_order_price"]', $("#" + goodsCode)).val();
// 				sum += perPrice;
// // 				sum = sum+perPrice;
// 				console.log(sum);
				
// 				sum.val(sum);
// 				totalSum.val(sum);
	});
}

// ($("#" + $(this).attr("hq_goods_code"),  "#addOrderDiv").on("click", "tr", function(){
// 	var d = $(this).find("td:eq(1)").text();
// 	alert('ddd')
// 	alert(d);
// 	$("input[data-target='fran_order_quan']").val();
// 	$("input[data-target='fran_order_price']").val();
// 	$("input[data-target='order-deli-se']:checked").val();
// });
</script>
<script>
	function Order(){
		alert('btn');
		$('form[name="submitProduct"]').empty();
		$('input[data-target="orderGoods"]:checked').each(function(event){
			var goodsCode = $(this).attr("hq_goods_code");
			
			if($(this).prop("checked")){
				
				var input = $('<input>').attr({
					type	:	"hidden",
					hq_goods_code	:	$(this).attr("hq_goods_code"),
					name	:	"hq_goods_code",
					value	:	$(this).attr("hq_goods_code")
					
				});
				$('form[name="submitProduct"]').append(input);
// 				alert($(this).attr("hq_goods_code"));
				
				var input1 = $('<input>').attr({
					type	:	"hidden",
					hq_goods_code	:	$(this).attr("hq_goods_code"),
					name	:	"fran_order_quan",
					value	:	$('input[name="fran_order_quan"]', $("#" + goodsCode)).val()
// 					value	:	$("#" + $(this).attr("hq_goods_code"), "#addOrderDiv").$("input[data-target='fran_order_quan']").val();
				});
				$('form[name="submitProduct"]').append(input1);
				
// 				alert($('input[name="fran_order_quan"]', $("#" + goodsCode)).val());
			
				var input2 = $('<input>').attr({
					type	:	"hidden",
					hq_goods_code	:	$(this).attr("hq_goods_code"),
					name	:	"fran_order_price",
					value	:	$('input[name="fran_order_price"]', $("#" + goodsCode)).val()
				});
				
				$('form[name="submitProduct"]').append(input2);
				alert($('input[name="fran_order_price"]', $("#" + goodsCode)).val());
				
				var input3 = $('<input>').attr({
					type	:	"hidden",
					hq_goods_code	:	$(this).attr("hq_goods_code"),
					name	:	"order_detail_st",
					value	:	$('input[data-target="orderDeli"]:checked', $("#" + goodsCode)).val()
				});
				$('form[name="submitProduct"]').append(input3);
				alert($('input[data-target="orderDeli"]:checked', $("#" + goodsCode)).val());
				
			}else{
     				$('form[name="submitProduct"]>input[hq_goods_code="'+$(this).attr("hq_goods_code")+'"]').remove();
   			}
		});
				
		$('form[name="submitProduct"]').submit();
	}

</script>

	<form name="submitProduct" action="<%=request.getContextPath()%>/fr/order/insertOrder" method="post">
			
	</form>
<script>
	$("#allCheck").click(function(){
		if($("#allCheck").prop("checked")){
			$("input[data-target=checkGoods]").prop("checked",true);
		}else{
			$("input[data-target=checkGoods]").prop("checked",false);
		}
	});
</script>
	
<script>
	$('#all_check').click(function(){
		if($("#all_check").prop("checked")){
			$("input[data-target=orderGoods]").prop("checked", true);
		}else{
			$("input[data-target=orderGoods]").prop("checked", false);
		}
	});
	
</script>

<script>

	function deleteDiv(code) {
	  $('#delete'+code).empty();
	}

</script>
<script>

    function calcprice(count,price,availNum){
    	var fran_order_quan = $('#fran_order_quan'+count)
		var num = $('#fran_order_quan'+count).val().trim();
    	
    	if(/[\ㄱ-ㅎㅏ-ㅣ가-힣A-Za-z]/g.test(num)){
	    	fran_order_quan.val("");
    		return
    	}
		
		var totalprice = $('#fran_order_price'+count);
		
		console.log(count,price);
		
		if(num)	totalprice.val(num * price); 
		
// 		var sum += totalprice.val(parseInt(num)*parseInt(price));
		
// 		var totalSum = $('#totalSum');
// 		totalSum.val(parseInt(sum));
		
		var quan = parseInt($('#fran_order_quan'+count).val());
		var intavailNum = parseInt(availNum);
		
		if(intavailNum >= quan && quan != 0){
			console.log("BLOCK");
// 			$('#fastOrderSt').style.display="block";
			$('#fastOrderSt'+count).css("display", "block");
		}else{
			$('#fastOrderSt'+count).css("display", "none");
		}
		
	}

	
</script>

<script>


	window.onload=function(){
		$(document).on("change", 'input[data-target="orderGoods"]', function(){
			console.log($('input[data-target="orderGoods"]:checked').length);
			$('#selectNum').html($('input[data-target="orderGoods"]:checked').length);
			
			var sum = 0;

			$('input[data-target="orderGoods"]:checked').each(function(event){
				var goodsCode = $(this).attr("hq_goods_code");
				
				sum += Number($('input[name="fran_order_price"]', $("#" + goodsCode)).val());
				console.log(sum);
				$('#selectPrice').html(sum);
			});
		});
		
		
		
		$('#idLaca').change(function(event){
// 			alert($(this).val());
			searchList();
		});
		$('#idSmca').change(function(event){
// 			alert($(this).val());
			searchList();
		});
	}
	
	function searchList(){
		var searchForm = $("#searchForm").get(0);
		$("#goodlaca").val($('select[name="laca"]').val());
		$("#goodsmca").val($('select[name="smca"]').val());
		searchForm.submit();
	}

	function refresh() {
		fms_laca = "";
		fms_smca = "";
		document.querySelector('#fms-laca').value = "";
		document.querySelector('#fms-smca').value = "";
	}

</script>

</body>