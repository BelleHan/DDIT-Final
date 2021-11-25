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
			  <button type="button" class="btn btn-block btn-primary btn-xs" onclick="Order()">발주요청</button>
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
						  				<option value="${lacaList}" <c:if test="${map.laca eq lacaList}">selected</c:if> >${lacaList}</option>
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
            <div class="row" style="padding:0 10px;">
            	<div class="col-sm-4" >
				     <input type="checkbox" value="" id="check_all"><label for="check_all">전체선택</label>
            	</div>
				<div class="col-sm-8" style="text-align: right;">
		     		<span>검색결과 <span style="color:red;"><b> ${orderGoodsList.size()} </b></span>개 </span>
				</div>
            </div>
            
			<div style="height:80vh;overflow-y:scroll;overflow-x:hidden;">
				<c:if test="${empty orderGoodsList }">
					<div>해당 내용이 없습니다.</div>
				</c:if>
			   <c:forEach items="${orderGoodsList }" var="orderGoods" varStatus="st">
					<!-- 전체검색결과 -->
					<div class="col-12" font-size:15px;">
			            <div class="info-box row">
			            	<div class="col-sm-1" style="margin:auto 0;">
			            	<input type="checkbox" data-target="checkGoods" name="checkGoods" 
									hq_goods_code="${orderGoods.hq_goods_code}"
									hq_goods_name="${orderGoods.hq_goods_name}"
									sup_goods_attr1="${orderGoods.supGoodsVO.sup_goods_attr1 }" 
									sup_goods_unit="${orderGoods.supGoodsVO.sup_goods_unit}"
									sup_goods_img="${orderGoods.supGoodsVO.sup_goods_img }"
									sup_goods_price="${orderGoods.goods_delivery_price}"
									st_count="${st.count}" />
			            	</div>
							<div class="product-image col-sm-2" id="pictureView" 
										style="height:85px; background-image:url('<%=request.getContextPath()%>/sup/goods/getPicture.do?sup_goods_img=${orderGoods.supGoodsVO.sup_goods_img}');background-repeat:no-repeat;background-position:center;background-size:cover;"></div>
					
				              <div class="info-box-content" style="padding-left: 10px;">
				                <span class="info-box-text"><b>${orderGoods.hq_goods_name}(${orderGoods.supGoodsVO.sup_goods_attr1}${orderGoods.supGoodsVO.sup_goods_unit})</b></span>
				                <span class="info-box-number">단가 &nbsp;&nbsp;${orderGoods.goods_delivery_price}<b>원</b></span>
				              </div>
			              <!-- /.info-box-content -->
			            </div>
			            <!-- /.info-box -->
	          		</div>
					<input data-target="orderGoodsCode" type="hidden" name="goods_code" id="goods_code" value="${orderGoods.supGoodsVO.sup_goods_code }"/>
					<input data-target="st_count" type="hidden" name="st_count" id="st_count" value="${st.count}"/>
				</c:forEach>
			</div>
		</div>
		<!-- 물품목록 박스-->	 

		<!-- 발주목록 세로 리스트 박스 -->
		<div class="col-4 column container" style="border: 1px solid #cecece; border-radius: 5px; height:80vh;overflow-y:scroll;overflow-x:hidden">
		<!-- 각 카드 리스트 박스 -->
				<div class="d-flex justify-content-between">
	                 <h3 class="card-title">발주목록</h3>
	<!--                   <a href="javascript:void(0);">View Report</a> -->
	            </div>
               <hr>
	            <div class="row" style="padding:0 5px; ">
	            	<div class="col-sm-4" >
					     <input type="checkbox" value="" id="check_all"><label for="check_all">전체선택</label>
	            	</div>
					<div class="col-sm-8" style="text-align: right;">
			     		<span>선택물품개수 <span style="color:red;"><b> </b></span>개 </span>
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

<form id="jobForm">
	<input type="hidden" name="laca" id="goodlaca">
	<input type="hidden" name="smca" id="goodsmca">
</form>
<script>
    //console.log($('#fran_order_quan${st.count }').val());

    function calcprice(count,price){
		var num = $('#fran_order_quan'+count).val().trim();
		var totalprice = $('#fran_order_price'+count);
		
		if(num)	totalprice.val(num * price); 
	}

	function deleteDiv() {
	  const div = document.getElementById('order_div${orderGoods.hq_goods_code}');
	  
	  div.remove();
	}
	
</script>
<script>
	function addOrder(data){
		console.log(data);
		$.ajax({
			url:'addOrderdetail.do',
			method:'post',
			data:data,
			success:function(orderList){
				console.log(orderList);
				printData(orderList,$('#addOrderDiv'),$('#addOrder-detail-template'),$('.addOrderDetail'));
			}
			error:function(xhs){
				alert('데이터를 받아오지 못했습니다.')
			}
		})
	}
</script>
<script type="text/x-handlerbars-template" id="addOrder-detail-template">
	{{#each .}}  
				<c:set var="i" value="${i+1 }"/>
				<tr style="cursor: pointer;" class="taking-detail" id="table-body-${i }">	
				<td>{{out_code }}<input type="hidden" id="outCode${i }" value="{{out_code }}"></td>
				<td>{{hq_goods_code }} <input type="hidden" id="goodsCode${i }" value="{{hq_goods_code }}"></td>
				<td>{{logis_code }}</td>
				<td>{{out_loca }}</td>
				<td>{{prettifyDate out_date }}</td>
				<td>{{out_st_name}}</td>
				<td class="contentable" id="f${i}" name="out_num" value="{{out_num }}">{{out_num}}</td>
				<td class="i${i }"><button type="button" class="btn btn-warning" id="modifyBtn${i }" onclick="modifyGo('${i }')" style="margin-top: 4px; font-size: 3px; width: 50px;">수정</button></td>
				<td class="i${i }"><button type="button" class="btn btn-primary" id="saveBtn${i }" onclick="saveGo('${i }');" style="font-size: 3px; margin-top: 4px; display:none; position: relative; right: 100px; width: 50px;">저 장</button></td>
				<td class="i${i }"><button type="button" class="btn btn-primary" id="cancelBtn${i }" onclick="cancelGo('${i }')" style="margin-top: 4px; display:none; font-size: 3px; position: relative; right: 150px; width: 50px;">취소</button></td>
				</tr>
	{{/each}}
</script>
<script>
function addOrder() {
	$('#addOrderDiv').empty();
	$('input[data-target="checkGoods"]:checked').each(function(){
		//alert($(this).attr("sup_goods_img"));
		var htmlCode = '<div  class="card bg-light mb-3 mb-3" data-target="order" id="addGoods">'
			+ '<div class="card-header">'
			+ '<input type="checkbox" data-target="orderGoods" name="checkGoods"'
			+ 'hq_goods_code="'+$(this).attr("hq_goods_code")+'"'
// 			+= 'sup_goods_price="'+$(this).attr("hq_goods_price")+'/>'
			+ '<b>'+$(this).attr("hq_goods_name")+'('+$(this).attr("sup_goods_attr1")+$(this).attr("sup_goods_unit")+')'+'</b>'
   			+ '<button type="button" class="close" data-dismiss="alert" aria-hidden="true" onclick="deleteDiv()">×</button>'
			+ '</div>'
			+ '<div class="card-body">'
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
			+ '<td><input data-target="orderNum" type="text" class="form-control fran_order_quan" value=0 id="fran_order_quan${st.count}" name="fran_order_quan" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣A-Za-z]/g, "")calcprice(${st.count },${orderGoods.goods_delivery_price})"></td>'
            + '</tr>'
			+ '<tr><th class="col-sm-4">금액(원)</th>'
            + '<td><input data-target="orderPrice" type="text" readonly class="form-control fran_order_price" id="fran_order_price" name="fran_order_price" placeholder="단가(원)*수량(개)"></td>'
            + '</tr>'
            + '</table>'
			+ '</div>'
			+ '<br>'
        	+ '<div class="row" style="margin: 0 auto">'
        	+ '<div class="col-sm-6">'
	        + '<input type="radio" value="1" id="generalorder" name="order-deli-se'+$(this).attr("st_count")+'" checked>'
        	+ '<label for="check1">일반발주 <i class="fas fa-truck"></i></label></div>'
        	+ '<div class="col-sm-6">'
          	+ '<input type="radio" value="2" id="speedorder" name="order-deli-se'+$(this).attr("st_count")+'">'
        	+ '<label for="check1">총알발주<i class="fas fa-space-shuttle"></i></label>'
        	+ '</div>'
        	+ '</div>'
			+ '</div>'
		    + '</div>'
		    + '</div>';
		$('#addOrderDiv').append(htmlCode);
	});
}

</script>
<script>
// function allChekc(){
// 	if("#allCheck").click(function(){
// 		if($(""))
// 	})
// }
</script>
<script>
function Order(){
	$('input[data-target="orderGoods"]:checked').change(function(event){
		
		if($(this).prop("checked")){
  			var input = $('<input>').attr({
  				type : "hidden",
  				hq_goods_code=$(this).attr("hq_goods_code"),
  				value :  $(this).attr("goods_pur_code")
  			});
		
		
		$('form[name="submitProduct"]').append(input);
			
		}else{
			$('form[name="submitProduct"]>input[goods_pur_code="'+$(this).attr("goods_pur_code")+'"]').remove();
		}
	});
}

</script>

<script>
	window.onload=function(){
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


<form name="submitProduct" action="<%=request.getContextPath()%>/sup/updateBuySt.do" method="post">
	
</form>
</body>