<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<title>물류센터 메인홈페이지</title>
</head>
<body>
	<section class="content-header">
	<!-- 신규건수 -->
	<div class="row" style="padding:10px;">
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <span class="info-box-icon bg-warning"><i class="far fa-copy"></i></span>

              <div class="info-box-content">
                <span class="info-box-text" >신규반품요청건 &nbsp;<i class="fas fa-plus-square"style="color:red;"></i></span>
                <span class="info-box-number float-right">${returnCount} &nbsp;건</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <span class="info-box-icon bg-success"><i class="fas fa-handshake"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">계약업체</span>
                <span class="info-box-number float-right">${hqCount}&nbsp;개</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <span class="info-box-icon bg-warning"><i class="fas fa-warehouse"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">aType&nbsp;:&nbsp;일반창고</span>
                <span class="info-box-text">bType&nbsp;:&nbsp;냉동/냉장창고 </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <span class="info-box-icon bg-danger"><i class="far fa-copy"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">자가창고&nbsp;:&nbsp;<b>4&nbsp;</b>개</span>
                <span class="info-box-text">임대창고&nbsp;:&nbsp;<b>4&nbsp;</b>개</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
       </div>
        
        
        
        <!-- 소유한 창고정보 -->

	 <div class="row" style="padding:10px;height:60vh;overflow-y:scroll;overflow-x:hidden;">
	 	<c:if test="${!empty logisWhInfoList}">
			<c:forEach var="wh" items="${logisWhInfoList }" >
		          <div class="col-md-3" style="font-size: 15px;">
		            <div class="card-outline card-info">
		              <div class="card-header">
		                <h4 class="card-title"><i class="fas fa-warehouse"></i>&nbsp;&nbsp;<b>${wh.wh_name }</b></h4>
		              </div>
		              <!-- /.card-header -->
		              <div class="card-body">
						<div class="row">
							<div class="col-sm-4">
								<span>창고코드</span>
							</div>
							<div class="col-sm-8">
								<span>${wh.wh_code }</span>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<span>창고면적</span>
							</div>
							<div class="col-sm-8">
								<span>${wh.wh_area }</span>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<span>창고타입</span>
							</div>
							<div class="col-sm-8">
								<span>${wh.wh_st }</span>
							</div>
						</div>
		              </div>
		              <!-- /.card-body -->
		            </div>
		            <!-- /.card -->
		          </div>
			
			</c:forEach>
		</c:if>
	</div>          
         
  	 <!-- 창고정보 end -->  
	 
	 <div class="row" style="padding:10px;">
		 <!-- 물품정보 top5 -->
		<div class="card col-md-6 col-12">
              <div class="card-header border-0" style="padding-top: 8px;" >
                <h5 class="card-title" style="color:#0404B4;background-color: yellow"><i class="fas fa-thumbs-up"></i><b> &nbsp; &nbsp;물류센터 거래물품 &nbsp;TOP 5</b></h5>
              </div>
              <div class="card-body p-0">
                <table class="table table-striped table-valign-middle" style="line-height: 0.5;text-align: center;">
                  <thead>
                  <tr>
                    <th>물품코드</th>
                    <th>업체명</th>
                    <th>업체코드</th>
                    <th>물품재고량</th>
                  </tr>
                  </thead>
                  <tbody>
                  
	                  <c:if test="${!empty topGoodsList}">
						<c:forEach var="top" items="${topGoodsList }" >	
		                  <tr>
		                    <td>${top.hq_goods_code }</td>
		                    <td>${top.hqVO.hq_name }</td>
		                    <td>${top.hqVO.hq_code }</td>
		                    <td>${top.logis_goods_stock}</td>
		                  </tr>
	                  	</c:forEach>
	                  </c:if>
                  </tbody>
                </table>
              </div>
         </div>
		
		 <!-- 계약업체 -->
		<div class="card col-md-6 col-12" >
              <div class="card-header border-0" style="padding-top: 8px;">
                <h5 class="card-title" style="color:#0404B4;background-color: yellow"><i class="fas fa-handshake"></i><b>&nbsp;&nbsp;계약업체 현황</b></h5>
              </div>
              <div class="card-body p-0">
                <table class="table table-striped table-valign-middle"  style="line-height: 0.5;text-align: center;">
                  <thead>
                  <tr>
                    <th>업체코드</th>
                    <th>업체명</th>
                    <th>계약시작일</th>
                    <th>계약종료일</th>
                  </tr>
                  </thead>
                  <tbody>
	                  <c:if test="${!empty contractHqList}">
						<c:forEach var="hq" items="${contractHqList }" >	
		                  <tr>
		                    <td>${hq.hq_code }</td>
		                    <td>${hq.hqVO.hq_name }</td>
		                    <td><fmt:formatDate value="${hq.logis_contract_start }" pattern="yyyy/MM/dd"/></td>
		                    <td><fmt:formatDate value="${hq.logis_contract_end }" pattern="yyyy/MM/dd"/></td>
		                  </tr>
	                  	</c:forEach>
	                  </c:if>
                  </tbody>
                </table>
              </div>
         </div>
	     
	     
	     
	 </div>
	</section>

</body>