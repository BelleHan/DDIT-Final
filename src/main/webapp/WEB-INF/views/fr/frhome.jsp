<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가맹점 홈</title>
<style>
.divbox{
	float:left;
	margin-top: 20px;
}
.li{
	list-style-type:none; 
	
}
.li li{
	float: left;

}

.list {
	list-style: none;
}

</style>




</head>
<body>
<script src="/fms/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 686px;">
    <!-- Main content -->
	<div class="col-12 row" style="padding-top: 20px;">
	
	<div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-warning " style="">
              <div class="inner">
                <h3><strong> ${franOrderCount }</strong><span style="font-size: medium;"> 개</span></h3>
                <p><strong>발주신청</strong></p>
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
                <h3><strong> ${returnApplyCount }</strong><span style="font-size: medium;"> 개</span></h3>
                <p><strong>반품신청</strong></p>
              </div>
              <div class="icon">
                <i class="fas fa-copy"></i>
              </div>
              <a href="#" class="small-box-footer">
                <i class="fas fa-copy"></i>
              </a>
            </div>
          </div>
	
<!-- 	 	<div class="col-lg-3 col-6"> -->
<!--             small card -->
<!--             <div class="small-box bg-warning"> -->
<!--               <div class="inner"> -->
<%--                 <h3><strong>  ${returnCompleteCount }</strong><span style="font-size: medium;"> 개</span></h3> --%>
<!--                 <p><strong>반품완료</strong></p> -->
<!--               </div> -->
<!--               <div class="icon"> -->
<!--                 <i class="fas fa-copy"></i> -->
<!--               </div> -->
<!--               <a href="#" class="small-box-footer"> -->
<!--                 <i class="fas fa-copy"></i> -->
<!--               </a> -->
<!--             </div> -->
<!--           </div> -->
	 	
	 	
	 	<div class="col-lg-3 col-6" >
            <!-- small card -->
            <div class="small-box bg-warning" id="clickAccept" onclick="OpenWindow('toFran/accept.do','상세보기',730,740);">
              <div class="inner" >
                <h3><strong> ${stockRequestCount}</strong><span style="font-size: medium;"> 개</span></h3>
                <p><strong>나에게온 재고요청</strong></p>
              </div>
              <div class="icon">
               <i class="fas fa-people-carry"></i>
              </div>
              <a href="#" class="small-box-footer">
                <span><b>당장거래</b></span>&nbsp;<i class="fas fa-people-carry"></i>
              </a>
            </div>
         </div>
	 	<div class="col-lg-3 col-6" >
            <!-- small card -->
            <div class="small-box bg-warning" id="clickAccept" onclick="location.href='<%=request.getContextPath()%>/fr/tofran/list.do'">
              <div class="inner" >
                <h3><strong><span style="color:red;"> ${stockAcceptCount}</span></strong><span style="font-size: medium;"> 개</span></h3>
                <p><strong>내가 보낸 요청 승낙건수</strong></p>
              </div>
              <div class="icon">
               <i class="fas fa-people-carry"></i>
              </div>
              <a class="small-box-footer">
                <span><b>당장거래</b></span>&nbsp;<i class="fas fa-people-carry"></i>
              </a>
            </div>
         </div>
	
         </div> 
	
		
		<div style="width: 540px; margin-left: 36px; position: relative; top: 10px;">		
		<canvas id="bar-chart" width="50px;" height="30px;"></canvas>
		<div style="position: relative; left: 650px; bottom: 310px;"><canvas id="bar-chart-grouped" width="800" height="450"></canvas></div>
		<div style="position: relative; bottom: 280px;"><canvas id="pie-chart" width="800" height="450"></canvas></div>
		<div style="position: relative; bottom: 580px;  left: 600px;"><canvas id="bar-chart-horizontal" width="800" height="450"></canvas></div>
		</div>
	
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->



<script>


new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["6월", "7월", "8월", "9월", "10월", "11월"],
      datasets: [
        {
          label: "Population (millions)",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850", "#C9CBE0"],
          data: [3400000, 2950000, 3400000, 3850000, 3700000, 3500000]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: '6개월 매출현황'
      }
    }
});


new Chart(document.getElementById("bar-chart-grouped"), {
    type: 'bar',
    data: {
      labels: ["콜롭비아원두", "빨대", "코코아파우더", "투명컵"],
      datasets: [
        {
          label: "현재고량",
          backgroundColor: "#FF6633",
          data: [25,80,10,70]
        }, {
          label: "안전재고량",
          backgroundColor: "#FFD200",
          data: [50,190,40,150]
        }
      ]
    },
    options: {
      title: {
        display: true,
        text: '물품별 안전 재고량  RISK '
      }
    }
});

new Chart(document.getElementById("pie-chart"), {
    type: 'pie',
    data: {
      labels: ["빨대", "투명컵", "초코칩", "녹차파우더"],
      datasets: [{
        label: "Population (millions)",
        backgroundColor: ["#D5E1DF", "#EACACB","#E2B3A3","#A3B6C5"],
        data: [500,300,100,50]
      }]
    },
    options: {
      title: {
        display: true,
        text: '최근 한달 반품'
      }
    }
});

new Chart(document.getElementById("bar-chart-horizontal"), {
    type: 'horizontalBar',
    data: {
      labels: ["모카 프라푸치노", "아메리카노", "녹차라떼", "카라멜 마키야또", "카푸치노"],
      datasets: [
        {
          label: "Population (millions)",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
          data: [2478,5267,734,784,433]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: '3개월간 가장  많이 팔린 상품 BEST 5'
      }
    }
});
</script>
</body>
</html>