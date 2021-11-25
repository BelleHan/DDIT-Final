<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="boardList" value="${dataMap.returnList }" />

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
.search-group, .form-control {
   font-size : 13px;
   text-align : right;
}
.search-group {
   padding-top: 2px;
}
.search-card {
   padding-top : 5px;
    padding-bottom: 0px;
   height : 85px;
    width: 1260px;
    margin: auto;
}
.search-body{
   padding : 5px 30px;
   height : 80px;
}
.search-navi{
   position : fixed;
   top : 92vh;
   left : 71vh;
   font-size : 13px;   
}
.search-navi{
   position : fixed;
   top : 35rem;
   left : 34rem;   
   font-size : 13px;
}
.input-padding-bottom {
   margin-bottom : 5px;
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
.btn-fms-search{
   height: 30px;
}
#btn-search {
   height : 65px; margin-left : 26px;
}
.body-top {
   margin-top : 5px;
}
#custom-tabs-one-profile-tab{
   background-color: white;
}
#tab{
background-color: #5ea4ff;
}
.table td{
padding: 6.8px;
}
</style>
</head>

<title>반품목록</title>

<body>
	 <!-- Main content -->
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>반품목록</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>반품목록
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	목록
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	</section>
	 
	 <!-- Main content -->
    <section class="content">		
		<div class="card">
			<div class="card-header with-border">
				<div id="keyword" class="card-tools" style="width:450px;">
					<div class="input-group row">
						<select class="form-control col-md-3" name="perPageNum" id="perPageNum"
					  		onchange="list_go_hs();">
					  		<option value="10" >정렬개수</option>
					  		<option value="20" ${cri.perPageNum == 20 ? 'selected':''}>20개씩</option>
					  		<option value="50" ${cri.perPageNum == 50 ? 'selected':''}>50개씩</option>
					  		<option value="100" ${cri.perPageNum == 100 ? 'selected':''}>100개씩</option>
					  		
					  	</select>						
						<select class="form-control col-md-4" name="searchType" id="searchType">
							<option value="rfs"  ${cri.searchType eq 'rfs' ? 'selected':'' }>전 체</option>
							<option value="r" ${cri.searchType eq 'r' ? 'selected':'' }>반품코드</option>
							<option value="f" ${cri.searchType eq 'f' ? 'selected':'' }>가맹점명</option>
							<option value="s" ${cri.searchType eq 's' ? 'selected':'' }>상태</option>
						</select>					
						<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }"/>
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" onclick="list_go_hs(1);" 
							data-card-widget="search">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					</div>
				</div>						
			</div>
			<div class="card-body" style="height: 728.88px;">
				<table class="table table-hover text-center" >					
					<tr style="font-size:1.2em;">
						<th style="width:5%;">번호</th>
						<th style="width:10%;">반품코드</th>
						<th style="width:10%;">가맹점코드</th>
						<th style="width:15%;">가맹점명</th>
						<th style="width:15%;">가맹점위치</th>
						<th style="width:15%;">물품명</th>
						<th style="width:5%;">수량</th>
						<th style="width:10%;">상태</th>
					</tr>				
					<c:if test="${empty boardList }" >
						<tr>
							<td colspan="7">
								<strong>해당 내용이 없습니다.</strong>
							</td>
						</tr>
					</c:if>						
					<c:forEach items="${boardList }" var="returnList">
					 <c:set var="i" value="${i+1 }" />
						<tr onclick="OpenWindow('detail.do?rcode=${returnList.return_code }','상세보기',600,600);" style="cursor:pointer;" style='font-size:1em;'>
							<td>${i }</td>
							<td>${returnList.return_code }</td>
							<td>${returnList.fran_code }</td>
							<td>${returnList.franVO.fran_name }</td>
							<td>${returnList.franVO.fran_addr }</td>
							<td>${returnList.supGoodsVO.sup_goods_name}</td>
							<td>${returnList.returnDetailVO.return_quan}</td>
							<td>${returnList.return_st }</td>
						</tr>
					</c:forEach>
				</table>				
			</div>
			<div class="card-footer">
				<%@ include file="/WEB-INF/views/common/paginationLogisReturn.jsp" %>				
			</div>
		</div>
		
    </section>
    <!-- /.content -->

</body>







