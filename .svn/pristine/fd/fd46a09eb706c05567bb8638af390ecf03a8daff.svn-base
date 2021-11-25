<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="stock" value="${dataMap.logisStock }" />
<c:set var="lacaList" value="${dataMap.lacaList }" />
<c:set var="smcaList" value="${dataMap.smcaList }" />
<c:set var="whList" value="${dataMap.whComboList }" />
<c:set var="keyword" value="${dataMap.keyword }" />

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

<title>재고조회</title>

<body>
 
    <!-- Main content -->
   <section class="content-header">
        <div class="container-fluid">
           <div class="row md-2">
              <div class="col-sm-6">
                 <h5>${loginLogis.logis_name } 재고조회</h5>              
              </div>
              <div class="col-sm-6">
                 <ol class="breadcrumb float-sm-right">
                 <li class="breadcrumb-item">
                    <a href="list.do">
                       <i class="fa fa-dashboard"></i>재고조회
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
         <div class="card-body search-body" style="height: auto;"   >
            <div class="search-group">
               <div class="input-group">
                  <select class="form-control col-md-3" name="wh" id="wh"
                       onchange="list_go_logis();" style="text-align: center;">
                    <c:if test="${!empty whList }" >
                       <option value="" >창고명</option>
                       <c:forEach var="wh" items="${whList }">
                       <option value="${wh.wh_name }" ${wh.wh_name eq '${wh.wh_name}' ? 'selected':''} >${wh.wh_name }</option>
                       </c:forEach>
                    </c:if>
                    </select>
                                      
                  <select class="form-control col-md-3" name="laca" id="laca"
                       onchange="list_go_logis();" style="text-align: center;">
                  <c:if test="${!empty lacaList }">
                       <option value="" >대분류</option>
                       <c:forEach var ="lacaList" items="${lacaList }">
                       <option value="${lacaList.sup_goods_laca }" ${lacaList.sup_goods_laca eq '${lacaList.sup_goods_laca}' ? 'selected':'' } >${lacaList.sup_goods_laca }</option>
                       </c:forEach>
                    </c:if>                  
                    </select>
                    
                  <select class="form-control col-md-3" name="smca" id="smca"
                       onchange="list_go_logis();" style="text-align: center;">
                       <c:if test="${!empty smcaList }">
                       <option value="" >소분류</option>
                       <c:forEach var ="smcaList" items="${smcaList }">
                       <option value="${smcaList.sup_goods_smca }" ${smcaList.sup_goods_smca eq '${smcaList.sup_goods_smca}' ? 'selected':'' }  >${smcaList.sup_goods_smca }</option>
                       </c:forEach>
                    </c:if>
                    </select>                  
                  <input class="form-control" type="text" name="keyword" placeholder="물품명을 입력하세요." value="${param.keyword }"/>
                  <span class="input-group-append">
                     <button class="btn btn-primary" type="button" onclick="list_go_logis(1);" 
                     data-card-widget="search">
                        <i class="fa fa-fw fa-search"></i>
                     </button>
                  </span>
               </div>
            </div>
         </div>
      </div>


      <div class="card-body" style="height: 728.88px;">
         <table class="table table-hover text-center">
            <tr style="font-size: 1.2em;">
               <th style="width: 5%;">번 호</th>
               <th style="width: 7%;">물품코드</th>
               <th style="width: 10%;">창고</th>
               <th style="width: 10%;">대분류</th>
               <th style="width: 10%;">소분류</th>
               <th style="width: 21%;">물품명</th>
               <th style="width: 8%; text-align: right;">현재고</th>
               <th style="width: 8%; text-align: right;">안전재고</th>
               <th style="width: 8%; text-align: right;">적정재고</th>
               <th style="width: 8%; text-align: right;">최대발주량</th>
            </tr>
            <c:if test="${empty dataMap.logisStock }">
               <tr>
                  <td colspan="10"><strong>해당 내용이 없습니다.</strong></td>
               </tr>
            </c:if>
            <c:forEach items="${dataMap.logisStock }" var="stock">
               <c:set var="i" value="${i+1 }" />
               <tr
                  onclick="OpenWindow('detail.do?hq_goods_code=${stock.hq_goods_code }&wh_name=${stock.wh_name }&logis_code=${stock.logis_code }','상세보기',783,360);"
                  style='font-size: 1em;' style="cursor:pointer;">
                  <td>${i }</td>
                  <td>${stock.hq_goods_code }</td>
                  <td>${stock.wh_name }</td>
                  <td>${stock.sup_goods_laca }</td>
                  <td>${stock.sup_goods_smca }</td>
                  <td>${stock.sup_goods_name }</td>
                  <c:if test="${stock.logis_goods_stock lt stock.logis_safe_stock}">
                     <td style="color: red; text-align: right;"><fmt:formatNumber
                           value="${stock.logis_goods_stock}" pattern="#,###" /></td>
                  </c:if>
                  <c:if test="${stock.logis_goods_stock ge stock.logis_safe_stock}">
                     <td style="text-align: right;"><fmt:formatNumber
                           value="${stock.logis_goods_stock}" pattern="#,###" /></td>
                  </c:if>
                  <td style="text-align: right;"><fmt:formatNumber
                        value="${stock.logis_safe_stock}" pattern="#,###" /></td>
                  <td style="text-align: right;"><fmt:formatNumber
                        value="${stock.logis_suit_stock}" pattern="#,###" /></td>
                  <td style="text-align: right;"><fmt:formatNumber
                        value="${stock.goods_max_order}" pattern="#,###" /></td>
               </tr>
            </c:forEach>
         </table>
      </div>
      <div class="card-footer">
         <%@ include file="/WEB-INF/views/common/paginationLStock.jsp"%>
      </div>

   </section>
   <!-- /.content -->

</body>






