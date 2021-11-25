<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />
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

<body>
  	<c:if test="${from eq 'regist' }" >
  	<script>
	alert("게시글 등록에 성공했습니다.");
	
	window.close();
	window.opener.parent.location.href="<%=request.getContextPath()%>/hq/index.do?mCode=MH10400";
<%-- 	window.opener.parent.location.href="<%=request.getContextPath()%>/hq/com/board.do"; --%>
	</script>
  	</c:if>
    <!-- Content Header (Page header) -->
    <section class="content-header">
    	<div class="container-fluid">
    		<div class="row mb-2">
    			<div class="col-sm-6">
	      			<h1>가맹점게시판</h1>
	      		</div>	      		
	     	</div>	     	
      	</div>
    </section>

    <!-- Main content -->
    <section class="content">
		<div class="card">
			<div class="card-header with-border">
				<!-- <button type="button" class="btn btn-primary" id="registBtn" onclick="OpenWindow('registForm.do','상세보기',800,900);">등록</button> -->
				<div id="keyword" class="card-tools" style="width:450px;">	
					<div class="input-group row">
						<select class="form-control col-md-3" name="perPageNum" id="perPageNum">
					  		<option value="10" ${cri.perPageNum==10 ? 'selected':'' } >정렬개수</option>
					  		<option value="20" ${cri.perPageNum==20 ? 'selected':'' }>20개씩</option>
					  		<option value="30" ${cri.perPageNum==30 ? 'selected':'' }>30개씩</option>
					  		<option value="50" ${cri.perPageNum==50 ? 'selected':'' }>50개씩</option>
					  		
					  	</select>		
						<select class="form-control col-md-3" name="searchType" id="searchType">
							<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>전 체</option>
							<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>제 목</option>
							<option value="o" ${cri.searchType eq 'o' ? 'selected':'' }>신청자</option>
						</select>	
										
						<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${cri.keyword }"/>
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go_pjk(1);">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					</div>		 
					
						
				</div>			
			</div>
			<div class="card-body" style="height: 700px;">
				<table class="table table-hover text-center">
					<tr style="font-size:0.95em;">
						<th style="width:3%;">번호</th>
						<th style="width:10%;">제목</th>
						<th style="width:5%;">작성자</th>
						<th style="width:5%;">등록일자</th>
						<th style="width:5%;">신청일자</th>
						<th style="width:5%;">신청자</th>
					</tr>
					<c:forEach items="${noticeList }" var="noticeList">
					<c:set var="i" value="${i+1 }" />
						<tr onclick="OpenWindow('post.do?fNum=${noticeList.fran_notice_num }','','800','900');" style="cursor:pointer;" style='font-size:0.85em;'>
							<td>${i }</td>
							<td>${noticeList.fran_notice_title }</td>
							<td>${noticeList.emp_name }</td>
							<td><fmt:formatDate value="${noticeList.fran_notice_date }" pattern="yyyy-MM-dd" /></td>
							<td><fmt:formatDate value="${noticeList.franAppliDocVO.fran_appli_date }" pattern="yyyy-MM-dd" /></td>
							<td>${noticeList.franVO.fran_owner }</td>
							
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="card-footer">
				<nav aria-label="pds list Navigation">
					<ul class="pagination justify-content-center m-0">
						<%@ include file="/WEB-INF/views/common/paginationPJK.jsp" %>	
					</ul>
				</nav>
			</div>
		</div>
	</section>
</body>