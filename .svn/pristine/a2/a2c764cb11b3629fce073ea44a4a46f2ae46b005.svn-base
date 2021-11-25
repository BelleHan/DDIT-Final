<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>keyword</title>
</head>
<body>
<!-- 모달 영역 -->
<div class="modal fade" id="modal-logis" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">물류센터</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			</div>
			<div class="modal-body table-responsive p-0">
				<table class="table table-hover" id="modal-fms-logis">
					<thead>
						<tr>
								<th>코드</th>
								<th>물류센터명</th>
								<th>대표</th>
								<th>주소</th>
						</tr>
					</thead>
					<tbody class="logis-list">
					<!-- modal이 뿌려질 영역 -->
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->
<div class="input-group input-group-sm col-sm-3">
	<span class=" search-group col-sm-4">물류센터</span>
	<div class="input-group col-sm-7">
		<input type="text" id="fms-logis" name="fms-logis" class="form-control form-fms-search" value="" >
		<span class="input-group-append">
			<button type="button" id="btn-logis" class="btn btn-primary btn-flat btn-fms-search"><i class="fas fa-search"></i></button>
		</span>
	</div>
</div>

<script>
//dataArr - 받아오는 데이터, target - 데이터를 받을 대상, templateObject - handlerbars에 컴파일할 대상, removeClass - 메뉴를 뿌리고 기존 메뉴를 지운다. 
function printData(dataArr, target, templateObject, removeClass){
	var template = Handlebars.compile(templateObject.html());
	var html = template(dataArr);
	$(removeClass).remove();
	target.append(html);
}
</script>
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- handlerbars-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlerbars-template" id="logis-list-template">
	{{#each .}}  
			<tr class="logis" id="logis{{@key}}" onclick="javascript:logisKey('{{logis_name}}');">
				<td>{{logis_code}}</td>
				<td>{{logis_name}}</td>
				<td>{{logis_owner}}</td>
				<td>{{logis_addr}} {{logis_detail_addr}}</td>
			</tr>
	{{/each}}
</script>
<script>
	//logis modal
	$('#btn-logis').on('click', function(){
		$.ajax({
			url:'<%=request.getContextPath()%>/keyword/logis.do',
			type:'get',
			success:function(logisList){
				printData(logisList, $('.logis-list'), $('#logis-list-template'), $('.logis'))
			},
			error:function(error){
				// alert('데이터를 불러오는데 실패했습니다.');
			},
			complete:function(){
				$('#modal-logis').modal('show');
			}
		})
	});
	
	// 물품을 선택하면 해당 값이 키워드로
	function logisKey(data){
		document.querySelector('#fms-logis').value = data;
		$('#modal-logis').modal('hide');
	}

	//데이터 검색시 readonly
	var btntest = document.querySelector('button#btn-logis');
	btntest.addEventListener('click', function(){
		$('input#fms-logis').attr('readonly', true);
	})
	//데이터 검색 readonly 끝
</script>
</body>
</html>