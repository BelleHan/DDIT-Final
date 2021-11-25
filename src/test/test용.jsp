<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function searchGo(){
	fms_local = $('#fms-local').val();
	fms_fran = $('#fms-fran').val();
	fms_laca = $('#fms-laca').val();
	fms_smca = $('#fms-smca').val();
	fms_goods = $('#fms-goods').val();
	
	
	if(!page) page = 1;
	
	data = {"fms_local": fms_local, "fms_fran": fms_fran, "fms_laca": fms_laca, "fms_smca": fms_smca, "fms_goods": fms_goods, "page" : page}
    console.log(data)
	$.ajax({
		url:'searchfran.do'
		, method : 'post'
		, data : JSON.stringify(data)
		, contentType : 'application/json; charset=UTF-8'
		, dataType : 'json'
		, success : function(dataMap) {
			printData(dataMap.franList, '.franstocklist','#franstock-list-template', '.fran-stock')
		}
	})
}
</script>
<script type="text/x-handlerbars-template" id="franstock-list-template">
	{{#each .}}  
			<tr class="fran-stock" style="cursor: pointer;">
									<td>${@{{key}}</td>
									<td>${{fran_local_num }}</td>
									<td>${{fran_code }}</td>
									<td>${{fran_name }}</td>
									<td>${{sup_goods_laca }}</td>
									<td>${{sup_goods_smca }}</td>
									<td>${{sup_goods_name }}</td>
									<td>${{hq_goods_code }}</td>
									<td>${{fran_goods_stock }}</td>
									<td>${{fran_safe_stock }}</td>
									<td>${{fran_suit_stock }}</td>
									<td>${{goods_delivery_price }}</td>
									<td>${{goods_retail_price }}</td>
									<td>${{goods_max_order }}</td>
								</tr>
	{{/each}}
</script>
</body>
</html>