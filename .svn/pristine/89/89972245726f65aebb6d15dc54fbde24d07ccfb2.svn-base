<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 부트스트랩 4.x를 사용한다. -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>
<style>
/* 리스트 css */
.column{
border: 1px solid #cecece;
padding-top: 10px;
padding-bottom: 10px;
}
.container-fluid{
margin-top: 20px;
}
.container-fluid .card{
margin-left:auto;
margin-right:auto;
}
/* 이동 타켓 */
.card-placeholder {
border: 1px dotted black;
margin: 0 1em 1em 0;
height: 50px;
margin-left:auto;
margin-right:auto;
/* 노란색으로 표신되는 것이 주요 포인트 */
background-color: yellow;
}
/* 마우스 포인터을 손가락으로 변경 */
.card:not(.no-move) .card-header{
cursor: pointer;
}
</style>
<body>
<div class="container-fluid">
<div class="row">
<!-- 세로 리스트 박스 -->
<div class="col-4 column">
<!-- 각 카드 리스트 박스 -->
	<div class="card text-white bg-primary mb-3 no-move">
	<div class="card-header">Header</div>
	<div class="card-body">
	<h5 class="card-title">card 1</h5>
	<p class="card-text">no-move</p>
	</div>
</div>
<!-- 각 카드 리스트 박스 -->
	<div class="card text-white bg-secondary mb-3">
	<div class="card-header">Header</div>
	<div class="card-body">
	<h5 class="card-title">card 2</h5>
	<p class="card-text">card 2</p>
	</div>
	</div>
</div>


<!-- 세로 리스트 박스 -->
<div class="col-4 column">
<div class="card text-white bg-success mb-3 no-move">
<div class="card-header">Header</div>
<div class="card-body">
<h5 class="card-title">card 3</h5>
<p class="card-text">no-move</p>
</div>
</div>
</div>
<!-- 세로 리스트 박스 -->
<div class="col-4 column">
<!-- 각 카드 리스트 박스 -->
<div class="card text-white bg-danger mb-3 no-move">
<div class="card-header">Header</div>
<div class="card-body">
<h5 class="card-title">card 4</h5>
<p class="card-text">no-move</p>
</div>
</div>
<!-- 각 카드 리스트 박스 -->
<div class="card text-white bg-warning mb-3">
<div class="card-header">Header</div>
<div class="card-body">
<h5 class="card-title">card 5</h5>
<p class="card-text">card 5</p>
</div>
</div>
<!-- 각 카드 리스트 박스 -->
<div class="card text-white bg-info mb-3">
<div class="card-header">Header</div>
<div class="card-body">
<h5 class="card-title">card 6</h5>
<p class="card-text">card 6</p>
</div>
</div>
<!-- 각 카드 리스트 박스 -->
<div class="card bg-light mb-3">
<div class="card-header">Header</div>
<div class="card-body">
<h5 class="card-title">card 7</h5>
<p class="card-text">card 7</p>
</div>
</div>
<!-- 각 카드 리스트 박스 -->
<div class="card text-white bg-dark mb-3">
<div class="card-header">Header</div>
<div class="card-body">
<h5 class="card-title">card 8</h5>
<p class="card-text">card 8</p>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- 부트스트랩 4.x를 사용한다. -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script>
$(function() {
$(".column").sortable({
// 드래그 앤 드롭 단위 css 선택자
connectWith: ".column",
// 움직이는 css 선택자
handle: ".card-header",
// 움직이지 못하는 css 선택자
cancel: ".no-move",
// 이동하려는 location에 추가 되는 클래스
placeholder: "card-placeholder"
});
// 해당 클래스 하위의 텍스트 드래그를 막는다.
$( ".column .card" ).disableSelection();
});
</script>
</body>
</html>


