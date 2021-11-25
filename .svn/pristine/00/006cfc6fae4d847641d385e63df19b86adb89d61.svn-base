<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cri" value="${pageMaker.cri }" />
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}
.content-header{
	padding : 8px .5em;
}
.card-body{
    padding: 0.25rem;
}
.table {
    font-size: 13px;
    text-align: center;
}
#in-plan-detail td {
	padding: 0.25rem;
}
#in-plan-detail tr {
	padding: 0.25rem;
}
.search-group, .form-control {
	font-size : 13px;
	text-align : right;
	padding-top: 6px;
}
span.search-group {
	padding-top: 5px;
}
.search-card {
	padding-top : 5px;
    padding-bottom: 0px;
	height : 75px;
    width: 1270px;
    margin: auto;
}
.search-body{
	padding : 10px 5px;
	height : 65px;
}
.search-navi{
	position : fixed;
	top : 27.5rem;
	left : 34rem;	
	font-size : 13px;
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
.bg-gradient-primary {
	background-color: #378DFC;
}
.table-detail th{
	padding : 0.5em;
}
.card-body.p-0 .table tbody>tr>td:last-of-type, .card-body.p-0 .table tbody>tr>th:last-of-type, .card-body.p-0 .table tfoot>tr>td:last-of-type, .card-body.p-0 .table tfoot>tr>th:last-of-type, .card-body.p-0 .table thead>tr>td:last-of-type, .card-body.p-0 .table thead>tr>th:last-of-type {
    padding-right: 0.5rem;
}
</style>
</head>
<body>
	<!-- Main content -->
	<div class="card search-card" style="margin-left : 5px; margin-bottom : 5px; height: 70px;">
		<div class="card-body search-body" style="height: 100px;">
	          	<div class="search-group">
				<div class="input-group">
					<!-- keyword -->
					<div class="input-group col-sm-10">
						<div class="input-group col-sm-6" style="position: relative; left: -4vh;">
							<span class=" search-group col-sm-2">기간</span>
							<div class="input-group input-group-sm col-sm-9">
								<div class="input-group-prepend">
									<button type="button" id="btn-period" style="height: 31px;" class="btn bg-gradient-primary btn-flat btn-fms-search">
										<i class="far fa-calendar-alt"></i>
									</button>
								</div>
								<input type="text" class="form-control float-right" id="reservation">
							</div>
						</div>
						<div class="input-group col-sm-4" style="position: relative; left: -7vh;">
							<div class="form-group col-sm-11">
								<select class="select2bs4" style="width: 100%;" data-placeholder="출발지명" data-select2-id="17" tabindex="-1" aria-hidden="true">
			                    		<option hidden ="true"></option>
				                    	<c:forEach items="${inSup }" var="sup">
				                    		<option value="${sup.sup_code }">${sup.sup_code} : ${sup.sup_name }</option>
				                    	</c:forEach>
			                	</select>
			                </div>
						</div>
						<div class="input-group col-sm-2" style="position: relative; left: -8vh;">
							<span class=" search-group col-sm-4">상태</span> <select class="form-control col-md-8" name="searchType" id="searchType" style="height: 31px;">
								<option value="" ${cri.searchType eq 'b' ? 'selected' : '' }>전체</option>
								<option value="1" ${cri.searchType eq 'b' ? 'selected' : '' }>입고</option>
								<option value="2" ${cri.searchType eq 'b' ? 'selected' : '' }>미입고</option>
							</select>
						</div>
					</div>
					<div class="input-group col-sm-2" style="position : relative; left : -1.5rem; top : -0.8rem;">
						<div class="input-group col-sm-2" style="height: 31px; top: -0.5rem; margin-top: 10px;">
							<span>
								<button style="height: 48px;" onclick="javascript:searchGo(1);" type="button" id="btn-search" class="btn btn-block btn-outline-primary btn-lg btn-fms-search">
									<i class="fas fa-sw fa-search">&nbsp;&nbsp;&nbsp;search</i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
	       </div>
	</div>
	<div class="card col-12" style="max-width : 1270px; margin-left: 5px; min-height: 25.4rem; margin-bottom : 0.2rem;">
		<div class="card card-secondary card-tabs list-line" style="overflow-x: hidden;" >
			<!-- /.card-header -->
	           	<div class="card-body table-responsive p-0">
	              <table class="table table-hover" >
	              	<thead>
	                   <tr>
						<th>no</th>
						<th>입고번호</th>
						<th>출발지(이름/코드)</th>
						<th>입고예정일</th>
						<th>입고일자</th>
						<th>입고상태</th>
					 </tr>
	                	</thead>
				<tbody id="in-plan-list">
	                    <c:forEach items="${inList }" var="in">
	                    	<c:set var="i" value="${i+1 }"/>
							<tr class="in-plan" onclick="javascript:detailGo('${in.goods_pur_code }');" style="cursor: pointer;">
								<td>${i }</td>
								<td>${in.goods_pur_code }</td>
								<td>${in.in_name }(${in.in_code })</td>
								<td><fmt:formatDate value="${in.in_date_schedule}" pattern="yyyy-MM-dd" /></td>
								<td><fmt:formatDate value="${in.in_date}" pattern="yyyy-MM-dd" /></td>
								<td>
									<c:if test="${in.in_st eq 1}">
											미입고
									</c:if>
									<c:if test="${in.in_st eq 2}">
										입고
									</c:if>
								</td>
							</tr>
						</c:forEach>
	                </tbody>
			</table>
	          	</div>
	</div><!-- /.card-->
	<div class="card-body search-navi">
		<%@ include file="/WEB-INF/views/common/paginationFran.jsp"%>
		</div>
		<div class="tab-content" id="custom-tabs-one-tabContent">
			<div class="tab-pane fade active show" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab"></div>
			<div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab"></div>
		</div>
	</div>

	<div class="card col-12" style="margin-left: 3px; min-height: 25.4rem; height: 5vh; overflow-y: scroll;">
		<div class="card card-secondary card-tabs" style="overflow-x: hidden;">
			<!-- /.card-header -->
			<div class="card-body table-responsive p-0">
				<table class="table-detail table table-hover">
					<thead>
						<tr>
							<th>no</th>
							<th>입고번호</th>
							<th>출발지(이름/코드)</th>
							<th>물품명</th>
							<th>입고예정일</th>
							<th>예정수량</th>
							<th>입고일</th>
							<th>실수량</th>
							<th>입고창고</th>
							<th>입고상태</th>
							<th><button type="button" class="btn btn-primary disabled" id="modifyBtn" onclick="modifyGo();"style="font-size: 3px; width: 63px;">저장</button></th>
						</tr>
					</thead>
					<tbody id="in-plan-detail">
					</tbody>
				</table>
			</div>
		</div>
		<!-- /.card-->
	</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('.select2bs4').select2({
		theme: 'bootstrap4'
	})
	$('.select2bs3').select2({
		theme: 'bootstrap4'
	})
})

var data = "";
var in_loca = "";
var fms_st = "";
var page = 1;

function searchGo(num){
	in_loca  = $('.select2-selection__rendered').text().slice(0,6);
	if (in_loca  == '' || in_loca  == null) {
		in_loca  = '';
	}
	fms_st = $('#searchType').val();
	var period = $('#reservation').val();
	page = num;
	if(!num) page = 1;
	//날짜계산준비
	var dateArr = period.split(' ');
	for (var i=0; i < dateArr.length ; i++) {
		dateArr[i] = dateArr[i].slice(0, -1);
	}
	//시작날짜, 종료날짜
	start_date = dateArr[0] + dateArr[1] + dateArr[2];
	end_date = dateArr[4] + dateArr[5] + dateArr[6];
	data = {"in_loca ": in_loca ,"fms_st": fms_st, "page" : page, "start_date" : start_date, "end_date" : end_date};
	$.ajax({
		url : 'in/search.do', 
		method : 'POST',
		data : JSON.stringify(data),		
		contentType : 'application/json; charset=UTF-8',
		dataType : 'json',
		success : function(dataMap) {
			$.each(dataMap.inList, function(i,v){
				if(v.in_st!=1){
					v.in_st = "입고";
				}else{
					v.in_st = "미입고";
				}
			});
			printData(dataMap.inList, $('#in-plan-list'),$('#inplan-list-template'), $('.in-plan'));
			printPagination(dataMap.pageMaker,$('nav.pagination-nav'),$('#inplan-pagination-template'));
		}
	});
}

$(document).on('click', '.in-plan', function(e){
    e.preventDefault();
  $(this).css('background-color', 'gold');
   $('.in-plan').not($(this)).css('background-color', '#fff');
})
function detailGo(data) {
	console.log(data);
	$.ajax({
		url : 'in/detail.do'
		, method : 'post'
		, data : data
		, success : function(inList) {
			
			$.each(inList, function(i,v){
				if(v.in_st!=1){
					v.in_st = "입고";
					$('button#modifyBtn').addClass('disabled');
				}else{
					v.in_st = "미입고";
					$('button#modifyBtn').removeClass('disabled');
				}
			});
			
			printData(inList, $('#in-plan-detail'),$('#inplan-detail-template'), $('.in-detail'));
		}
		, error : function(xhs) {
			alert('데이터를 받아오지 못 했습니다.');
		}
		
	})
}
</script>
<!-- 본문 내용 출력 -->
<script type="text/x-handlerbars-template" id="inplan-list-template">
	{{#each .}}  
			<tr class="in-plan" id="inPlan{{math @key '+' 1}}" onclick="javascript:detailGo('{{goods_pur_code }}');" style="cursor: pointer;">
				<td>{{math @key "+" 1}}</td>
				<td>{{goods_pur_code }}</td>
				<td>{{in_name }}({{in_code }})</td>
				<td>{{prettifyDate in_date_schedule}}</td>
				<td>{{prettifyDate in_date}}</td>
				<td>{{in_st }}</td>
			</tr>
	{{/each}}
</script>
<!-- 본문 내용 출력 끝 -->
<!-- 상세 내용 출력 -->
<script type="text/x-handlerbars-template" id="inplan-detail-template">
	{{#each .}}  
				<tr style="cursor: pointer;" class="in-detail" id="table-body-{{@key }}">	
					<td>{{math @key "+" 1}}
					<td>{{goods_pur_code }}<input type="hidden" id="goodPurCode{{@key }}" value="{{goods_pur_code }}"></td>
					<td>{{in_name}}({{in_code }})</td>
					<td value="{{sup_goods_code}}">{{sup_goods_name }}</td>
					<td>{{prettifyDate in_date_schedule }}</td>
					<td class="contentable" name="in_num" value="{{in_num }}">{{numberFormat in_num}}</td>
				{{#ifeq in_date }}
					<td>{{prettifyDate in_date}}</td>
				{{else}}
					<td style="color : red;">입고예정</td>
				{{/ifeq}}
				{{#ifeqv in_num_schedule 0}}
					<td class="contentable" name="in_num" value="{{in_num_schedule }}">{{numberFormat in_num_schedule}}</td>
				{{else}}
					<td style="color : red;" id="in-num" class="in-num" contenteditable="true" placeholder="input..."></td>
				{{/ifeqv}}
				{{#ifeq wh_code }}
					<td id="wh{{@key}}" value="{{wh_code}}">{{wh_code}}</td>
				{{else}}
					<td id="wh{{@key}}" class="whcode" style="color : red;" onclick="whGo('wh{{@key}}');" role="flase">창고선택</td>
				{{/ifeq}}
					<td id="f{{@key}}">{{in_st}}</td>
				{{#ifeqv in_st '미입고'}}
					<td><button type="button" class="btn btn-danger disabled" id="cancelBtn{{@key }}" onclick="cancelGo('{{goods_pur_code }}', '{{sup_goods_code}}')"style="font-size: 3px; width: 63px;">삭제</button></td>
				{{else}}
					<td class="cancel{{@key }}" style="color : red;"><button type="button" class="btn btn-danger" id="cancelBtn{{@key }}" onclick="cancelGo('{{goods_pur_code }}', '{{sup_goods_code}}')"style="font-size: 3px; width: 63px;">삭제</button></td>
				{{/ifeqv}}
				</tr>
	{{/each}}
</script>
<script>
function modifyGo(){
	if ($('button#modifyBtn').hasClass('disabled')) {
		return;
	}
	swal({
		text : '등록하시겠습니까?'
		, icon: "success"
		, buttons: true
	})
	.then(function(result){
		if (result == true) {
			var detailArr = new Array;
			detailArr = $('.in-detail').children();
			var detailList = detailArr.prevObject;
			detailList.each(function(i){
				var goodPurCode = detailList[i].children[1].innerText;
				var fmxNum = detailList[i].children[7].innerText;
				var goodsCode = detailList[i].children[3].getAttribute('value');
				var whCode = detailList[i].children[8].getAttribute('value');
				data = {"goods_pur_code" : goodPurCode, "in_num" : fmxNum , "sup_goods_code":goodsCode, "wh_code" : whCode}
				console.log(data);
				$.ajax({
					url:'in/modify.do'
					, type : 'post'
					, data : JSON.stringify(data)
					, contentType : 'application/json; charset=UTF-8'
					, async : false
					, dataType : 'text'
					, success : function(result) {
						
						if(result == 'success'){
							alert("수정되었습니다.");
							location.reload();
						}
					}
					, error:function(){
						if($(".in-num").text() == ""){ 
							swal("입고수량을 입력해주세요."); 
							$(".in-num").focus(); 
						}
						if($('.whcode').text() == "창고선택") {
							swal("창고를 선택해주세요.");
							$(".whcode").focus();
						}
				    }	
				}); 
			});
		}
	});
}
</script>
<script>
var whId = '';
function whGo(whid) {
	whId = whid;
	var logiscode = '${loginLogis.logis_code}';
	data = {"fms_logis" : logiscode};
	$.ajax({
		url:'<%=request.getContextPath()%>/keyword/wh.do?',
		type:'post',
		data:JSON.stringify(data),	
		contentType:'application/json',
		success:function(whList){
			printData(whList, $('.wh-list'), $('#wh-list-template'), $('.wh'));
		},
		complete:function(){
			$('#modal-wh').modal('show');
		}
	});
}
function whKey(name, code){
	$('#'+whId).text(name);
	$('#'+whId).attr('value',code);
	$('#'+whId).attr('role','true');
	$('#modal-wh').modal('hide');
}

function cancelGo(purCode, goodsCode) {
	if ($('button#modifyBtn').hasClass('disabled')) {
		return;
	}
	swal({
		text : '삭제하시겠습니까?'
		, icon: "warning"
		, buttons: true
		, dangerMode: true
	})
	.then(function(result){
		if (result == true) {
		var cancelData = {'goods_pur_code' : purCode, 'sup_goods_code' : goodsCode};
			$.ajax({
				url:'<%=request.getContextPath()%>/logis/in/delete.do',
				type:'post',
				data:JSON.stringify(cancelData),	
				contentType:'application/json',
				success:function(whList){
					swal('삭제되었습니다.');
					detailGo(purCode);
				}
			})
		}
	});
} 
</script>
<!-- 상세 내용 출력 끝 -->
<!-- 페이지네이션 -->
<script type="text/x-handlebars-template"  id="inplan-pagination-template" >
<ul class="pagination justify-content-center m-0">
	<li class="paginate_button page-item">
		<a href="javascript:searchGo(1)" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-double-left'></i>
		</a>
	</li>
	<li class="paginate_button page-item">
		<a href="{{#if prev}}javascript:searchGo({{prevPageNum}}){{else}}javascript:searchGo(1){{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-left'></i>
		</a>
	</li>
	{{#each pageNum}}
	<li class="paginate_button page-item {{signActive this}} ">
		<a href="javascript:searchGo({{this}})" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			{{this}}
		</a>
	</li>
	{{/each}}

	<li class="paginate_button page-item ">
		<a href="{{#if next}}javascript:searchGo({{nextPageNum}}){{else}}javascript:searchGo(1){{/if}}" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-right'></i>
		</a>
	</li>
	<li class="paginate_button page-item">
		<a href="javascript:searchGo({{realEndPage}})" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">
			<i class='fas fa-angle-double-right'></i>
		</a>
	</li>
</ul>
</script>
<!-- 페이지네이션 끝 -->
<div class="modal fade" id="modal-wh" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title" id="exampleModalLabel">아래 창고를 선택하세요.</h6>
			</div>
			<div class="modal-body table-responsive p-0 table-scroll">
				<table class="table table-hover" id="modal-fms-wh">
					<thead>
						<tr>
								<th>no</th>
								<th>코드</th>
								<th>창고명</th>
						</tr>
					</thead>
					<tbody class="wh-list">
					<!-- modal이 뿌려질 영역 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
<script type="text/x-handlerbars-template" id="wh-list-template">
	{{#each .}}  
			<tr class="wh" id="wh{{@key}}" onclick="javascript:whKey('{{wh_name}}','{{wh_code}}');">
				<td>{{math @key "+" 1}}</td>
				<td>{{wh_code}}</td>
				<td>{{wh_name}}</td>
			</tr>
	{{/each}}
</script>
</body>