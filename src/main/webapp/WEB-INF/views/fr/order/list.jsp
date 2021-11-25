<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 부트스트랩 3.x를 사용한다. -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
li{
	padding: 0px;
	margin: 0px;
}

.nav-pills .nav-link{
	padding-right: 0px;
}
td{
	width:140px;
}
th{
	width:100px;
}
.card-body{
	padding: 10px;
}
.card-header{
     padding: 10px 10px 0 10px;
 
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
</style>
</head>

<title>발주신청</title>

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
<div class="content">
      <div class="container-fluid">
      
        <div class="row" >
        
          <div class="col-lg-1" style="padding-right:3px; padding-left:4px;">
	         	<div class="card no-move">
	            <div class="card-header" style="padding: 10px;">
	              <div class="card-tools">
	                <button type="button" class="btn btn-tool" data-card-widget="collapse" style="padding:0 15px 12px 0;"><i class="fas fa-minus"></i>
	                </button>
	              </div><br>
	              <h5 class="card-title">자동발주</h5>
	            </div>
	            <div class="card-body p-0" style="display: block;">
	              <ul class="nav nav-pills flex-column">
	                <li class="nav-item active">
	                  <a href="#" class="nav-link">
	                    <i class="fas fa-history"></i> 이전발주
	                  </a>
	                </li>
	                <li class="nav-item">
	                  <a href="#" class="nav-link">
	                    <i class="fas fa-thumbs-up"></i> 추천발주
	                  </a>
	                </li>
	              </ul>
	            </div>
	            <!-- /.card-body -->
	          </div>
		 </div>
          <div class="col-lg-5">
            <div class="card no-move" >
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">물품목록</h3>
                  <a href="javascript:void(0);">View Report</a>
                </div>
                <div>
   				  <div class="card-body search-card" style="padding: 10px 0px;">
					<div class="card" >
						<div class="card-body search-body" style="text-align: center; padding-left: 0; margin:0;">
			   					<div class="input-group" >
			   					 	<div class="col-sm-10" name="searchType" id="searchType" style="padding-left:0">
			   					 	<div class="form-group row" style="padding: 5px;">
										<div class="input-group input-padding-bottom col-sm-6" style="padding:10px 0px;">
											<span class=" search-group col-sm-4">대분류</span>
											<div class="input-group input-group-sm col-sm-7">
												<input type="text" id="fms-laca" name="keyword" onkeyup="enterkey();" class="form-control form-fms-search" value="">
												<span class="input-group-append">
													<button type="button" id="btn-laca" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
												</span>
											</div>
										</div>
										<div class="input-group input-padding-bottom col-sm-6" style="padding:10px 0px;">
											<span class=" search-group col-sm-4">소분류</span>
											<div class="input-group input-group-sm col-sm-7">
												<input type="text" id="fms-smca" name="keyword2" onkeyup="enterkey();" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-smca" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
												</span>
											</div>
										</div>
									</div>
		   					 	</div>
		   					 	<div class="col-sm-2" style="padding:8px 0; margin: 0;">
									<div class="input-group col-sm-3" style="padding:0; margin: 0;">
										<div class="input-group input-padding-bottom col-sm-6">
											<div class="input-group input-group-sm col-sm-8">
												<span>
													<button style="height : 50px;  width:80x; margin : 0;" 
													onclick="list_go_buyGoods(1);" type="button" id="btn-search" 
													class="btn btn-block btn-outline-secondary btn-lg btn-fms-search">
													search</button>
												</span>
											</div>
										</div>
									</div>
									</div>
		   					 	</div>
			             </div>
					</div>
				</div>
              </div>
             </div>
             
            <div style="overflow-y:scroll; height:800px;">
           <!-- 물품목록 -->
           <c:forEach items="${orderGoodsList }" var="orderGoods" varStatus="st">
             <div class="card-body column" id="card${st.count }" draggable="true" ondragstart="drag(event)">
                <div class="info-box bg-light" style="border: 1px solid #F5A9BC; margin: 0; ">
                    <div class="card-header info-box-content" style="padding: 0 5px 5px 5px;" >
                    	<div style="padding: 0; margin: 0">
	                  		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    	</div>
                    	<div class="row">
							<div class="icheck-primary col-1" style="padding-top:40px;">
		                        <input type="checkbox" value="" id="check1">
		                        <label for="check1"></label>
	                      	</div>
							<div class="col-3" style="padding: 20px 10px 10px 10px;" >
<!-- 							<div class="col-2" style="border: 1px solid black;"> -->
								<div class="product-image" id="pictureView" view-id="imgView${st.count }" data-id="${orderGoods.hq_goods_code}"></div>
<%-- 								<div class="product-image" id="pictureView" style="background-image:url('<%=request.getContextPath() %>/resources/js/choi.PNG'); width:100px; height:100px;"></div> --%>
							</div>
							<div class="col-8">
	                      		<span class="info-box-text text-center text-muted">
	                      		</span>
	                      		<table>
	                      			<tr>
	                      				<td colspan="4" style="width:100%; font-size:20px; "><b>${orderGoods.hq_goods_name} &nbsp; (${orderGoods.supGoodsVO.sup_goods_attr1}${orderGoods.supGoodsVO.sup_goods_unit})</b></td>
	                      			</tr>
	                      			<tr >
	                      				<th>단가(원)</th>
	                      				<td>${orderGoods.goods_delivery_price} 원</td>
	                      				<th>수량(개)</th>
	                      				<td><input type="text" class="form-control" id="goods_num" name="goods_num" onkeyup='call()'></td>
	                      			</tr>
	                      			<tr>
	                      				<th>금액(원)</th>
	                      				<td colspan="3">
	                      					<input type="text" class="form-control" id="good_pur_price" name="good_pur_price" placeholder="단가(원)*수량(개)" onclick='call()' >
										</td>
	                      			</tr>
	                      		</table>

	                      		<div class="row" style="padding:5px;">
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
                  </div>
                <!-- /.d-flex -->
              </div>
               <script>
              	 HqGoodsPicture(document.querySelector('[view-id="imgView${st.count }"]'),'${orderGoods.supGoodsVO.sup_goods_img}','<%=request.getContextPath()%>');
	         </script>
           </c:forEach>
            <!-- /물품목록 -->
            </div>
           
            </div>
            <!-- /.card -->

            <!-- /.card -->
          </div>
          
          <div class="col-lg-1">
          </div>

          
          <!-- /.col-md-6 -->
          <div class="col-lg-5">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">발주목록</h3>
     			  <button type="button" class="btn btn-primary float-sm-right" style="height:28px; margin-bottom: 10px; padding:0px 8px;"><span style="font-size:14px;">발주</span></button>
<!--                   <a href="javascript:void(0);">View Report</a> -->
                </div>
              </div>
              <div class="card-body column"  id="box" ondrop="drop(event)" ondragover="dragOver(event)">
                <div class="d-flex">
                </div>
                <!-- /.d-flex -->

              </div>
            </div>
            <!-- /.card -->

        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
   </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- 부트스트랩 3.x를 사용한다. -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<script>
function call(){
	var num = document.getElementById('goods_num');
	var price = document.getElementById('good_pur_price');
	price.value = parseInt(num.value=="" ? 0:num.value) * parseInt(${orderGoods.goods_delivery_price}); 
}
</script>
<script>
$(function() {
$(".column").sortable({
// 드래그 앤 드롭 단위 css 선택자
connectWith: ".column",
// 움직이는 css 선택자
handle: ".card-header",
// 움직이지 못하는 css 선택자
cancel: ".no-move",
// 이동하려는 location에 추가 되는 클래스
placeholder: "card-placeholder"
});
// 해당 클래스 하위의 텍스트 드래그를 막는다.
$( ".column .card" ).disableSelection();
});
</script>
</body>

