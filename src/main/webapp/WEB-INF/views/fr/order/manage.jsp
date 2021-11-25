<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cri" value="${pageMaker.cri }" />
<c:if test="${del eq 'delsuccess' }" >
	<script>
		swal("발주내역이 삭제되었습니다.");
	</script>
</c:if>
<head>
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}
.card {
	line-height: 0.7;
}
.content-header{
	padding : 8px .5em;
}
.card-body{
    padding: 0.25rem;
}
.table {
    font-size: 12px;
    text-align: center;
}
.table td{
	padding: 0.65rem;
	vertical-align: middle;
	text-align: center;
}
.search-group, .form-control {
	font-size : 13px;
	text-align : right;
	padding-top: 6px;
}
span.search-group {
	padding-top: 10px;
}
.search-card {
	padding-top : 5px;
    padding-bottom: 0px;
	height : 75px;
    width: 1260px;
    margin: auto;
}
.search-body{
	padding: 12px 5px;
    height: 58px;
}
.search-navi{
    position: fixed;
    top: 94vh;
    left: 36vh;
    font-size: 0.8rem;
}
.search-font {
	font-size : 0.8rem;
}
.input-padding-bottom {
	margin-bottom : 17px;
}
.custom-checkbox {
	padding-left : 108px;
}
#btn-goods {
	height : 31px;
}
.custom-control-label {
	padding-top: 3px;
}
input.form-control {
text-align: left;
}
.custom {
	width: 2.5rem;
    height: 1.5rem;
    font-size: 0.9em;
    padding: 0px;
    margin: 0px;
}
.btn-div {
	text-align: end;
}
#modifybtn, #cancelbtn, #savebtn, #orderecancelbtn, #orderecancelbtn-nonclick, #modifybtn-nonclick {
	height: 1.4rem;
    padding: 0px 18px;
    margin: 0px;
    font-size: 13px;
}
.x-btn {
    width: 1rem;
    margin-left: 16px;
}
.x-badge {
    font-size: .6rem;
    font-weight: 400;
    padding: 4px 10px;
}
</style>
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
</head>
<title>발주내역</title>

<body>
	<div class="">
	 <!-- Main content -->
	<div class="card" style="max-width : 1270px; margin-left : 6px; margin-bottom : 1px;">
		<div class="card card-tabs" style="overflow-x: hidden; margin-bottom : 1px; margin-top : 3px;" >
				<ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="custom-tabs-one-home-tab" style="height: 2.3rem; padding-top: 13px; background-color: #D9230F; color: white; cursor: default;" data-toggle="pill" href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">발주내역</a></li>
				</ul>
				<div class="card">
					<div class="card-body search-body">
	   					<div class="input-group">
	   					 	<!-- keyword -->
	   					 	<div class="input-group col-sm-12">
					 			<div class="input-group col-3">
									<div class="input-group-prepend">
										<button type="button" id="btn-period" class="btn bg-gradient-danger btn-fms-search">
											<i class="far fa-calendar-alt"></i>
										</button>
									</div>
									<input type="text" class="form-control float-right btn-outline-danger" id="reservation" onchange="javascript:searchGoStockL(1);" style="font-size: 14px;">
								</div>
		   					 	<div class="input-group col-sm-5">
									<div class="btn-group btn-group-toggle col-sm-5" data-toggle="buttons">
										<label class="btn search-font btn-outline-danger">
											<input type="radio" name="shortday" id="oneWeek" autocomplete="off" onclick="calender_go('1d');"> 오늘
										</label>
										<label class="btn search-font btn-outline-danger">
											<input type="radio" name="shortday" id="halfMonth" autocomplete="off" onclick="calender_go('7d');"> 일주일
										</label>
										<label class="btn search-font btn-outline-danger">
											<input type="radio" name="shortday" id="oneMonth" autocomplete="off" onclick="calender_go('1m');"> 1개월
										</label>
									</div>
									<div class="btn-group btn-group-toggle col-sm-7" data-toggle="buttons">
										<label class="btn search-font btn-outline-danger">
											<input type="radio" name="longday" id="halfYearsAgo" autocomplete="off" onclick="calender_go('6m');"> 6개월
										</label>
										<label class="btn search-font btn-outline-danger">
											<input type="radio" name="longday" id="oneYearsAgo" autocomplete="off" onclick="calender_go('1y');"> 1년
										</label>
										<label class="btn search-font btn-outline-danger">
											<input type="radio" name="longday" id="twoYearsAgo" autocomplete="off" onclick="calender_go('2y');"> 2년
										</label>
										<label class="btn search-font btn-outline-danger">
											<input type="radio" name="longday" id="threeYearsAgo" autocomplete="off" onclick="calender_go('3y');"> 3년
										</label>
									</div>
								</div>
								<div class="input-group col-4">
									<div class="input-group col-6">
										<div class="search-font icheck-danger d-inline col-5" >
											<input type="checkbox" id="apprSt1" >
											<label for="apprSt1"class="border-danger" switch="off" onclick="appr(1);">승인</label>
										</div>
										<div class="search-font icheck-danger d-inline col-6">
											<input type="checkbox" id="apprSt2">
											<label for="apprSt2" switch="off" onclick="appr(2);">미승인</label>
										</div>
									</div>
									<div class="input-group col-6">
										<div class="search-font icheck-danger d-inline col-6" >
											<input type="checkbox" id="deliSt1" >
											<label for="deliSt1" switch="off" class="border-danger" onclick="deli(1);">발주중</label>
										</div>
										<div class="search-font icheck-danger d-inline col-6">
											<input type="checkbox" id="deliSt2">
											<label for="deliSt2" switch="off" onclick="deli(2);">발주완료</label>
										</div>
									</div>
								</div>
								<script>
								</script>
							</div>
						</div>
		             </div>
				</div>
			</div>
		</div>
		<div class="card col-6 float-left" style="max-width : 43rem; margin-left: 5px; height: 39rem;">
			<div class="card card-danger card-tabs list-line" style="overflow-x: hidden; margin-top : 10px;" >
					<!-- /.card-header -->
              	<div class="card-body table-responsive p-0">
	                <table class="table table-hover" >
	                	<thead>
		                    <tr>
								<th>no</th>
								<th>발주코드</th>
<!-- 								<th>발주상세번호</th> -->
								<th>발주일</th>
								<th>승인</th>
								<th>총금액</th>
								<th>즐겨찾기</th>
								<th>발주상태</th>
								<th>완료일</th>
								<th>배송</th>
<!-- 								<th>입금</th> -->
							 </tr>
	                  	</thead>
						<tbody id="fran-order-list">
 		                    <c:forEach items="${orderList }" var="order">
		                    	<c:set var="i" value="${i+1 }"/>
								<tr class="fran-order" id="order-${i}" onclick="javascript:order_go('${order.fran_order_code }','${order.fran_appr_st}');" style="cursor: pointer;">
									<td>${i }</td>
									<td id="tr-${i }">${order.fran_order_code }</td>
									<td><fmt:formatDate value="${order.fran_order_date}" pattern="yyyy-MM-dd" /></td>
									<c:if test="${order.fran_appr_st eq 1}"><td id="ap1" style="color: red;"> 승인</td></c:if>
									<c:if test="${order.fran_appr_st eq 2}"><td id="ap2">미승인</td></c:if>
									<td><fmt:formatNumber value="${order.fran_order_price}" pattern="#,###" /></td>
									<td>${order.fran_mark }</td>
									<c:if test="${order.order_st_code eq 1}"><td> 발주중</td></c:if>
									<c:if test="${order.order_st_code eq 2}"><td style="color: red;"> 완료</td></c:if>
									<td><fmt:formatDate value="${order.order_end_date}" pattern="yyyy-MM-dd" /></td>
									<c:if test="${order.order_deli_se eq 1}"><td><button type="button" class="btn custom btn-block btn-primary">일반</button> </td></c:if>
									<c:if test="${order.order_deli_se eq 2}"><td style="color: red;"><button type="button" class="btn custom btn-block btn-danger"><i class="fas fa-space-shuttle"></i></button></td></c:if>
<%-- 									<c:if test="${order.deposit_st_code eq 1}"><td> 입금전</td></c:if> --%>
<%-- 									<c:if test="${order.deposit_st_code eq 2}"><td style="color: red;"> 입금완료</td></c:if> --%>
								</tr>
							</c:forEach>
		                 </tbody>
					</table>
             	</div>
			</div><!-- /.card-->
			<div class="card-body search-navi">
				<%@ include file="/WEB-INF/views/common/paginationManage.jsp"%>
			</div>
			<div class="tab-content" id="custom-tabs-one-tabContent">
				<div class="tab-pane fade active show" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab"></div>
				<div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab"></div>
			</div>
		</div>
		<div class="card col-4 table float-left" style="margin-left: 3px; height: 39rem; min-width: 36.3rem; overflow-y: auto;">
			<div class="card card-danger card-tabs" style="overflow-x: hidden; margin-top : 10px;" >
              	<div class="card-body table-responsive p-0">
              		<div class="btn-div">
		              	<button type="button" id="orderecancelbtn-nonclick" style="display:none;" class="btn btn-default disabled">발주취소</button>
		              	<button type="button" id="orderecancelbtn" style="display:none;" class="btn btn-danger" onclick="orderCancel();">발주취소</button>
		              	<button type="button" id="modifybtn-nonclick" style="display:none;" class="btn btn-default disabled">수정</button>
		              	<button type="button" id="modifybtn" style="display:none;" class="btn btn-primary" onclick="modify();">수정</button>
		              	<button type="button" id="cancelbtn" style="display:none;" class="btn btn-default" onclick="cancel();">수정취소</button>
		              	<button type="button" id="savebtn" style="display:none;" class="btn btn-warning" onclick="save();">저장</button>
              		</div>
	                <table class="table table-hover" >
	                	<thead>
		                    <tr>
								<th>no</th>
								<th>상세번호</th>
								<th>물품코드</th>
								<th>물품명</th>
								<th>발주수량</th>
								<th>발주금액</th>
								<th>발주승인수량</th>
							 </tr>
	                  	</thead>
						<tbody id="fran-order-detail">
		                 </tbody>
					</table>
             	</div>
			</div>
		</div>
	</div>
<!-- Sweet Alert -->
<script>
window.onload=function(){
	  $('#order-1').css('background-color', 'gold');
// 	  order_go($('#tr-1').text());
	}
var apprSt1 = "";
var apprSt2 = "";
var deliSt1 = "";
var deliSt2 = "";
var orderCode = "";
var page = 1;
var cancelData = "";
var modifyData = "";
var ordergo_first = 1; //발주내역 선택 시 수정사항이 있을경우를 위한 방지버튼
//물류센터 재고조회 ajax
function searchGoStockL(realpage, url){
	var period = $('#reservation').val()
	if(!realpage) page = 1;
	page = realpage;
	if(!url) url= 'search.do';
	//날짜계산준비
	var start_date = "";
	var end_date ="";
	var dateArr = period.split(' ');
	for (var i=0; i < dateArr.length ; i++) {
		dateArr[i] = dateArr[i].slice(0, -1);
	}
	//시작날짜, 종료날짜
	start_date = dateArr[0] + dateArr[1] + dateArr[2];
	end_date = dateArr[4] + dateArr[5] + dateArr[6];
	var data = {"apprSt1": apprSt1, "deliSt1": deliSt1, "apprSt2": apprSt2, "deliSt2": deliSt2, "page" : page, "startDate" : start_date, "endDate" : end_date};
	$.ajax({
		url : 'search.do'
		, method : 'post'
		, data : JSON.stringify(data)
		, contentType : 'application/json; charset=UTF-8'
		, dataType : 'json'
		, async : false
		, success : function(dataMap, xhr) {
			if (dataMap.orderList.length != 0) {
				printData(dataMap.orderList, $('#fran-order-list'),$('#ordermanage-list-template'), $('.fran-order'));
				printPagination(dataMap.pageMaker,$('nav.pagination-nav'),$('#ordermanage-pagination-template'));
				$("#order-1").trigger("click");
			} else {
				printData(dataMap.orderList, $('#fran-order-list'),$('#ordermanage-list-template'), $('.fran-order'));
				printPagination(dataMap.pageMaker,$('nav.pagination-nav'),$('#ordermanage-pagination-template'));
				ajax_request_abort();
				$('.order-detail').remove();
				$('#modifybtn').hide();
				$('#orderecancelbtn').hide();
				$('#savebtn').hide();
				$('#cancelbtn').hide();
			}
		}
	})
}
$(document).on('click', '.fran-order', function(e){
    e.preventDefault();
	$(this).css('background-color', 'gold');
	$('.fran-order').not($(this)).css('background-color', '#fff');
})
$(document).on('click', 'label.search-font', function(){
	$(this).addClass(['focus', 'active']);
	$('label.search-font').not($(this)).removeClass(['focus', 'active']);
})

function order_go(data, apprst) {
	ordergo_first = 1;
	orderCode = data;
	//수정취소처리를 위한 데이터 심기
	cancelData = data;
	modifyData = apprst;
	$.ajax({
		url : 'detail.do'
		, method : 'post'
		, data : data
		, success : function(orderList) {
			printData(orderList, $('#fran-order-detail'),$('#ordermanage-detail-template'), $('.order-detail'));
		}
		, complete : function() {
			if (modifyData == 2) {
				$('#modifybtn').show();
				$('#orderecancelbtn').show();
				$('#modifybtn-nonclick').hide();
				$('#orderecancelbtn-nonclick').hide();
			} else {
				$('#modifybtn-nonclick').show();
				$('#orderecancelbtn-nonclick').show();
				$('#modifybtn').hide();
				$('#orderecancelbtn').hide();							
			}
			$('#savebtn').hide();
			$('#cancelbtn').hide();
		}
		
	})
}
</script>
<script>
function modify() {
	ordergo_first = 0;
	if (modifyData == 1) {
		swal("본사승인으로 인하여 수정이 불가합니다.");
	} else {
		$('#modifybtn').hide();
		$('#orderecancelbtn').hide();
		$('#savebtn').show();
		$('#cancelbtn').show();
		$('.goodscode').addClass('goodscodeEdit');
		$('.goodscode').css('color', '#0090FF');
		$('.goodscode').css('text-decoration', 'underline');
		$('.xbtn').show();
		$('.no').hide();
		$('.quan').attr('contenteditable', 'true');
	}
	
}

$(document).on('click', '.xbtn',function () {
	var tr_parent = $(this).parent();
	swal({
		  text: "삭제하시겠습니까?",
		  icon: "warning",
		  dangerMode: true,
		  buttons: true,
		})
		.then(function(result){
				if (result == true) {
					tr_parent.remove();
				}
	    }, function (error) {
	        res.end("error :" + error);
		});
})
function cancel() {
	swal({
		  text: "취소하시겠습니까?",
		  icon: "warning",
		  dangerMode: true,
		  buttons: true,
		})
		.then(function(result){
				if (result == true) {
				order_go(cancelData);
				}
	    }, function (error) {
	        res.end("error :" + error);
		});
}
function save() {
	var a = new Array();
	var data = '';
	var goods_code = '';
	var order_detail_num = '';
	var order_quan = '';
	var order_price = '';
	swal({
		  text: "저장하시겠습니까?",
		  icon: "warning",
		  dangerMode: true,
		  buttons: true,
		})
		.then(function(result){
			if (result == true) {
				for (var i = 0; i < $('.order-detail').length ; i++) {
					a = $('.order-detail').eq(i)[0].innerText.split('	');
					a[4] = a[4].replace(',','');
					a[5] = a[5].replace(',','');
					order_detail_num = a[1];
					goods_code = a[2];
					order_quan = a[4];
					order_price = a[5];
					data = {'order_code' : orderCode, 'order_detail_num' : order_detail_num, 'goods_code' : goods_code, 'order_quan' : order_quan, 'order_price' : order_price}
					
					$.ajax({
						url : 'update.do'
						, method : 'post'
						, async : false
						, data : JSON.stringify(data)
						, contentType : 'application/json; charset=UTF-8'
						, dataType : 'json'
						, success : function(result) {
							console.log(result);	
						}
					})
				}
			}
			location.href="manage.do";
		});
}
function orderCancel() {
	swal({
		  text: "취소하시겠습니까?",
		  icon: "warning",
		  dangerMode: true,
		  buttons: true,
		})
		.then(function(result){
				if (result == true) {
					location.href="delete.do?orderCode="+orderCode;
				}
	    }, function (error) {
	        res.end("error :" + error);
		});
}
//라벨을 이용한 키워드 검색
function appr(num) {
	if ($('label[for="apprSt1"]').attr("switch") == "off" && num == 1) {
		$('label[for="apprSt1"]').attr("switch", "on");
		apprSt1 = 1;
		searchGoStockL(1);
		return;
	} 
	if ($('label[for="apprSt1"]').attr("switch") == "on" && num == 1) {
		$('label[for="apprSt1"]').attr("switch", "off");
		apprSt1 = "";
		searchGoStockL(1);
		return;
	}
	if ($('label[for="apprSt2"]').attr("switch") == "off"  && num == 2) {
		$('label[for="apprSt2"]').attr("switch", "on");
		apprSt2 = 2;
		searchGoStockL(1);
		return;
	} 
	if ($('label[for="apprSt2"]').attr("switch") == "on"  && num == 2) {
		$('label[for="apprSt2"]').attr("switch", "off");
		apprSt2 = "";
		searchGoStockL(1);
		return;
	}
}
function deli(num) {
	if ($('label[for="deliSt1"]').attr("switch") == "off" && num == 1) {
		$('label[for="deliSt1"]').attr("switch", "on");
		deliSt1 = num;
		searchGoStockL(1);
		return;
	} 
	if ($('label[for="deliSt1"]').attr("switch") == "on" && num == 1) {
		$('label[for="deliSt1"]').attr("switch", "off");
		deliSt1 = "";
		searchGoStockL(1);
		return;
	}
	
	if ($('label[for="deliSt2"]').attr("switch") == "off" && num == 2) {
		$('label[for="deliSt2"]').attr("switch", "on");
		deliSt2 = num;
		searchGoStockL(1);
		return;
	} 
	if ($('label[for="deliSt2"]').attr("switch") == "on" && num == 2) {
		$('label[for="deliSt2"]').attr("switch", "off");
		deliSt2 = "";
		searchGoStockL(1);
		return;
	}
}
</script>
<script>
//날짜 변환
function calender_go(data) {
	var sday = "";
	var smonth = "";
	var syear = "";
	var eday = "";
	var emonth = "";
	var eyear = "";
	var nowDate = new Date();
	if (data == '1d') {
		eday = '00' + nowDate.getDate();
		eday = eday.slice(-2);
		emonth = nowDate.getMonth() + 1;
		emonth = '00' + emonth;
		emonth = emonth.slice(-2);
		eyear = nowDate.getFullYear();
		end_date = eyear + '년 ' + emonth + '월 ' + eday + '일 ';
		
		sday = '00' + nowDate.getDate();
		sday = sday.slice(-2);
		smonth = nowDate.getMonth() + 1;
		smonth = '00' + smonth;
		smonth = smonth.slice(-2);
		syear = nowDate.getFullYear();
		start_date = syear + '년 ' + smonth + '월 ' + sday + '일 ';
		
		$('#reservation').val(start_date + '~ ' + end_date);
		searchGoStockL(1);
	}
	if (data == '7d') {
		eday = '00' + nowDate.getDate();
		eday = eday.slice(-2);
		emonth = nowDate.getMonth() + 1;
		emonth = '00' + emonth;
		emonth = emonth.slice(-2);
		eyear = nowDate.getFullYear();
		end_date = eyear + '년 ' + emonth + '월 ' + eday + '일 ';
		
		nowDate.setDate(nowDate.getDate() - 7)
		sday = '00' + nowDate.getDate();
		sday = sday.slice(-2);
		smonth = nowDate.getMonth() + 1;
		smonth = '00' + smonth;
		smonth = smonth.slice(-2);
		syear = nowDate.getFullYear();
		start_date = syear + '년 ' + smonth + '월 ' + sday + '일 ';
		
		$('#reservation').val(start_date + '~ ' + end_date);
		searchGoStockL(1);
	}
	if (data == '1m') {
		eday = '00' + nowDate.getDate();
		eday = eday.slice(-2);
		emonth = nowDate.getMonth() + 1;
		emonth = '00' + emonth;
		emonth = emonth.slice(-2);
		eyear = nowDate.getFullYear();
		end_date = eyear + '년 ' + emonth + '월 ' + eday + '일 ';
		
		nowDate.setMonth(nowDate.getMonth() - 1)
		sday = '00' + nowDate.getDate();
		sday = sday.slice(-2);
		smonth = nowDate.getMonth() + 1;
		smonth = '00' + smonth;
		smonth = smonth.slice(-2);
		syear = nowDate.getFullYear();
		start_date = syear + '년 ' + smonth + '월 ' + sday + '일 ';
		
		$('#reservation').val(start_date + '~ ' + end_date);
		searchGoStockL(1);
	}
	if (data == '6m') {
		eday = '00' + nowDate.getDate();
		eday = eday.slice(-2);
		emonth = nowDate.getMonth() + 1;
		emonth = '00' + emonth;
		emonth = emonth.slice(-2);
		eyear = nowDate.getFullYear();
		end_date = eyear + '년 ' + emonth + '월 ' + eday + '일 ';
		
		nowDate.setMonth(nowDate.getMonth() - 6)
		sday = '00' + nowDate.getDate();
		sday = sday.slice(-2);
		smonth = nowDate.getMonth() + 1;
		smonth = '00' + smonth;
		smonth = smonth.slice(-2);
		syear = nowDate.getFullYear();
		start_date = syear + '년 ' + smonth + '월 ' + sday + '일 ';
		
		$('#reservation').val(start_date + '~ ' + end_date);
		searchGoStockL(1);
	}
	if (data == '1y') {
		eday = '00' + nowDate.getDate();
		eday = eday.slice(-2);
		emonth = nowDate.getMonth() + 1;
		emonth = '00' + emonth;
		emonth = emonth.slice(-2);
		eyear = nowDate.getFullYear();
		end_date = eyear + '년 ' + emonth + '월 ' + eday + '일 ';
		
		nowDate.setFullYear(nowDate.getFullYear() - 1)
		sday = '00' + nowDate.getDate();
		sday = sday.slice(-2);
		smonth = nowDate.getMonth() + 1;
		smonth = '00' + smonth;
		smonth = smonth.slice(-2);
		syear = nowDate.getFullYear();
		start_date = syear + '년 ' + smonth + '월 ' + sday + '일 ';
		
		$('#reservation').val(start_date + '~ ' + end_date);
		searchGoStockL(1);
	}
	if (data == '2y') {
		eday = '00' + nowDate.getDate();
		eday = eday.slice(-2);
		emonth = nowDate.getMonth() + 1;
		emonth = '00' + emonth;
		emonth = emonth.slice(-2);
		eyear = nowDate.getFullYear();
		end_date = eyear + '년 ' + emonth + '월 ' + eday + '일 ';
		
		nowDate.setFullYear(nowDate.getFullYear() - 2)
		sday = '00' + nowDate.getDate();
		sday = sday.slice(-2);
		smonth = nowDate.getMonth() + 1;
		smonth = '00' + smonth;
		smonth = smonth.slice(-2);
		syear = nowDate.getFullYear();
		start_date = syear + '년 ' + smonth + '월 ' + sday + '일 ';
		
		$('#reservation').val(start_date + '~ ' + end_date);
		searchGoStockL(1);
	}
	if (data == '3y') {
		eday = '00' + nowDate.getDate();
		eday = eday.slice(-2);
		emonth = nowDate.getMonth() + 1;
		emonth = '00' + emonth;
		emonth = emonth.slice(-2);
		eyear = nowDate.getFullYear();
		end_date = eyear + '년 ' + emonth + '월 ' + eday + '일 ';
		
		nowDate.setFullYear(nowDate.getFullYear() - 3)
		sday = '00' + nowDate.getDate();
		sday = sday.slice(-2);
		smonth = nowDate.getMonth() + 1;
		smonth = '00' + smonth;
		smonth = smonth.slice(-2);
		syear = nowDate.getFullYear();
		start_date = syear + '년 ' + smonth + '월 ' + sday + '일 ';
		
		$('#reservation').val(start_date + '~ ' + end_date);
		searchGoStockL(1);
	}
}
</script>
<!-- 물류센터 검색 -->
<!-- 모달 영역 -->
<div class="modal fade" id="modal-goods" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">본사 물품</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			</div>
			<div class="modal-body table-responsive p-0 table-scroll">
				<table class="table table-hover" id="modal-fms-logis">
					<thead>
						<tr>
							<th>물품코드</th>
							<th>물품명</th>
							<th>공급업체</th>
							<th>가격</th>
							<th>등록날짜</th> <!-- yyyy-MM-dd  -->
						</tr>
					</thead>
					<tbody class="goods-list">
					<!-- modal이 뿌려질 영역 -->
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->

<script type="text/x-handlerbars-template" id="hqgoods-list-template">
	{{#each .}}  
			<tr class="hqgoods" id="goods{{@key}}" onclick="javascript:hqgoodsKey('{{hq_goods_code}}', '{{sup_goods_name}}');">
				<td>{{hq_goods_code}}</td>
				<td>{{sup_goods_name}}</td>
				<td>{{sup_name}}</td>
				<td>{{goods_retail_price}}</td>
				<td>{{prettifyDate last_update}}</td>
			</tr>
	{{/each}}
</script>
<script>
	var gd_code = "";
	var gd_name = "";
	var gd_price = "";
	var gd_quan = "";
	//goods modal
	$(document).on('click', 'td.goodscodeEdit', function(){
		gd_code = $(this).attr('id');
		gd_name = $(this).next().attr('id');
		$.ajax({
			url:'<%=request.getContextPath()%>/keyword/hqgoods.do',
			type:'get',
			success:function(goodsList){
				printData(goodsList, $('.goods-list'), $('#hqgoods-list-template'), $('.hqgoods'))
			},
			error:function(error){
				// alert('데이터를 불러오는데 실패했습니다.');
			},
			complete:function(){
				$('#modal-goods').modal('show');
			}
		})
	});
	
	// 물품을 선택하면 해당 값이 키워드로
	function hqgoodsKey(code, name){
		document.getElementById(gd_code).innerText=code;
		document.getElementById(gd_name).innerText=name;
		$('#modal-goods').modal('hide');
	}
	
	$(document).on('click', 'td.quan', function (){
		gd_price = $(this).attr('role');
	})
	$(document).on('keyup', 'td.quan', function (){
		var a = (+gd_price) * (+ $(this).text());
		$(this).next().text(a);
	})
</script>
<!-- 물류센터 검색 끝 -->
<!-- 본문 내용 출력 -->
<script type="text/x-handlerbars-template" id="ordermanage-list-template">
	{{#each .}}  
			<tr class="fran-order" id='order-{{math @key "+" 1}}' onclick="javascript:order_go('{{fran_order_code }}','{{fran_appr_st}}');" style="cursor: pointer;">
					<td>{{math @key "+" 1}}</td>
					<td id='tr-{{math @key "+" 1}}'>{{fran_order_code }}</td>
					<td>{{prettifyDate fran_order_date}}</td>
				{{#ifCond fran_appr_st  2}}
					<td id="ap2">미승인</td>
				{{else}}
					<td id="ap1" style="color:red;">승인</td>
				{{/ifCond}}
					<td>{{numberFormat fran_order_price}}</td>
					<td>{{fran_mark}}</td>
				{{#ifCond order_st_code  2}}
					<td>발주완료</td>
				{{else}}
					<td style="color:red;">발주중</td>
				{{/ifCond}}
{{#ifeq order_end_date}}
					<td>{{prettifyDate order_end_date }}</td>
{{else}}

					<td>-</td>		
{{/ifeq}}
				{{#ifCond order_deli_se  2}}
					<td style="color: red;"><button type="button" class="btn custom btn-block btn-danger"><i class="fas fa-space-shuttle"></i></button></td>
				{{else}}
					<td><button type="button" class="btn custom btn-block btn-primary">일반</button> </td>
				{{/ifCond}}
			</tr>
	{{/each}}
</script>
<!-- 본문 내용 출력 끝 -->
<!-- 상세 내용 출력 -->
<script type="text/x-handlerbars-template" id="ordermanage-detail-template">
	{{#each .}}  
			<tr class="order-detail" contenteditable="false">
				<td class="no">{{math @key "+" 1}}</td>
				<td class="xbtn" style="display:none;"><span class="x-badge badge badge-danger">x</span></td>
				<td>{{order_detail_num }}</td>
				<td class='goodscode' id='goodscode{{math @key "+" 1}}'>{{hq_goods_code }}</td>
				<td class='goodsname' id='goodsname{{math @key "+" 1}}'>{{hq_goods_name }}</td>
				<td class='quan' role='{{goods_retail_price}}'>{{numberFormat fran_order_quan }}</td>
				<td class='orderprice'>{{numberFormat fran_order_price}}</td>
				<td>{{numberFormat fran_appr_quan}}</td>
			</tr>
	{{/each}}
</script>
<!-- 상세 내용 출력 끝 -->
<!-- 페이지네이션 -->
<script type="text/x-handlebars-template"  id="ordermanage-pagination-template" >
<ul class="pagination justify-content-center m-0">
	<li class="paginate_button page-item">
		<a href="javascript:searchGoStockL(1)" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-double-left'></i>
		</a>
	</li>
	<li class="paginate_button page-item">
		<a href="{{#if prev}}javascript:searchGoStockL({{prevPageNum}}){{else}}javascript:searchGoStockL(1){{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-left'></i>
		</a>
	</li>
	{{#each pageNum}}
	<li class="paginate_button page-item {{signActive this}} ">
		<a href="javascript:searchGoStockL({{this}})" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			{{this}}
		</a>
	</li>
	{{/each}}

	<li class="paginate_button page-item ">
		<a href="{{#if next}}javascript:searchGoStockL({{nextPageNum}}){{else}}javascript:searchGoStockL(1){{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-right'></i>
		</a>
	</li>
	<li class="paginate_button page-item">
		<a href="javascript:searchGoStockL({{realEndPage}})" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-double-right'></i>
		</a>
	</li>
</ul>
</script>
<!-- 페이지네이션 끝 -->
</body>