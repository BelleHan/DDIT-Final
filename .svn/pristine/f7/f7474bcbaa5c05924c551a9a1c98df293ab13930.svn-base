<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<title>발주신청</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 부트스트랩 4.x를 사용한다. -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
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
/* 이동 타켓 */
.card-placeholder {
	border: 1px dotted black;
	margin: 0 1em 1em 0;
	height: 50px;
	margin-left:auto;
	margin-right:auto;
	/* 노란색으로 표신되는 것이 주요 포인트 */
	background-color: yellow;
}
/* 마우스 포인터을 손가락으로 변경 */
.card:not(.no-move) .card-header{
	cursor: pointer;
}

.box{
	border: 1px solid black;
}

.item {
  background: #999;
  display: inline-block;
  width: 50px;
  height: 50px;
  color: #fff;
  padding: 12px 20px;
  box-sizing: border-box;
  margin: 0 0 10px;
}
.item.is-dragging {
  background-color: red;
}

.bucket {
  display: block;
  width: 200px;
  height: 90px;
  margin: 0 0 18px;
  border: 1px solid;
  text-align: center;
  padding: 15px;
}
</style>
<body>
<script src="<%=request.getContextPath() %>/resources/js/common_kjy.js"></script>
<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>발주관리</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>발주관리
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	발주요청
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	  	<hr>
</section>

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
		<div class="col-4 column">
			<div class="info-box"  style="height: 100px;">
	<!--               <span class="info-box-icon bg-info"><i class="far fa-envelope"></i></span> -->
					<div class="col-sm-9">
					 	<div class="form-group row">
							<span class=" search-group col-sm-4">대분류</span>
							<div class="input-group input-group-sm col-sm-8">
								<input type="text" id="fms-laca" name="keyword" onkeyup="enterkey();" class="form-control form-fms-search" value="">
								<span class="input-group-append">
									<button type="button" id="btn-laca" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
								</span>
							</div>
						</div>
					 	<div class="form-group row">
							<span class=" search-group col-sm-4">소분류</span>
							<div class="input-group input-group-sm col-sm-8">
								<input type="text" id="fms-smca" name="keyword2" onkeyup="enterkey();" class="form-control form-fms-search" value="" >
								<span class="input-group-append">
									<button type="button" id="btn-smca" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
								</span>
							</div>
						</div>
					</div>
	              <div class="info-box-content">
				 	<div class="col-sm-3" style="margin:auto 0;">
		               <button  onclick="list_go_buyGoods(1);" type="button" id="btn-search" 
						class="btn btn-block btn-outline-secondary btn-lg btn-fms-search" style="font-size: 15px; width:65px; text-align: center; padding-left: 9px;">search</button>
	              	</div>
	              </div>
	              <!-- /.info-box-content -->
            </div>
				
			   <c:forEach items="${orderGoodsList }" var="orderGoods" varStatus="st">
			 
				<div class="card bg-light mb-3 mb-3 item" ondragstart="dragStart(event);" draggable="true" ondragend="dragEnd(event)">
					
					<div class="card-header">
						<input type="checkbox" value="" id="check1"><label for="check1"></label>
						<b>${orderGoods.hq_goods_name} &nbsp; (${orderGoods.supGoodsVO.sup_goods_attr1}${orderGoods.supGoodsVO.sup_goods_unit})</b>
	               		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
					</div>
					<div class="card-body">
	<!-- 					<h5 class="card-title">card 3</h5> -->
						<div class="card-text">
							<div class="row">
								<div class="product-image col-sm-3" id="pictureView" view-id="imgView${st.count }" data-id="${orderGoods.hq_goods_code}"></div>
		
							
								<table class="product-image col-sm-9" style="font-size: 13px;">
			            			<tr>
			            				<th class="col-sm-4">단가(원)</th>
			            				<td>${orderGoods.goods_delivery_price}<b>원</b></td>
	<!-- 		            				<th class="col-sm-4">수량(개)</th> -->
	<!-- 		            				<td><input type="text" class="form-control" id="goods_num" name="goods_num" onkeyup='call()'></td> -->
			            			</tr>
			            			<tr>
			            				<th class="col-sm-4">수량(개)</th>
			            				<td><input type="text" class="form-control" id="goods_num" name="goods_num" onkeyup='call()'></td>
			            			</tr>
			            			<tr>
			            				<th class="col-sm-4">금액(원)</th>
			            				<td>
			            					<input type="text" class="form-control" id="good_pur_price" name="good_pur_price" placeholder="단가(원)*수량(개)" onclick='call()' >
										</td>
			            			</tr>
			            		</table>
							</div>
							<br>
		            		<div class="row" style="margin: 0 auto;">
		            			<div class="col-sm-6">
				              		<input type="checkbox" value="" id="check1">
				                				 <label for="check1"></label>
		          					<span><b>일반발주 </b><i class="fas fa-truck"></i></span>
		            			</div>
		            			<div class="col-sm-6">
			          				<input type="checkbox" value="" id="check1">
			            				 <label for="check1"></label>
			          				<span><b>총알발주 </b><i class="fas fa-space-shuttle"></i></span>
		            			</div>
		            		</div>
						</div>
					</div>
				</div>
				 <script>
	              	 HqGoodsPicture(document.querySelector('[view-id="imgView${st.count }"]'),'${orderGoods.supGoodsVO.sup_goods_img}','<%=request.getContextPath()%>');
		         </script>
				</c:forEach>
		</div>
		
				<!-- 세로 리스트 박스 -->
		
		<div class="col-4 column" style="border: 1px solid #cecece; border-radius: 5px;">
		<!-- 각 카드 리스트 박스 -->
			 <div class="d-flex justify-content-between">
                  <h3 class="card-title">발주목록</h3>
     			  <button type="button" class="btn btn-primary float-sm-right" style="height:28px; margin-bottom: 10px; padding:0px 8px;"><span style="font-size:14px;">발주</span></button>
<!--                   <a href="javascript:void(0);">View Report</a> -->
             </div>
			<div class="bucket"  ondragover="allowDrop();" ondrop="dropItem(event);" >
			
			</div>
		</div>
	</div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- 부트스트랩 4.x를 사용한다. -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script>
function call(){
	var num = document.getElementById('goods_num');
	var price = document.getElementById('good_pur_price');
	price.value = parseInt(num.value=="" ? 0:num.value) * parseInt(${orderGoods.goods_delivery_price}); 
}
</script>
<script>
</script>
</body>