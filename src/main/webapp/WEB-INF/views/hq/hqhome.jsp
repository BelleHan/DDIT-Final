<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FMS</title>
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
#datediv{
	display: inline-block;
	text-align: center;
}

</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> <!-- 차트 링크 --> 

 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>



</head>
<body>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 686px;">
    <!-- Main content -->
	
	<div class="col-md-2 divbox">
            <div class="card card-danger">
              <div class="card-header" style="background-color: #343A40; height: 50px;">
                <h3 class="card-title" style="text-align: center; color: white; font-size: 20px;">가맹점 계약</h3>
              </div>
              <div class="card-body">
                <ul class="li">
                	<li><span style="text-decoration: underline; margin-left: 60px; font-weight: bold;">5</span></li>
                	<li style="margin-left: 10px">건</li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
	<div class="col-md-2 divbox">
            <div class="card card-danger">
              <div class="card-header" style="background-color: #343A40; height: 50px;">
                <h3 class="card-title" style="text-align: center; color: white; font-size: 20px;">공급업체 신청</h3>
              </div>
              <div class="card-body">
                <ul class="li">
                	<li><span style="text-decoration: underline; margin-left: 60px; font-weight: bold;">5</span></li>
                	<li style="margin-left: 10px">건</li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
	<div class="col-md-2 divbox">
            <div class="card card-danger">
              <div class="card-header" style="background-color: #343A40; height: 50px;">
                <h3 class="card-title" style="text-align: center; color: white; font-size: 20px;">공급업체 계약</h3>
              </div>
              <div class="card-body">
                <ul class="li">
                	<li><span style="text-decoration: underline; margin-left: 60px; font-weight: bold;">5</span></li>
                	<li style="margin-left: 10px">건</li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
	<div class="col-md-2 divbox">
            <div class="card card-danger">
              <div class="card-header" style="background-color: #343A40; height: 50px;">
                <h3 class="card-title" style="text-align: center; color: white; font-size: 20px;">발주신청</h3>
              </div>
              <div class="card-body">
                <ul class="li">
                	<li><span style="text-decoration: underline; margin-left: 60px; font-weight: bold;">5</span></li>
                	<li style="margin-left: 10px">건</li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
	<div class="col-md-2 divbox">
            <div class="card card-danger">
              <div class="card-header" style="background-color: #343A40; height: 50px;">
                <h3 class="card-title" style="text-align: center; color: white; font-size: 20px;">반품신청</h3>
              </div>
              <div class="card-body">
                <ul class="li">
                	<li><span style="text-decoration: underline; margin-left: 60px; font-weight: bold;">5</span></li>
                	<li style="margin-left: 10px">건</li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
	<div class="col-md-2 divbox">
            <div class="card card-danger">
              <div class="card-header" style="background-color: #343A40; height: 50px;">
                <h3 class="card-title" style="text-align: center; color: white; font-size: 20px;">미수금</h3>
              </div>
              <div class="card-body">
                <ul class="li">
                	<li><span style="text-decoration: underline; margin-left: 60px; font-weight: bold;">5</span></li>
                	<li style="margin-left: 10px">건</li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
<!--     <form style="margin-left: 20px;">
		<input type="date" style="margin-top: 20px;">
		<button style="background: #0285f7; border-radius: 5px; border: none;">조회</button>
	<button type="button" class="btn btn-block btn-primary" style="width: 60px; height: 30px; font-size: 15px; position: relative;" >조회</button>
	</form> -->
	<!-- graph -->
	<div class="container">
  <div class="row my-3"> 
  	<div>
  		<h5 style="margin-left: 200px;"></h5>
  	</div>
   </div>
<div class="row my-2">
<div class="col-md-6"> 
	<div class="card"> 
		<div class="card-body">
			<div style="width: 540px; position: relative; top: 10px;">		
				<canvas id="bar-chart" width="50px;" height="30px;"></canvas>
				<div style="position: relative; left: 650px; bottom: 310px;"><canvas id="bar-chart-grouped" width="800" height="450"></canvas></div>
				<div style="position: relative; bottom: 280px;"><canvas id="pie-chart" width="800" height="450"></canvas></div>
				<div style="position: relative; bottom: 580px;  left: 600px;"><canvas id="bar-chart-horizontal" width="800" height="450"></canvas></div>
			</div>
		</div> 
	</div>
</div>



	
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<!-- jQuery -->


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