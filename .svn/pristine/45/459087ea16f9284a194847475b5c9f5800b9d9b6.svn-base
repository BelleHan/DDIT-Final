<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공급업체 홈</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
#myChart{
	height: 320px;
	width: 632.5px;
}
#myChart2{
	height: 320px;
	width: 632.5px;
}
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
<!-- 차트 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<!-- 부트스트랩 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="col-12 row" style="padding-top: 20px;">
		<div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><strong>${totalCount }</strong><span style="font-size: medium;"> 개</span></h3>
                <p><strong>등록물품</strong></p>
              </div>
              <div class="icon">
                <i class="fas fa-copy"></i>
              </div>
              <a href="#" class="small-box-footer">
                <i class="fas fa-copy"></i>
              </a>
            </div>
          </div>
		<div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><strong>${totalCnt }</strong><span style="font-size: medium;"> 건</span></h3>
                <p><strong>구매요청</strong></p>
              </div>
              <div class="icon">
                <i class="fas fa-shopping-cart"></i>
              </div>
              <a href="#" class="small-box-footer">
                <i class="fas fa-shopping-cart"></i>
              </a>
            </div>
          </div>
          
          <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><strong>67</strong><span style="font-size: medium;"> %</span></h3>

                <p><strong>전년대비 수익률</strong></p>
              </div>
              <div class="icon">
                <i class="fas fa-chart-bar"></i>
              </div>
              <a href="#" class="small-box-footer">
                <i class="fas fa-chart-bar"></i>
              </a>
            </div>
          </div>
          
		<div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><strong>2</strong><span style="font-size: medium;"> 건</span></h3>
                <p><strong>회수요청</strong></p>
              </div>
              <div class="icon">
                <i class="fas fa-reply"></i>
              </div>
              <a href="#" class="small-box-footer">
               <i class="fas fa-reply"></i>
              </a>
            </div>
          </div>
	</div>
	<div class="col-12">
		<div class="info-box">
			<div class="info-box-content">
				<div class="card">
					<div class="card-header border-transparent">
						<h3 class="card-title"><strong><i class="far fa-bell"></i>&nbsp;최신등록물품</strong></h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body p-0">
						<div class="table-responsive">
							<table class="table m-0">
								<thead>
									<tr>
										<th>물품코드</th>
										<th>물품명</th>
										<th>등록일자</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="supGoodsList" items="#{supGoodsList }">
									<tr>
										<td>${supGoodsList.sup_goods_code }</td>
										<td>${supGoodsList.sup_goods_name }</td>
										<td><fmt:formatDate value="${supGoodsList.sup_goods_regdate }" pattern="yyyy/MM/dd"/></td>
									</tr>
						        </c:forEach>
									
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.card-body -->
				</div>
				
			</div>
			<div class="info-box-content">
			<div class="card">
              <div class="card-header border-transparent">
						<h3 class="card-title"><strong><i class="far fa-bell"></i>&nbsp;요청물품</strong></h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body p-0">
						<div class="table-responsive">
							<table class="table m-0">
								<thead>
									<tr>
										<th>물품코드</th>
										<th>물품명</th>
										<th>물품수량</th>
										<th>배송일자</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="salesGoodsList" items="#{salesGoodsList }">
									<tr>
										<td>${salesGoodsList.sup_goods_code }</td>
										<td>${salesGoodsList.sup_goods_name }</td>
										<td>${salesGoodsList.goods_pur_quan }</td>
										<td><fmt:formatDate value="${salesGoodsList.pur_arrive_date }" pattern="yyyy/MM/dd"/></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
              <!-- /.card-body -->
              </div>
            </div>
			</div>
		<div class="col-12 row">
			<div class="col-lg-6 col-6">
				<canvas id="myChart"></canvas>
			</div>
			<div class="col-lg-6 col-6">
				<canvas id="myChart2"></canvas>
			</div>
		</div>
	</div>


<script>
	var ctx = document.getElementById('myChart');
	var myChart = new Chart(ctx, {
		type : 'bar',
		data : {
			labels : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
			datasets : [ {
				label : '월별 공급건수',
				data : [ 12, 32, 43, 24, 42, 23, 16, 13, 23, 43, 23, 63 ],
				backgroundColor : 
					[
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 159, 64, 0.2)' 
					],
				borderColor : 
					[
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 159, 64, 1)' 
					],
				borderWidth : 1
			} ]
		},
		options : {
			responsive: false,
			scales : {
				yAxes : [ {
					ticks : {
						beginAtZero : true
					}
				} ]
			}
		}
	});
</script>
<script>
var ctx = document.getElementById('myChart2');
var myChart2 = new Chart(ctx, {
	type : 'line',
	data : {
		labels : 
			[ 
			'2016년', '2017년', '2018년', '2019년', '2020년',
			],
		datasets : [ {
			label : '5개년 공급량 추이',
			data : [ 12, 11, 15, 13, 15, 18 ],
			backgroundColor : 
				[
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)' ],
			borderColor : 
				[
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)' ],
			borderWidth : 1
		} ]
	},
	options : {
		responsive: false,
		scales : {
			yAxes : [ {
				ticks : {
					beginAtZero : true
				}
			} ]
		}
	}
});	
</script>

</body>
</html>