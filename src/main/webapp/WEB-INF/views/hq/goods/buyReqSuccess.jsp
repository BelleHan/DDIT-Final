<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<body>
<script>
	alert("구매요청에 성공했습니다.\n 물품 페이지로 이동합니다.");
	
	window.onload=function(){
		$.ajax({
			url:"<%=request.getContextPath()%>/hq/goods/buy.do",
			type:"get",
			success:function(menu){
				window.opener.location.reload();	
				window.close();				
			}
		});		
	}
</script>

</body>