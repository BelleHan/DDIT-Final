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
<div class="modal fade" id="modal-fran" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">가맹점</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			</div>
			<div class="modal-body">
				<table class="table table-bordered fran-list" id="modal-fms-local">
				<tr>
						<th>코드</th>
						<th>가맹점명</th>
						<th>대표</th>
						<th>주소</th>
				</tr>
				</table>
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>
<!-- 모달 끝 -->
<div class="input-group input-padding-bottom col-sm-6">
	<span class=" search-group col-sm-4">가맹점</span>
	<div class="input-group input-group-sm col-sm-7">
		<input type="text" id="fms-fran" name="fms-fran" class="form-control form-fms-search" value="" >
		<span class="input-group-append">
			<button type="button" id="btn-fran" class="btn bg-gradient-secondary btn-flat btn-fms-search"><i class="fas fa-caret-down"></i></button>
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
<script type="text/x-handlerbars-template" id="fran-list-template">
	{{#each .}}  
			<tr class="fran" id="fran{{@key}}" onclick="javascript:franKey('{{fran_name}}');">
				<td>{{fran_code}}</td>
				<td>{{fran_name}}</td>
				<td>{{fran_owner}}</td>
				<td>{{fran_addr}} {{fran_detail_addr}}</td>
			</tr>
	{{/each}}
</script>
<script>
	//fran modal
	$('#btn-fran').on('click', function(){
		$.ajax({
			url:'<%=request.getContextPath()%>/keyword/fran.do',
			type:'get',
			success:function(goodsList){
				printData(goodsList, $('.fran-list'), $('#fran-list-template'), $('.fran'))
			},
			error:function(error){
				// alert('데이터를 불러오는데 실패했습니다.');
			},
			complete:function(){
				$('#modal-fran').modal('show');
			}
		})
	});
	
	// 가맹점을 선택하면 해당 값이 키워드로
	function franKey(data){
		document.querySelector('#fms-fran').value = data;
		$('#modal-fran').modal('hide');
	}

	//데이터 검색시 readonly
	var btntest = document.querySelector('button#btn-fran');
	btntest.addEventListener('click', function(){
		$('input#fms-fran').attr('readonly', true);
	})
	//데이터 검색 readonly 끝
</script>
</body>
</html>