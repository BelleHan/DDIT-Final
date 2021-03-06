<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="orderGoodsList" value="${dataMap.orderGoodsList }" />
<c:set var="lacaList" value="${dataMap.lacaList }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="smcaList" value="${dataMap.smcaList }" />
<c:set var="keyword" value="${dataMap.keyword }" />
<c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 1234567) %></c:set>

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

<body>
<script src="<%=request.getContextPath() %>/resources/js/common_kjy.js"></script>
<script src="/fms/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

<script type="text/javascript">
Stirng.prototype.replaceAll = function(crg, dest){
	return this.split(org).join(dest);
}
</script>
 <!-- Main content -->
<div class="row" style="padding:10px;">
<!-- 		<div class="col-2 column" > -->
<!-- 		</div> -->
	
</div>

<div class="container-fluid">
	<div class="row">
		<!-- 추천발주 세로리스트  -->
		<div class="col-4 column" >
            <div class="card text-white bg-primary mb-3 no-move">
				<div class="card-header"><b><i class="fas fa-thumbs-up"></i>&nbsp;추천발주</b><div style="float:right;"><b> 고매출상품&nbsp;<i class="fas fa-star" style="color:red;"></i></b></div></div>
				<div class="card-body"style="padding-bottom: 0px;padding-top: 10px;padding-left: 10px;padding-right: 10px;">
					
					<button type="button" class="btn btn-block btn-warning btn-xs float-right" onclick="addOrder()" style="height: 25px;"><b>물품추가&nbsp;&nbsp;<i class="fas fa-chevron-circle-right"></i></b></button>
					
					<div class="info-box">
		                <table class="table table-hover" style="padding-bottom:10px; color:black; background-color:white; width:520px; font-size:15px; font-family: 'Noto Sans KR', sans-serif;">
							<tr style="text-align: center;">
								<th><input type="checkbox" id="orderCheck"/></th>
								<th>물품명</th>
								<th>수량(개)</th>
								<th>단가(원)</th>
							</tr>
							<c:forEach var="recList" items="${recList }" varStatus="st">
								<tr>
									<td><input type="checkbox" name="orderCheck2" data-target="checkGoods"
										 hq_goods_code="${recList.hqGoodsVO.hq_goods_code }"
										 hq_goods_name="${recList.hqGoodsVO.hq_goods_name }"
										 avail_num="${recList.avail_num }"
										 sup_goods_attr1="${recList.supGoodsVO.sup_goods_attr1 }"
										 sup_goods_unit="${recList.supGoodsVO.sup_goods_unit }"
										 sup_goods_img="${recList.supGoodsVO.sup_goods_img }"
										 sup_goods_price="${recList.supGoodsVO.sup_goods_price }"
										 st_count="${st.count+1000}" 
										 need_num="${recList.need_num }" 
										 quick_st="1" 
										 /></td>
									<td>
									${recList.hqGoodsVO.hq_goods_name }<c:if test="${recList.high_stock eq '1'}"><i class="fas fa-star" style="color:red;"></i></c:if></td>
									<td style="text-align: center;">${recList.need_num }</td>
									<td style="text-align: right;"><fmt:formatNumber value="${recList.hqGoodsVO.goods_retail_price }" pattern="#,###"/> </td>
								</tr>
							</c:forEach>
							
						</table>
					</div>
				</div>
			</div>

		<!-- 각 카드 리스트 박스 -->
		</div><!-- 추천발주 end -->
		
		
		<!-- 일반발주 물품목록 세로 리스트 박스 -->
		<div class="col-4 container" id="lists" >
			  <form id="searchFrom"  method="post" action="list.do">
				<div class="card" style="margin-bottom:0px;">
					<div class="card-body search-body" style="height: auto;">
							<div class="input-group row">
									<label style="padding: 6px 10px 0px 10px;">대분류</label>
									<select class="form-control" name="laca" id="idLaca"  style="text-align-last: center;border-radius: 5px;" onchange="getSmcaList();">
										<c:if test="${!empty lacaList}">
									  		<option value="">전체 </option>
									  		<c:forEach var ="lacaList" items="${lacaList}">
									  			<option value="${lacaList}" <c:if test="${map.laca eq lacaList}">selected</c:if> >${lacaList}</option>
									  		</c:forEach>
									  	</c:if>						
								  	</select>
									<label style="padding: 6px 10px 0px 5px;">소분류</label>
									<select class="form-control" name="smca" id="idSmca"  style="text-align-last:center;border-radius: 5px;">
								  		<c:if test="${!empty smcaList}">
								  		<option value="" >전체</option>
								  		<c:forEach var ="smcaList" items="${smcaList}">
								  			<option value="${smcaList}"  <c:if test="${map.smca eq smcaList}">selected</c:if> >${smcaList}</option>
								  		</c:forEach>
							  			</c:if>
								  	</select>						
							</div>
							<div class="input-group row"  style="padding: 7px 10px 0px 5px;">
								<label style="padding: 7px 10px 0px 5px;">물품명</label>
								<input class="form-control" type="text" name="keyword" id="keyword" style="border-radius:5px; margin-right:15px;"placeholder="물품명을 입력하세요." value="${param.keyword }"/>
<!-- 								<button class="btn btn-primary" type="button" onclick= "searchBtn()" data-card-widget="search" style="border-radius: 5px;"><i class="fa fa-fw fa-search"></i></button> -->
								<button class="btn btn-primary" type="submit" data-card-widget="search" style="border-radius: 5px;"><i class="fa fa-fw fa-search"></i></button>
							</div>
							<div class="row" style="margin-top:10px;">
				              <button type="button" class="btn btn-block btn-warning btn-xs float-right" onclick="addOrder()" style="height: 25px;"><b>물품추가&nbsp;&nbsp;<i class="fas fa-chevron-circle-right"></i></b></button>
							</div>
					</div>
				</div>
		    </form>
            <!-- /.info-box-content -->
             
             <!-- infobox(검색조건) -->
            <div class="row" style="padding:0 15px;">
            	<div class="col-sm-4" >
				     <input type="checkbox" id="allCheck"><label for="allCheck" style="font-size:13px;">&nbsp;&nbsp;전체선택</label>
            	</div>
				<div class="col-sm-8" style="text-align: right;">
		     		<span style="font-size:13px;">검색결과 <span style="color:red;"><b> ${orderGoodsList.size()} </b></span>개 </span>
				</div>
            </div>
            
			<div style="height:80vh;overflow-y:scroll;overflow-x:hidden;" >
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
									st_count="${st.count + ran }" 
									avail_num="${orderGoods.avail_num}"
									quick_st="2"
									/>
			            	</div>
<%-- 			            	<label for="check_${orderGoods.hq_goods_code}"> --%>
							<div class="product-image col-sm-2" id="pictureView"
										style="height:85px; background-image:url('<%=request.getContextPath()%>/sup/goods/getPicture.do?sup_goods_img=${orderGoods.supGoodsVO.sup_goods_img}');background-repeat:no-repeat;background-position:center;background-size:cover;"></div>
<!-- 			            	</label> -->
					
				              <div class="info-box-content" style="padding-left: 10px;">
				                <label for="check_${orderGoods.hq_goods_code}" class="info-box-text" style="padding:0"><b>${orderGoods.hq_goods_name}(${orderGoods.supGoodsVO.sup_goods_attr1}${orderGoods.supGoodsVO.sup_goods_unit})</b></label>
				                <label for="check_${orderGoods.hq_goods_code}" class="info-box-number" style="padding:0">단가 &nbsp;&nbsp;<fmt:formatNumber value="${orderGoods.goods_delivery_price}" pattern="#,###"/> <b>원</b></label>
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
		
		
		<!-- 물품추가버튼 -->
<!-- 		<div class="col-1 column container"> -->
<!-- 			<button type="button" class="btn btn-warning btn-xs" onclick="addOrder()" style="border-radius: 30px;">물품추가&nbsp;&nbsp;<i class="fas fa-chevron-circle-right"></i></button> -->
<!-- 		</div> -->
		
		<!-- 발주목록 세로 리스트 박스 -->
		<div class="col-4 column container" style="border: 1px solid #cecece; border-radius: 5px; overflow:auto;">
		<!-- 각 카드 리스트 박스 -->
				<div class="row column" style="padding-top:5px; padding-right:5px;">
               	  <span class="card-title col-sm-9" style="font-size:17px;"><b><i class="fas fa-shopping-cart"></i>&nbsp;&nbsp;발주목록</b></span>
				  <button type="button" class="btn btn-primary btn-xs col-sm-3"onclick="Order();">발주요청</button>
				</div>
				
				<div class="d-flex justify-content-between" style="padding-top:10px;">
					<div class="col" style="text-align: right;" id="totalCount">
						<table class="float-right" style="font-size: 13px;">
							<tr  style="width :300px;">
							<td style="width : 100px;"><span style="font-size:13px;font-weight:bold;">총 발주금액&nbsp;&nbsp; :&nbsp;</span></td>
							<td style="color:red;"><b id="selectPrice">0</b></td>
<%-- 							<td><b id="selectPrice"><fmt:formatNumber value="0" pattern="#,###"/></b></td> --%>
							<td><span style="width:50px;"><b>&nbsp;원</b></span></td>
							</tr>
						</table>
					</div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-4" style="padding-left: 20px;">
					     <input type="checkbox" value="" id="all_check"><label for="all_check" style="font-size:13px;">&nbsp;&nbsp;전체선택</label>
	            	</div>
	            	<div class="col-sm-8" style="padding-left: 20px;text-align: right;">
		     			<table class="float-right" style="padding-right:15px;font-size: 13px;">
							<tr  style="width :300px;">
							<td style="width : 100px;"><span style="font-size:13px;padding-right:8px;font-weight:bold;">선택물품개수 :</span></td>
							<td><b id="selectNum" style="color:red;">0</b></td>
							<td><span style="width:60px;"><b>&nbsp;개</b></span></td>
							</tr>
						</table>
	            	</div>
	            </div>
               <hr>
	            <div class="row" style="padding:0 5px; height:95vh;overflow-y:scroll;overflow-x:hidden;">
	            
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
<!-- <form id="jobForm"> -->
<!-- 	<input type="hidden" name="laca" id="goodlaca"> -->
<!-- 	<input type="hidden" name="smca" id="goodsmca"> -->
<!-- </form> -->

<script>
//추천발주 물품 전체 선택
$('#orderCheck').click(function () {
		if ($("input:checkbox[id='orderCheck']").prop("checked")) {
			$("input:checkbox[name='orderCheck2']").prop("checked", true);
		} else {
			$("input:checkbox[name='orderCheck2']").prop("checked", false);
		}
});

var addOrderArr = [];
function addOrder() {
// 	$('#addOrderDiv').empty();

	$('input[data-target="checkGoods"]:checked').each(function(){
		
		if($("#" + $(this).attr("hq_goods_code") , "#addOrderDiv").length==0){
					
			var htmlCode = '<div  class="card bg-light mb-3 mb-3" data-target="order" name="order" id="'+$(this).attr("hq_goods_code")+'">'
				+ '<div class="card-header">'
				+ '<input type="checkbox" data-target="orderGoods" name="orderGoods" id="checkGoods_'+$(this).attr("hq_goods_code")+'"'
				+ 'hq_goods_code="'+$(this).attr("hq_goods_code")+'"'
				+ 'st_count="'+$(this).attr("st_count")+'"'
				+ 'avail_num="' + $(this).attr("avail_num") +'"/>'
				
				+ '<label  style="padding-left:8px;" for="checkGoods_'+$(this).attr("hq_goods_code")+'">'+$(this).attr("hq_goods_name")+'('+$(this).attr("sup_goods_attr1")+$(this).attr("sup_goods_unit")+')'+'</label>'
	   			+ '<button type="button" class="close" data-dismiss="alert" aria-hidden="true" onclick="deleteDiv(\''+$(this).attr("hq_goods_code")+'\');" id="delete'+$(this).attr("hq_goods_code")+'">×</button>'
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
	            + '<td>'+thousand($(this).attr("sup_goods_price"))+'<b>원</b></td></tr>'
// 	            <fmt:formatNumber value="0" pattern="#,###"/>
	            + '<tr><th class="col-sm-4">수량(개)</th>'
				+ '<td><input data-target="orderNum" type="text" class="form-control fran_order_quan"';
				
				if($(this).attr('quick_st') == '1'){
					htmlCode += 'value="'+$(this).attr('need_num')+'"';
				}else {
					htmlCode += 'value=1 ';
				}
				
				htmlCode += 'id="fran_order_quan'+$(this).attr("st_count")+'" name="fran_order_quan" onkeyup="calcprice('+$(this).attr("st_count")+','+$(this).attr("sup_goods_price")+','+$(this).attr("avail_num")+');"></td>'
				
				+ '</tr>'
				
				+ '<tr><th class="col-sm-4">금액(원)</th>'

				if($(this).attr('quick_st') == '1'){
					htmlCode += '<td><input data-target="orderPrice" type="text" readonly class="form-control fran_order_price" id="fran_order_price'+$(this).attr("st_count")+'" name="fran_order_price" value="'+thousand(parseInt($(this).attr('need_num'))*parseInt($(this).attr("sup_goods_price")))+'"></td>';
				}else {
					htmlCode += '<td><input data-target="orderPrice" type="text" readonly class="form-control fran_order_price" id="fran_order_price'+$(this).attr("st_count")+'" name="fran_order_price" value="'+thousand($(this).attr("sup_goods_price"))+'"></td>';
				}
				
// 				htmlCode +=
				
// 				+ '<td><input data-target="orderPrice" type="text" readonly class="form-control fran_order_price" id="fran_order_price'+$(this).attr("st_count")+'" name="fran_order_price" value="'+$(this).attr("sup_goods_price")+'"></td>'
	            
	            htmlCode += '</tr>'
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
// 			$('#addOrderDiv').append(sessionStorage.getItem("cart") + htmlCode);
				
// 		    sessionStorage.setItem("cart"+$(this).attr("st_count"), sessionStorage.getItem("cart") + htmlCode);
			
			addOrderArr.push(htmlCode);
			
			
		    
		   // sessionStorage.setItem("cart", sessionStorage.getItem("cart")!=null ? sessionStorage.getItem("cart") + htmlCode : htmlCode);
		   // console.log("cart : " + sessionStorage.getItem("cart"));
		}//end if
	});
	
// 	console.log(addOrderArr.length, "111111111111111111");
	
    sessionStorage.setItem("cart1", JSON.stringify(addOrderArr));
}

</script>
<script>

function thousand(x){
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
}


</script>

<script>
	function Order(){
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
				
				var input1 = $('<input>').attr({
					type	:	"hidden",
					hq_goods_code	:	$(this).attr("hq_goods_code"),
					name	:	"fran_order_quan",
					value	:	$('input[name="fran_order_quan"]', $("#" + goodsCode)).val()
				});
				$('form[name="submitProduct"]').append(input1);
				
				var input2 = $('<input>').attr({
					type	:	"hidden",
					hq_goods_code	:	$(this).attr("hq_goods_code"),
					name	:	"fran_order_price",
					value	:	($('input[name="fran_order_price"]', $("#" + goodsCode)).val()).replaceAll(",","")
				});
				$('form[name="submitProduct"]').append(input2);
				
				var input3 = $('<input>').attr({
					type	:	"hidden",
					hq_goods_code	:	$(this).attr("hq_goods_code"),
					name	:	"order_detail_st",
					value	:	$('input[data-target="orderDeli"]:checked', $("#" + goodsCode)).val()
				});
				$('form[name="submitProduct"]').append(input3);

			}else{
     				$('form[name="submitProduct"]>input[hq_goods_code="'+$(this).attr("hq_goods_code")+'"]').remove();
   			}
		});
		
		
		if(confirm("발주요청을 진행하시겠습니까?")==true){
			//발주 요청 시 세선값 삭제(cart)
			sessionStorage.clear();
			$('form[name="submitProduct"]').submit();
		}
	}

</script>

	<form name="submitProduct" action="<%=request.getContextPath()%>/fr/order/insertOrder" method="post">
	</form>
	
<script>
	function getSmcaList(){
		var form = $("#searchFrom");
		var param = $("#idLaca option:selected").val();
		var url = "<%=request.getContextPath()%>/fr/goods/searchSmca2";
		
		$.ajax({
			url : url,
			type : "post",
			data : param,
			contentType : 'application/json',
			success : function(data){
				var res = "<option value=''>전체</option>";
				console.log(data);
				$.each(data,function(i,v){
					res += "<option value='"+data[i]+"'>"+data[i]+"</option>"
				});
				$("#idSmca").html(res);
			}
		})
	}

</script>

<script>
	function searchBtn(){
		alert('btn');
		var form = $("searchFrom");
		var param =$("#idLaca option:selected").val();
		var param2 = $("#idSmca option:selected").val();
		var param3 = $("#keyword").val();
		var url = "<%=request.getContextPath()%>/fr/goods/searchList";
	
		console.log(param);
		console.log(param2);
		console.log(param3);
		
		var data = "laca="+ $("#idLaca option:selected").val();
		data +="&smca="+$("#idSmca option:selected").val();
		data +="&keyword="+$("#keyword").val();
		
		$.ajax({
			url : url,
			type :'post',
			data : data,
			dataType : 'json',
// 			contentType : 'application/json',
			success	: function(data){
				console.log(data);
				alert('성공');
				
// 				resultHtml(data);
				$('#lists').append(resultHtml(data));
			}
		});
	}
</script>


<script>
	$("#allCheck").click(function(){
		if($("#allCheck").prop("checked")){
			$("input[name=checkGoods]").prop("checked",true);
		}else{
			$("input[name=checkGoods]").prop("checked",false);
		}
	});
</script>
	
<script>
	$('#all_check').click(function(){
		if($("#all_check").prop("checked")){
			$("input[data-target=orderGoods]").prop("checked", true);
			
			$('#selectNum').html($('input[data-target="orderGoods"]:checked').length);
			
			var sum = 0;

			$('input[data-target="orderGoods"]:checked').each(function(event){
				var goodsCode = $(this).attr("hq_goods_code");
				
				sum += Number(($('input[name="fran_order_price"]', $("#" + goodsCode)).val()).replaceAll(",",""));
				console.log(sum);
				$('#selectPrice').html(thousand(sum));
			});
		}else{
			$("input[data-target=orderGoods]").prop("checked", false);
			
			$('#selectNum').html($('input[data-target="orderGoods"]:checked').length);
			
			var sum = 0;

			$('#selectPrice').html(sum);
			$('input[data-target="ordergoods"]:checked').each(function(event){
				var goodscode = $(this).attr("hq_goods_code");
				
				sum += Number(($('input[name="fran_order_price"]', $("#" + goodscode)).val()).replaceAll(",",""));
				console.log(thousand(sum));
			});
			
		}
 
	});
	
</script>

<script>

	function deleteDiv(code) {
		var good = $(this).attr("hq_goods_code");

		 $("div[id="+code+"]").remove();
		 
		 
	 	var sessionStr = sessionStorage.getItem("cart1");
	 	var sourceArr =  JSON.parse(sessionStr);
		var tempArr =  [];
		$.each(sourceArr, function(i,v){
			if(!$(v).is("#" + code)){
				tempArr.push(v);
			} 
		});
		
		sessionStorage.setItem("cart1", JSON.stringify(tempArr));
	
	}

</script>
<script>

    function calcprice(count,price,availNum){
    	
    	console.log(count, price, availNum)
    	var fran_order_quan = $('#fran_order_quan'+count)
    	
		var num = $('#fran_order_quan'+count).val().trim();
    	
    	if(/[\ㄱ-ㅎㅏ-ㅣ가-힣A-Za-z]/g.test(num)){
	    	fran_order_quan.val("");
    		return
    	}
		
		console.log(($('#fran_order_price'+count).val()).replaceAll(",",""))
		
// 		var totalprice = $('#fran_order_price'+count).replaceAll(",","");
		var totalprice = ($('#fran_order_price'+count).val()).replaceAll(",","");
		
    	
		var totalprice = $('#fran_order_price'+count);
		
		console.log(num,price);
		
		console.log(thousand(num*price));
		
// 		if(num)	totalprice.val(num * price); 
		if(num)	totalprice.val(thousand(num*price)); 
		
		var quan = parseInt($('#fran_order_quan'+count).val());
		var intavailNum = parseInt(availNum);
		
		if(intavailNum >= quan && quan != 0){
			console.log("BLOCK");
			$('#fastOrderSt'+count).css("display", "block");
		}else{
			$('#fastOrderSt'+count).css("display", "none");
		}
		
	}

	
</script>

<script>
	window.onload=function(){
// 		sessionStorage.clear();
		
// 		$("#addOrderDiv").html(sessionStorage.getItem("cart"));
		
		    
		sessionStr = sessionStorage.getItem("cart1");
		if(sessionStr){
			addOrderArr =  JSON.parse(sessionStr);
// 			console.log(addOrderArr.length);
			var htmlCode = "";
			$.each(addOrderArr, function(i,v){
				htmlCode += v; 
			});
			$("#addOrderDiv").html(htmlCode);
			
		}else{
			addOrderArr = [];
		}
		
		
		$(document).on("change", 'input[data-target="orderGoods"]', function(){
			console.log($('input[data-target="orderGoods"]:checked').length);
			$('#selectNum').html($('input[data-target="orderGoods"]:checked').length);
			
			if(('input[data-target="orderGoods"]').length !=$('input[data-target="orderGoods"]:checked').length ){
				$("input[id=all_check]").prop("checked",false);
			}
			if(('input[data-target="orderGoods"]').length ==$('input[data-target="orderGoods"]:checked').length ){
				$("input[id=all_check]").prop("checked",true);
			}
			
			
			var sum = 0;
			
			if($('#selectNum').html($('input[data-target="orderGoods"]:checked').length) != 0){
		
				$('input[data-target="orderGoods"]:checked').each(function(event){
					var goodsCode = $(this).attr("hq_goods_code");
					
					sum += Number(($('input[name="fran_order_price"]', $("#" + goodsCode)).val()).replaceAll(",",""));
					console.log(sum);
					
					$('#selectPrice').html(thousand(sum));
				});
			}
			
			$('#selectPrice').html(thousand(sum));
		});
		
		
	}
</script>

</body>