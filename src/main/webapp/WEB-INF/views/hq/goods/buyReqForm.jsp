<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
</head>
<body> 
<script type="text/javascript">
Stirng.prototype.replaceAll = function(crg, dest){
	return this.split(org).join(dest);
}
</script>
<div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">물품구매요청서</h3>
                <input type="button" id="a" name="a" style="float: right;" onclick="test();" value="시연">
              </div>
              <!-- /.card-header -->
              <!-- form start -->
                <!-- form start -->
             <div class="card-body">
           	 <form role="form" method="post" action="request.do" name="requestForm">
                  <div class="form-group row">
                    <label for="sup_goods_name" class="col-sm-2 col-form-label">물품명</label>
                    <div class="col-sm-4">
                      <input readonly type="text" class="form-control" id="sup_goods_name" name="sup_goods_name" placeholder="${supGoods.sup_goods_name }" value="${supGoods.sup_goods_name }">
                    </div>
                    <label for="sup_goods_code" class="col-sm-2 col-form-label">물품코드</label>
                    <div class="col-sm-4">
                      <input readonly type="text" class="form-control" id="sup_goods_code" name="sup_goods_code" placeholder="${supGoods.sup_goods_code }" value="${supGoods.sup_goods_code }">
                    </div>
                  </div><!-- 물품명, 물품코드 -->
                  
                  <div class="form-group row">
                    <label for="sup_goods_price" class="col-sm-2 col-form-label">공급업체명</label>
                    <div class="col-sm-4">
                      <input readonly type="text" class="form-control" id="sup_name" name="sup_name" placeholder="${supGoods.supVO.sup_name }" value="${supGoods.supVO.sup_name }">
                    </div>
                    <label for="sup_goods_price" class="col-sm-2 col-form-label">업체코드</label>
                    <div class="col-sm-4">
                      <input readonly type="text" class="form-control" id="sup_code" name="sup_code"  placeholder="${supGoods.supVO.sup_code}" value="${supGoods.supVO.sup_code }">
                    </div>
                  </div><!--공급업체명,업체코드-->
                  
                  <div class="form-group row">
                    <label for="sup_goods_laca" class="col-sm-2 col-form-label">납품일자</label>
                	 <!-- 달력 -->
                	 <div class="input-group col-sm-4">
	                    <div class="input-group-prepend">
	                      <span class="input-group-text">
	                        <i class="far fa-calendar-alt"></i>
	                      </span>
	                    </div>
                   		<input type="date" class="form-control float-right" id="pur_arrive_date" name="pur_arrive_date">
	                  </div>
	                    <label for="sup_goods_smca" class="col-sm-2 col-form-label">납품장소</label>
	                    <div class="col-sm-4">
							<select class="form-control" name="pur_arrive_loc" id="logisList" style="text-align-last: center;border-radius: 5px;">
								<c:if test="${!empty logisList }">
								<option value="" >전체</option>
								<c:forEach var ="logisList" items="${logisList }">
									<option value="${logisList.logis_code}">${logisList.logis_code }:${logisList.logis_name }</option>
								</c:forEach>
								</c:if>
							</select>
	                    </div>
	                    
                  </div><!--대분류, 물품종류-->
                  
                  
                  <div class="form-group row">
                    <label for="sup_goods_attr2" class="col-sm-2 col-form-label">납품개수(개)</label>
                    <div class="col-sm-4">
                      <input type="text" class="form-control" id="goods_num" name="goods_num" onkeyup='call()'>
                    </div>
                    <label for="sup_goods_attr3" class="col-sm-2 col-form-label">단가(원)</label>
                    <div class="col-sm-4">
                      <input type="text" class="form-control" id="good_price" name="good_price" readonly placeholder="<fmt:formatNumber value="${supGoods.sup_goods_price}"/>">
                    </div>
                  </div><!--포장재질, 물품재질-->
                  
                  <div class="form-group row">
                    <label for="sup_goods_attr3" class="col-sm-2 col-form-label">총금액(원)</label>
                    <div class="col-sm-4">
                      <input type="text" class="form-control" id="goods_pur_price" name="goods_pur_price" placeholder="개수*납품가" onclick='call()' >
                    </div>
                  </div><!--포장재질, 물품재질-->
                  
                  <div class="form-group row">
                    <label for="sup_goods_attr8" class="col-sm-2 col-form-label">비  고</label>
                    
                    <div class="col-sm-10">
	                  <textarea class="form-control" id="pur_note" name="pur_note"
	                  	 rows="5" placeholder="물품의 사양 제안, 대량구매 할인 협의에 대한 협의내용을 작성하십시오." ></textarea>
                    </div>
                  </div><!-- 물품명 -->
                  
               </form>
              </div> <!-- /.card-body -->
            
                <!-- /.card-footer -->
                <div class="card-footer row">
                    <label for="exampleInputFile" class="col-sm-3 col-form-label"></label>
					<button type="button" class="col-sm-3 btn btn-danger float-right" id="cancelBtn" style="margin-right: 10px;" onclick="CloseWindow();">취소</button>
					<button type="button" class="col-sm-3 btn btn-info" id="registBtn" onclick="request_go();">구매요청</button>
                    <label for="exampleInputFile" class="col-sm-3 col-form-label"></label>
                </div>
      		 </div>
            <!-- /.card -->
            
</div>

<script>
	function thousand(x){
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
	}
</script>


<script>
function request_go(){
	var form = document.requestForm;
// 	if(form.pur_arrive_date.value==""){
// 		alert("납품일자 입력은 필수입니다.");
// 		return;
// 	}
	if(form.logisList.value==""){
		alert("납품장소 선택은 필수입니다.");
		return;
	}
	if(form.goods_num.value==""){
		alert("납품개수 입력은 필수입니다.");
		return;
	}
	form.goods_pur_price.value = form.goods_pur_price.value.replaceAll(",","");
	form.submit();
}

function call(){
	var form = document.requestForm;
	form.goods_pur_price.value = thousand( parseInt(form.goods_num.value=="" ? 0:form.goods_num.value) * parseInt(${supGoods.sup_goods_price})); 
}
</script>
<script>
function test() {
  document.getElementById("pur_note").innerHTML = "구매요청합니다.";
}
</script>


</body>
</html>