<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysYear">
   <fmt:formatDate value="${now}" pattern="MM" />
</c:set>

<head>
<style>
   .row{
      border: 1px solid black;
   }
</style>
<body>
   
   <!-- 정보차트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	<div class="col-md-4 col-12">
		<p>가맹점 재고 순환율</p>
		<div class="info-box">
			<div class="info-box-content">
				<canvas id="deptChart" width="400" height="400"></canvas>
				<script>
					var ctx = document.getElementById("deptChart");
					var deptChart = new Chart(
							ctx,
							{ //차트 선언
								type : 'bar', //차트타입
								data : { //차트 데이터 object 배열
									labels : [ "1월", "2월", "3월", "4월", "5월" ], //라벨 배열
									datasets : [ { //데이터 object 배열
										label : [ 'a', 'b' ],
										data : [ 15, 19, 3, 5, 2, 9 ],
										backgroundColor : [ 'rgba(255, 99, 132, 0.2)' ],
										borderColor : [ 'rgba(255, 99, 132, 1)' ],
										borderWidth : 1
									} ]
								},
								options : { //옵션: 추가하고 싶은 옵션이 있을때 사용
									scales : {
										yAxes : [ { //y축에 관련된 옵션 (x축일 경우: xAxes)
											ticks : {
												beginAtZero : true
											//데이터 표기를 '0'부터 표기한다.
											}
										} ]
									}
								}
							});
				</script>
			</div>
		</div>
	</div>
</body>