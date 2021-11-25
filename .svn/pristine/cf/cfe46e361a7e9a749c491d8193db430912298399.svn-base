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

.table {
    font-size: 13px;
    text-align: center;
}
.search-group, .form-control {
	font-size : 13px;
	text-align : right;
}
.search-group {
	padding: 6px 3px 0px 3px;
}
.search-card {
	padding-top : 5ps;
    padding-bottom: 0px;
    width: 1280px;
    margin: auto;
}
.search-body{
	padding : 5px 10px;
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
</style>
</head>

<title>출고계획</title>

<body>
	<div class="content-wrapper">
	 <!-- Main content -->
		<section class="content-header with-border" style="min-height: 70px; max-height: 70px;">
		  	<div class="container-fluid">
		  		<div class="row md-2">
		  			<div class="col-sm-6">
		  				<h1>출고계획</h1>  				
		  			</div>
		  			<div class="col-sm-6">
		  				<ol class="breadcrumb float-sm-right">
				        <li class="breadcrumb-item">
				        	<a href="list.do">
					        	<i class="fa fa-dashboard"></i>입출고계획
					        </a>
				        </li>
		    	  </ol>
		  			</div>
		  		</div>
		  	</div>
		</section>
	 
		<div class="col-12 col-sm-12" >
			<div class="card card-secondary card-tabs"  >
				<div class="card-header p-0 pt-1">
					<ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
						<li class="nav-item" onclick="javascript:logis_go();"><a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-one-profile" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false" >입고</a></li>
						<li class="nav-item"><a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-one-profile" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">출고</a></li>
					</ul>
				</div>
				<div>
					<div class ="card-tools">
							<button type="button" class="btn btn-primary" id="registBtn" onclick="registGo();" style="margin-left: 92%; margin-top: 10px;">등 록</button>
							&nbsp;&nbsp;&nbsp;&nbsp;
												
						</div>
				</div>
				<div class="card-body search-card" style="width: 100%;">
					<div class="card">
						<div class="card-body search-body" >
			        	<form>
			        		<input type="reset" class="btn btn-primary" value="초기화" style="margin-left: 93%; width: 50px; font-size: 3px; padding: 2px;" >	
			            	<div class="search-group">
			   					<div class="input-group">
			   					 	<!-- keyword -->
			   					 	<div class="input-group col-sm-12" >
									 	<div class="input-group input-padding-bottom col-sm-3" style="float: left;">
											<span class=" search-group col-sm-4" >물류센터코드</span>
											<div class="input-group input-group-sm col-sm-8">
												<input type="text" id="fms-log" name="fms-log" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-log" name="btn-log" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button>
												</span>
											</div>
										</div>
										<div class="input-group input-padding-bottom col-sm-3">
											<span class=" search-group col-sm-4" >물품코드</span>
											<div class="input-group input-group-sm col-sm-8" id="test-div">
												<input type="text" id="fms-hq" name="fms-hq" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-hq" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button>
												</span>
											</div>
										</div>
										<div class="input-group input-padding-bottom col-sm-3">
											<span class=" search-group col-sm-4">가맹점도착지</span>
											<div class="input-group input-group-sm col-sm-8">
												<input type="text" id="fms-outFran" name="fms-outFran" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-outFran" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button>
												</span>
											</div>
										</div>		 	 	
										 <div class="input-group input-padding-bottom col-sm-3">
											<span class=" search-group col-sm-4">물류센터도착지</span>
											<div class="input-group  input-group-sm  col-sm-8">
												<input type="text" id="fms-outLogis" name="fms-outLogis" class="form-control form-fms-search" value="" >
												<span class="input-group-append">
													<button type="button" id="btn-outLogis" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button>
												</span>
											</div>
										</div>  
										
										 <div class="input-group input-padding-bottom col-sm-3">
											<span class=" search-group col-sm-4">출고지유형</span>
											<div class="input-group  input-group-sm  col-sm-8">
										<select class="form-control" name="out_loca_type" id="out_loca_type">
				                   		  <option value="1" ${ param.out_loca_type == 1 ? 'selected' : '' }>물류센터</option>
				                          <option value="2" ${ param.out_loca_type == 2 ? 'selected' : '' }>가맹점</option> 
				                		</select>
											</div>
										</div> 
										 <div class="input-group input-padding-bottom col-sm-3">
											<span class=" search-group col-sm-4">출고상태</span>
											<div class="input-group  input-group-sm  col-sm-8">
										<select class="form-control" name="out_st" id="out_st">
				                   		  <option value="1" ${ param.out_loca_type == 1 ? 'selected' : '' }>미출고</option>
				                          <option value="2" ${ param.out_loca_type == 2 ? 'selected' : '' }>출고</option> 
				                		</select>
											</div>
										</div> 
										 <div class="input-group input-padding-bottom col-sm-3">
											<span class=" search-group col-sm-4">출고수량</span>
											<div class="input-group  input-group-sm  col-sm-8">
										<input type="text" id="out_num" name="out_num" class="form-control" >
											</div>
										</div> 
										 <div class="input-group input-padding-bottom col-sm-3">
											<span class=" search-group col-sm-4">출고일자</span>
											<div class="input-group  input-group-sm  col-sm-8">
												<input type="date" id="out_date" name="out_date" class="form-control" >
											</div>
										</div>  
									
									</div>
								</div>
		   					</div>
		   					</form>
			             </div>
					</div>
				</div>
					<!-- /.card-header -->
              	<div class="card-body table-responsive p-0" style="margin-bottom: 300px;">
	                <table class="table table-hover" style="min-height: 300px; max-height: 300px; overflow-y: scroll; margin-left: 40px;">
	                	<thead>
		                    <tr class="out-table-head">
		                    	<th>no</th>
								<th>출고번호</th>
								<th>본사물품코드</th>
								<th>물류센터코드</th>
								<th>출고지유형</th>
								<th>도착지</th>
								<th>출고일자</th>
								<th>출고상태</th>
								<th>출고수량</th>
								<th>수정</th>
							 </tr>
	                  	</thead>
						<tbody>
		                    <c:forEach items="${outList }" var="out">
		                    	<c:set var="i" value="${i+1 }"/>
								<tr style="cursor: pointer;" class="out-table-body" id="table-body-${i }">
									<td>${i }</td>
									<td>${out.out_code }<input type="hidden" id="outCode${i }" value="${out.out_code }"></td>
									<td id="a${i }">${out.hq_goods_code }</td>
									<td id="b${i }">${out.logis_code }</td>
									<td>
										<c:if test="${out.out_loca_type eq 1}">
											물류센터
										</c:if>
										<c:if test="${out.out_loca_type eq 2}">
											가맹점
										</c:if>
									</td>
									<td id="c${i }">${out.out_loca }</td>
									<td id="d${i }"><fmt:formatDate value="${out.out_date }" pattern="yyyy-MM-dd"/></td>
									<td id="e${i }">
										<c:if test="${out.out_st eq 1}">
											미출고
										</c:if>
										<c:if test="${out.out_st eq 2}">
											출고
										</c:if>
									</td>
									<td id="f${i }" style="width: 160px;">${out.out_num }</td>
									<td><button type="button" class="btn btn-warning" id="modifyBtn${i }" onclick="modifyGo('${i }')" style="margin-top: 4px; font-size: 3px; width: 50px;">수정</button></td>
									<td><button type="button" class="btn btn-primary" id="saveBtn${i }" onclick="saveGo('${i }');" style="font-size: 3px; margin-top: 4px; display:none; position: relative; right: 60px; width: 50px;">저 장</button></td>
									<td><button type="button" class="btn btn-primary" id="cancelBtn${i }" onclick="cancelGo('${i }')" style="margin-top: 4px; display:none; font-size: 3px; position: relative; right: 80px; width: 50px;">취소</button></td>
									
								</tr>
							</c:forEach>
		                 </tbody>
					</table>
             	</div>
				<div class="card-body search-">
					<%@ include file="/WEB-INF/views/common/paginationhq.jsp"%>
				</div>
			</div><!-- /.card-->
			<div class="tab-content" id="custom-tabs-one-tabContent">
				<div class="tab-pane fade active show" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab"></div>
				<div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab"></div>
			</div>
		</div>
	</div>
	<!-- </div> -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<script>

var data = "";
var fms_log = "";
var fms_hq = "";
var fms_outFran = "";
var fms_outLogis = "";
var out_st = "";
var out_loca_type = "";
var out_num = "";
var out_date = "";
var page = 1;


function registGo(){
			
	fms_log = $('#fms-log').val();
	fms_hq = $('#fms-hq').val();
	fms_outFran = $('#fms-outFran').val();
	fms_outLogis = $('#fms-outLogis').val();
	out_st = $('#out_st').val();
	out_loca_type = $('#out_loca_type').val();
	out_num = $('#out_num').val();
	out_date = $('#out_date').val();
	
	
	if(!page) page = 1;
	
	data = {"logis_code": fms_log, "hq_goods_code": fms_hq, "out_loca_Fran": fms_outFran, "out_loca_Logis": fms_outLogis, "page" : page, "out_st" : out_st, "out_loca_type" : out_loca_type, "out_num" : out_num, "out_date" : out_date }
    console.log(data)

 	$.ajax({
		url:'outRegist.do'
		, type : 'post'
		, data : JSON.stringify(data)
		, contentType : 'application/json; charset=UTF-8'
		, dataType : 'text'
		, success : function(result) {
			
			if(result == 'regist'){
				location.reload();
			}
		}
		, error:function(){
			if($("#fms-log").val() == ""){ 
				alert("물류센터코드를 입력해주세요"); $("#fms-log").focus(); return false; }
			if($("#fms-hq").val() == ""){ 
				alert("물품코드를 입력해주세요"); $("#fms-hq").focus(); return false; }
			if($("#out_loca_type").val() == ""){ 
				alert("출고지 유형을 입력해주세요"); $("#out_loca_type").focus(); return false; }
			if($("#out_st").val() == ""){ 
				alert("출고상태를 입력해주세요"); $("#out_st").focus(); return false; }
			if($("#out_num").val() == ""){ 
				alert("출고수량을 입력해주세요"); $("#out_num").focus(); return false; }
			if($("#out_date").val() == ""){ 
				alert("출고일자를 입력해주세요"); $("#out_date").focus(); return false; }
		
			
	    }	
	
	}) 
}


/* $("#tb tbody").on("click", "tr", function(){
	
	
	var hq_goods_code = $(this).find("td:eq(2)").text();
	var logis_code = $(this).find("td:eq(3)").text();
	var out_loca = $(this).find("td:eq(5)").text();
	var out_date = $(this).find("td:eq(6)").text();
	var out_st = $(this).find("td:eq(7)").text();
	var out_num  = $(this).find("td:eq(8)").text();
	
	
	

	
}) */


function modifyGo(idx) {
	
	$('#registBtn').hide();
	$('#modifyBtn' + idx).hide();
	$('#saveBtn' + idx).show();
	$('#cancelBtn' + idx).show();
	
	//$('#table-body-'+idx+' td:eq(2)').append('<td onclick="javascript:hqModal(\'fms-hq-' + idx + '\');"><input type="text" id="fms-hq-'+idx+'" name="fms-hq" class="input-group input-group-sm col-sm-6" value="" ><span class="input-group-append"><button type="button" id="btn-hq" class="btn bg-gradient-secondary btn-flat btn-fms-search" ><i class="fas fa-caret-down"></i></button></span></td>');
	$('#b' + idx).append('<td onclick="javascript:logModal(\'fms-log-' + idx +  '\');"><input type="text" id="fms-log-'+idx+'" name="fms-log" class="input-group input-group-sm col-sm-6" value="" ><span class="input-group-append"><button type="button" id="btn-log" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button></span></td>');
	$('#c' + idx).append('<td onclick="javascript:outFranModal(\'fms-outFran-' + idx +  '\');"><input type="text" id="fms-outFran-'+idx+'" name="fms-outFran" class="input-group input-group-sm col-sm-6" value="" ><span class="input-group-append"><button type="button" id="btn-outFran" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button></span></td>');
	$('#c' + idx).append('<td onclick="javascript:outLogisModal(\'fms-outLogis-' + idx +  '\');"><input type="text" id="fms-outLogis-'+idx+'" name="fms-outLogis" class="input-group input-group-sm col-sm-6" value="" ><span class="input-group-append"><button type="button" id="btn-outLogis" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button></span></td>');
	$('#d' + idx).append('<td><input type="date" id="out_date'+idx+'" name="out_date" class="form-control" ></td>');
	$('#e' + idx).append('<td><select class="form-control" name="out_st" id="out_st'+idx+'"><option value="1" ${ param.out_loca_type == 1 ? "selected" : "" }>미출고</option><option value="2" ${ param.out_loca_type == 2 ? "selected" : "" }>출고</option> </select></td>');
	$('#f' + idx).append('<td><input type="text" id="outNum'+idx+'" name="out_num" class="form-control"></td>');
	
	
	//var id 
	//$('.out-table-head').append('<th class="saveTable">저장</th>');
	//for (var i=1 ; i <= $('.out-table-body').length; i++ ){
		//tbody_id = '#table-body-' + i;
		//$(tbody_id).append('<td class="saveTable"><button type="button" class="btn btn-primary" id="saveBtn" onclick="saveGo();" style="font-size: 3px;">저 장</button></td>');
		/* outst_id = '#out-st-' + i;
		$(outst_id).html('<td style="width: 50%;"><select class="form-control" name="out_st" id="out_st"><option value="1" ${ param.out_loca_type == 1 ? "selected" : "" }>미출고</option><option value="2" ${ param.out_loca_type == 2 ? "selected" : "" }>출고</option> </select></td>');
		outDate_id = '#out-date-'+i;
		$(outDate_id).html('<td><input type="date" id="out_date" name="out_date" class="form-control" ></td>');
		outNum_id = '#out-num-' + i;
		$(outNum_id).html('<td><input type="text" id="outNum" name="out_num" class="form-control" style="width: 50%;"></td>');
		goodsCode = '#goods-code-'+i;
		$(goodsCode).html('<td onclick="javascipt:hqModal(\'fms-hq-' + i + '\');"><input type="text" id="fms-hq-'+i+'" name="fms-hq" class="form-control form-fms-search" value="" ><span class="input-group-append"><button type="button" id="btn-hq" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button></span></td>');
	 */
	
	//}
		//$('.contentable').attr('contenteditable', 'true');
	
}
function cancelGo(idx) {
	
	$('#registBtn').show();
	$('#modifyBtn' + idx).show();
	$('#cancelBtn' + idx).hide();
	$('#saveBtn' + idx).hide();

	$('td','#b' + idx).remove();
	$('td','#c' + idx).remove();
	$('td','#d' + idx).remove();
	$('td','#e' + idx).remove();
	$('td','#f' + idx).remove();
	        
	//$('.contentable').attr('contenteditable', 'false');
	
	//$('.saveTable').hide();
	//$('#outNum').hide();
	
}

function saveGo(idx){
	var outCode = $("#outCode" + idx).val();
	var fmxLog = $("#fms-log-" + idx).val();
	var fmxFran = $("#fms-outFran-" + idx).val();
	var fmxLogis = $("#fms-outLogis-" + idx).val();
	var fmxDate = $("#out_date" + idx).val();
	var fmxSt = $("#out_st" + idx).val();
	var fmxNum = $("#outNum" + idx).val();
	

	
	data = {"out_code" : outCode, "logis_code": fmxLog, "out_loca_Fran": fmxFran, "out_loca_Logis": fmxLogis,  "out_st" : fmxSt,  "out_num" : fmxNum, "out_date" : fmxDate }
	
	$.ajax({
		url:'outmodify.do'
		, type : 'post'
		, data : JSON.stringify(data)
		, contentType : 'application/json; charset=UTF-8'
		, dataType : 'text'
		, success : function(result) {
			
			if(result == 'modify'){
				location.reload();
			}
		}
		, error:function(){
			 if($("#fms-log-" + idx).val() == ""){ 
				alert("물류센터코드를 입력해주세요"); $("#fms-log-").focus(); return false; }
			if($("#out_st" + idx).val() == ""){ 
				alert("출고상태를 입력해주세요"); $("#out_st").focus(); return false; }
			if($("#outNum" + idx).val() == ""){ 
				alert("출고수량을 입력해주세요"); $("#outNum").focus(); return false; }
			if($("#out_date" + idx).val() == ""){ 
				alert("출고일자를 입력해주세요"); $("#out_date").focus(); return false; } 
		
			
	    }	
	
	}) 
	
}
</script>
	
<!-- 지역검색 영역 -->
<!-- 모달 영역 -->
<div class="modal fade" id="modal-log" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">물류센터</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			</div>
			<div class="modal-body">
				<table class="table table-bordered log-list" id="modal-fms-log">
				<tr>
						<th>no</th>
						<th>물류센터코드</th>
						<th>물류센터명</th>
						<th>대표</th>
						<th>주소</th>
				</tr>
				</table>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>

<!-- 모달 끝 -->
<script>
function logis_go() {
	location.href="<%=request.getContextPath()%>/hq/inout/InPlanList";
}

function printData(dataArr, target, templateObject, removeClass){
	var template = Handlebars.compile(templateObject.html());
	var html = template(dataArr);
	$(removeClass).remove();
	target.append(html);
}

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlerbars-template" id="log-list-template">
	{{#each .}}  
			<tr class="log" id="log{{math @key '+' 1}}" onclick="javascript:logKey('{{logis_code}}','{{targetElement}}');">
				<td>{{math @key "+" 1}}</td>
				<td>{{logis_code}}</td>
				<td>{{logis_name}}</td>
				<td>{{logis_owner}}</td>
				<td>{{logis_addr}}{{logis_detail_addr}}</td>
			</tr>
	{{/each}}
</script>
<script>
	//log modal
	function logModal(targetElement){
		
		$.ajax({
			url:'<%=request.getContextPath()%>/keyword/log.do',
			type:'get',
			success:function(logList){
				$.each(logList, function(i,v){
					v.targetElement = targetElement;
				});
				printData(logList, $('.log-list'), $('#log-list-template'), $('.log'))
			},
			error:function(error){
				// alert('데이터를 불러오는데 실패했습니다.');
			},
			complete:function(){
				$('#modal-log').modal('show');
			}
		})
	}
	
	$('#btn-log').on('click', function(){
		logModal('fms-log');		
	});
	
	// 지역을 선택하면 해당 값이 키워드로
	function logKey(data, target){
		document.querySelector('#' + target).value = data;
	//	document.querySelector('#fms-log').value = data;
		$('#modal-log').modal('hide');
	}

</script>
<!-- 물류센터코드 검색 끝 -->
<!-- 물품코드검색  -->
<!-- 모달 영역 -->
<div class="modal fade" id="modal-hq" tabindex="-1" role="diahq" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog " role="document">
		<div class="modal-content">
			<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">물품코드</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			</div>
			<div class="modal-body">
				<table class="table table-bordered hq-list" id="modal-fms-hq">
				<tr>
						<th>no</th>
						<th>물품코드</th>
						<th>물품명</th>
				</tr>
				</table>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->
<script type="text/x-handlerbars-template" id="hq-list-template">
	{{#each .}}  
			<tr class="hq" id="hq{{math @key '+' 1}}" onclick="javascript:hqKey('{{hq_goods_code}}', '{{targetElement}}');">
				<td>{{math @key "+" 1}}</td>
				<td>{{hq_goods_code}}</td>
				<td>{{hq_goods_name}}</td>
				
			</tr>
	{{/each}}
</script>
<script>
	function hqModal(targetElement){
		$.ajax({
			url:'<%=request.getContextPath()%>/keyword/hq.do',
			type:'get',
			success:function(hqList){
				$.each(hqList, function(i,v){
					v.targetElement = targetElement;
				});
				console.log(hqList);
				printData(hqList, $('.hq-list'), $('#hq-list-template'), $('.hq'))
			},
			error:function(error){
				// alert('데이터를 불러오는데 실패했습니다.');
			},
			complete:function(){
				$('#modal-hq').modal('show');
			}
		})
	}
	//hq modal
	$('#btn-hq').on('click', function(){
		hqModal('fms-hq');
	});
	
	// 가맹점을 선택하면 해당 값이 키워드로
	function hqKey(data, target){
		document.querySelector('#' + target).value = data;
// 		document.querySelector('#fms-hq').value = data;
		$('#modal-hq').modal('hide');
	}

</script>
<!-- 물품코드검색 끝 -->
<!-- 가맹점도착지 검색 -->
<!-- 모달 영역 -->
<div class="modal fade" id="modal-outFran" tabindex="-1" role="diaoutFran" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">가맹점도착지</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			</div>
			<div class="modal-body">
				<table class="table table-bordered outFran-list" id="modal-fms-outFran">
				<tr>
						<th>no</th>
						<th>가맹점코드</th>
						<th>가맹점명</th>
						<th>대표</th>
						<th>주소</th>
				</tr>
				</table>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->
<script type="text/x-handlerbars-template" id="outFran-list-template">
	{{#each .}}  
			<tr class="outFran" id="outFran{{math @key '+' 1}}" onclick="javascript:outFranKey('{{fran_code}}','{{targetElement}}');">
				<td>{{math @key "+" 1}}</td>
				<td>{{fran_code}}</td>
				<td>{{fran_name}}</td>
				<td>{{fran_owner}}</td>
				<td>{{fran_addr}} {{fran_detail_addr}}</td>
			</tr>
	{{/each}}
</script>
<script>

	function outFranModal(targetElement){
		console.log("outFranModal");
		$.ajax({
			url:'<%=request.getContextPath()%>/keyword/outFran.do',
			type:'get',
			success : function(outFranList){
					$.each(outFranList, function(i,v){
						v.targetElement = targetElement;
					});
				printData(outFranList, $('.outFran-list'), $('#outFran-list-template'), $('.outFran'))
			},
			error:function(error){
				// alert('데이터를 불러오는데 실패했습니다.');
			},
			complete:function(){
				$('#modal-outFran').modal('show');
			}
		})
	}

	//laca modal
	$('#btn-outFran').on('click', function(){
		console.log('click');
		outFranModal('fms-outFran');
	});
	
	// 물품을 선택하면 해당 값이 키워드로
	function outFranKey(data, target){
		
		document.querySelector('#' + target).value = data;
		//document.querySelector('#fms-outFran').value = data;
		$('#modal-outFran').modal('hide');
	}
	
</script>
<!--가맹점 도착지 검색 끝 -->
<!-- 물류센터 도착지 검색 -->
<!-- 모달 영역 -->
<div class="modal fade" id="modal-outLogis" tabindex="-1" role="diaoutLogis" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">물류센터 도착지</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			</div>
			<div class="modal-body">
				<table class="table table-bordered outLogis-list" id="modal-fms-outLogis">
				<tr>
						<th>no</th>
						<th>물류센터코드</th>
						<th>물류센터명</th>
						<th>대표</th>
						<th>주소</th>
				</tr>
				</table>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->
<script type="text/x-handlerbars-template" id="outLogis-list-template">
	{{#each .}}  
			<tr class="outLogis" id="outLogis{{math @key '+' 1}}" onclick="javascript:outLogisKey('{{logis_code}}', '{{targetElement}}');">
				<td>{{math @key "+" 1}}</td>
				<td>{{logis_code}}</td>
				<td>{{logis_name}}</td>
				<td>{{logis_owner}}</td>
				<td>{{logis_addr}}{{logis_detail_addr}}</td>
			</tr>
	{{/each}}
</script>
<script>

    function outLogisModal(targetElement){
    	
    	$.ajax({
			url:'<%=request.getContextPath()%>/keyword/outLogis.do',
			type:'get',
			success:function(outLogisList){
				$.each(outLogisList, function(i,v){
					v.targetElement = targetElement;
				});	
				printData(outLogisList, $('.outLogis-list'), $('#outLogis-list-template'), $('.outLogis'))
			},
			error:function(error){
				// alert('데이터를 불러오는데 실패했습니다.');
			},
			complete:function(){
				$('#modal-outLogis').modal('show');
			}
		})
    }


	//outLogis modal
	$('#btn-outLogis').on('click', function(){
		outLogisModal('fms-outLogis');
	});
	
	// 물품을 선택하면 해당 값이 키워드로
	function outLogisKey(data, target){
		document.querySelector('#' + target).value = data;
		//document.querySelector('#fms-outLogis').value = data;
		$('#modal-outLogis').modal('hide');
	}

</script>
 <!-- 소분류 검색 끝 -->
<!-- 본사물품 검색  -->
<!-- 모달 영역 -->

 
</body>