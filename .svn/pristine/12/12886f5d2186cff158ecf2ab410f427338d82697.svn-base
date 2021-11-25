<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="buyGoodsList" value="${dataMap.buyGoodsList }" />

<head>
<style>
div.row {
	margin: 0;
}
div .product-image{
	margin-left:57px;
}
</style>
</head>

<title>공지목록</title>

<body>
	<c:if test="${from eq 'regist' }" >
		<script>
			alert("등록되었습니다.");
			window.opener.location.reload();			
			window.close();
		</script>
	</c:if>
	<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>
	 <!-- Main content -->
<!-- 	<section class="content-header"> -->
<!-- 	  	<div class="container-fluid"> -->
<!-- 	  		<div class="row md-2"> -->
<!-- 	  			<div class="col-sm-6"> -->
<!-- 	  				<h1>물품관리</h1>  				 -->
<!-- 	  			</div> -->
<!-- 	  			<div class="col-sm-6"> -->
<!-- 	  				<ol class="breadcrumb float-sm-right"> -->
<!-- 			        <li class="breadcrumb-item"> -->
<!-- 			        	<a href="list.do"> -->
<!-- 				        	<i class="fa fa-dashboard"></i>물품관리 -->
<!-- 				        </a> -->
<!-- 			        </li> -->
<!-- 			        <li class="breadcrumb-item active"> -->
<!-- 			        	물품목록 -->
<!-- 			        </li>		         -->
<!-- 	    	  </ol> -->
<!-- 	  			</div> -->
<!-- 	  		</div> -->
<!-- 	  	</div> -->
<!-- 	  	<hr> -->
<!-- 	</section> -->
	 
	 <!-- Main content -->
    <section class="content" >		
		<div class="card">
<!-- 			<div class="card-header with-border" > -->
				<div class="card-body search-card" style="padding:0 10px;">
					<div class="card" >
						<div class="card-body search-body" style="padding-left: 130px; text-align: center;">
			            	<div class="search-group">
			   					<div class="input-group">
			   					 	<div class="col-sm-8" name="searchType" id="searchType">
			   					 	<div class="form-group row" style="padding: 5px;">
										<div class="input-group input-padding-bottom col-sm-6">
											<span class=" search-group col-sm-4">대분류</span>
											<div class="input-group input-group-sm col-sm-8">
												<input type="text" id="fms-laca" name="keyword" onkeyup="enterkey();" class="form-control form-fms-search" value="">
												<span class="input-group-append">
													<button type="button" id="btn-laca" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
												</span>
											</div>
										</div>
										<div class="input-group input-padding-bottom col-sm-6">
											<span class=" search-group col-sm-4">소분류</span>
											<div class="input-group input-group-sm col-sm-8">
												<input type="text" id="fms-smca" name="keyword2" onkeyup="enterkey();" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-smca" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
												</span>
											</div>
										</div>
									</div>
			   					 	<div class="form-group row" style="padding: 5px;">
										<div class="input-group input-padding-bottom col-sm-6">
											<span class=" search-group col-sm-4">구매물품</span>
											<div class="input-group input-group-sm col-sm-8">
												<input type="text" id="fms-goods" name="keyword3" onkeyup="enterkey();" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-goods" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
												</span>
											</div>
										</div>
										<div class="input-group input-padding-bottom col-sm-6">
											<span class=" search-group col-sm-4">물품명</span>
											<div class="input-group input-group-sm col-sm-8">
												<input type="text" id="fms-goods" name="keyword4" onkeyup="enterkey();" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-goods" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-sw fa-search"></i></button>
												</span>
											</div>
										</div>
									</div>
		   					 	</div>
		   					 	<div class="col-sm-4">
									<div class="input-group col-sm-3">
										<div class="input-group input-padding-bottom col-sm-6">
											<div class="input-group input-group-sm col-sm-8">
												<span>
													<button style="height : 80px; margin-left : 26px;" onclick="list_go_buyGoods(1);" type="button" id="btn-search" class="btn btn-block btn-outline-secondary btn-lg btn-fms-search"><i class="fas fa-sw fa-search">&nbsp;&nbsp;&nbsp;search</i></button>
												</span>
											</div>
										</div>
									</div>
									</div>
		   					 	</div>
		   					</div>
			             </div>
					</div>
<!-- 				</div> -->
				<!--card-body(검색창)  -->
				
				
			</div>
			<div class="col-sm-12" style="padding:10px 20px 0px 5px;">
<!-- 				<button type="button" class="btn btn-primary float-sm-right" id="registBtn" onclick="OpenWindow('registForm.do','물품등록',800,750);">물품등록</button>				 -->
				 
				 
				 <!-- <button type="button" class="btn btn-primary float-sm-right" style="height:28px; margin-bottom: 10px; padding:0px 8px;"
				 onclick="OpenWindow('compareGoods.do','물품상세비교',800,700);">
				 	<span style="font-size:14px;">상품비교</span>
				 </button> -->
				 
				 <button type="button" class="btn btn-primary float-sm-right" style="height:28px; margin-bottom: 10px; padding:0px 8px;"
				 onclick="fn_compareProduct()">
				 	<span style="font-size:14px;">상품비교</span>
				 </button>
				 
				 
<!-- 				<button type="button" class="btn btn-block btn-primary btn-sm">상품비교</button> -->
			</div>
			
<!-- -------------------------------------------------------------------- -->
		<c:if test="${empty buyGoodsList}">
			<div>해당내용이 없습니다.</div>

		</c:if>
		
		<div class="row" id="GoodsList" style="font-size:13px; height:95vh;overflow-y:scroll;overflow-x:hidden ">
			<c:forEach items="${buyGoodsList}" var="goodsList">
		         <div class="col-md-4">
		           <!-- Box Comment -->
		           <div class="card card-widget" >
		             <div class="card-header" style="font-size:15px;">
		             	<input type="checkbox" data-target="checkGoods" name="checkGoodsDe" id="checkGoodsDe_${goodsList.sup_goods_code}" value="${goodsList.sup_goods_code}"
		             		sup_goods_code="${goodsList.sup_goods_code}"
		             	>
		             	
<%-- 		                 <span class="username" onclick="OpenWindow('detail.do?sup_goods_code=${goodsList.sup_goods_code}','물품조회',1000,700);"><b>${goodsList.sup_goods_name}(${goodsList.sup_goods_code})</b></a></span> --%>
		                 <span class="username">
		                 	<label for="checkGoodsDe_${goodsList.sup_goods_code}"><b>${goodsList.sup_goods_name}(${goodsList.sup_goods_code})</b></label></span>
		               <!-- /.user-block -->
		             </div>
		             <!-- /.card-header -->
		             <div class="card-body col-12" >
<!-- 		               <img class="img-fluid pad" src="../dist/img/photo2.png" alt="Photo"> -->
<%-- 					<div style="background-image:url('<%=request.getContextPath() %>/resources/js/choi.PNG'); width:100px; height:100px;"></div> --%>
		  				<div class="product-image col-sm-2" id="pictureView" onclick="location.href='detail.do?sup_goods_code=${goodsList.sup_goods_code}';"
									style="height:250px; width:240px; background-image:url('<%=request.getContextPath()%>/sup/goods/getPicture.do?sup_goods_img=${goodsList.sup_goods_img}');background-repeat:no-repeat;background-position:center;background-size:cover;"></div>
		  				
		             </div>
		             <!-- /.card-body -->
		             <div class="card-footer card-comments">
		               <div class="card-comment" style="padding:0;">
		                 <!-- User image -->
		                 <div class="form-group row">
		                 	<div class="username col-sm-3">
		                 		업체명
		                 	</div>
		                 	<div class="col-sm-9">
		                 		${goodsList.supVO.sup_name}
		                 	</div>
		                 </div>
		                 <div class="form-group row">
		                 	<div class="username col-sm-3">
		                 		물품분류
		                 	</div>
		                 	<div class="col-sm-9">
		                 		${goodsList.sup_goods_laca}
		                 	</div>
		                 </div>
		                 <div class="form-group row">
		                 	<div class="username col-sm-3">
		                 		물품명
		                 	</div>
		                 	<div class="col-sm-9">
		                 		${goodsList.sup_goods_name}
		                 	</div>
		                 </div>
		                 <div class="form-group row">
		                 	<div class="username col-sm-3">
		                 		납품가(원)
		                 	</div>
		                 	<div class="col-sm-9">
		                 		${goodsList.sup_goods_price}
		                 	</div>
		                 </div>
		                 <div class="form-group row">
		                 	<div class="username col-sm-3">
		                 		용량(단위)
		                 	</div>
		                 	<div class="col-sm-9">
		                 		${goodsList.sup_goods_attr1} ${goodsList.sup_goods_unit}
		                 	</div>
		                 </div>
		               </div>
		             </div>
		           <!-- /.card -->
		         </div>
	         </div>
		         <!-- /.col -->
<!-- 		         <script> -->
<%-- 		         GoodsPictureThumb2(document.querySelector('[data-id="${goodsList.sup_goods_code}"]'),'${goodsList.sup_goods_img}','<%=request.getContextPath()%>'); --%>
<!-- 		         </script> -->
			</c:forEach>
        </div>
        
        
        
        <!-- -------------------------------------------------------------------- -->
		<div class="card-footer">
			<%@ include file="/WEB-INF/views/common/paginationGoods.jsp" %>				
		</div>
	</div>
		
</section><!-- /.content -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<script>
	var goods=[];
	$("input[name='checkGoodsDe[]']:checked",opener.document).each(function(i){
		goods.push($(this).val());
		$("#checkGoodsDe").append("<span>"+goods[i]+"</span>")
	});
	
	//check된 애들 가져오기
	window.onload=function(){
		$('input[data-target="checkGoods"]').change(function(event){
// 			alert($(this).prop("checked"));
// 			alert($(this).attr("sup_goods_code"));
// 			alert($(this).attr("sup_code"));

			if($(this).prop("checked")){
				var input = $('<input>').attr({
					type: "hidden",
					sup_goods_code : $(this).attr("sup_goods_code"),
				});
				$('form[name=""]')
			}
		})
	}


</script>
<form name = "goodsDe" action="<%=request.getContextPath() %>/sup/goods/detail" method="post"></form>

<script>
	function fn_compareProduct(){
		/* $("input[name='checkGoodsDe[]']:checked",opener.document).each(function(i){
			goods.push($(this).val());
			$("#checkGoodsDe").append("<span>"+goods[i]+"</span>")
		}); */
		
		if($("input[name=checkGoodsDe]:checked").length != 0){
		
			var param = "";	
			
			$("input[name=checkGoodsDe]:checked").each(function(index, item){
	// 			alert($(item).val());
				
				if(param != ""){
					param += ","+$(item).val();
				}else{
					param += "goodsDe="+$(item).val();	
				}
	// 			alert(param);
			});
			
			var url = 'compareGoods.do?' + param;
			OpenWindow(url,'물품상세비교',800,700);
			
		}else{
			alert('물품을 선택해주십시오.');
		}
		
			
		
	}

</script>

</body>

