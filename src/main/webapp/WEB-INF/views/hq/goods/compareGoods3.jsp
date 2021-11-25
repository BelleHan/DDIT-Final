<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:forEach items = "${Math.round(sampleList.size()) / 2.0 }"></c:forEach>
         <div class="row">
            <div class="col-sm-12">
               <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
	<c:forEach items="${sampleList}" var="goods"  varStatus="status">
                      <thead>
                         <tr role="row">
                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="2">선택</th>
                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"></th>
                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"></th>
                         </tr>
                      </thead>
                         <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" rowspan="3">기본정보</td>
                              <td>업체명</td>
                               <c:choose>
       							 <c:when test="${goods.key % 2 == 0}">
       								 <td> ${goods.value.sup_goods_code}</td>
       							 </c:when>
       							 <c:otherwise>
       								 <td> ${goods.value.sup_goods_code}</td>
       							 </c:otherwise>
       							 </c:choose>
                            </tr>
                         </tbody>
        </c:forEach>
                    </table>
                </div>
             </div>

      
          
<script>
   //단가*수량 계산
   function calcprice(count,price){
      var num = $('#buy_quan'+count).val().trim();
      var totalprice = $('#buyTotalPrice'+count);
      
      if(num)   totalprice.text(num * price); 
   }


</script>      
</body>
</html>