<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<style>
.page-item.active .page-link{
	background-color : #494949;
	border-color: #494949;
}
.page-link {
	color : #494949;
}
</style>
   	
<form id="jobForm">
	<input type="hidden" name="page" value="" />
	<input type="hidden" name="fms_local" value="" />
	<input type="hidden" name="fms_logis" value="" />
	<input type="hidden" name="fms_laca" value="" />
	<input type="hidden" name="fms_smca" value="" />
	<input type="hidden" name="fms_goods" value="" />
</form>

<!-- pagenation -->
<nav class="pagination-nav" aria-label="Navigation">
	<ul class="pagination justify-content-center m-0">
		<li class="page-item">
			<a class="page-link" href="javascript:searchGoStockF(1);">
				<i class="fas fa-angle-double-left"></i>
			</a>
		</li>
		<li class="page-item">
			<a class="page-link" href="javascript:searchGoStockF('${pageMaker.prev ? pageMaker.startPage-1 : cri.page }');">
				<i class="fas fa-angle-left"></i>
			</a>
		</li>
		<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
			<li class="page-item ${pageMaker.cri.page == pageNum ? 'active' : '' }">
				<a class="page-link" href="javascript:searchGoStockF('${pageNum }');" >
				${pageNum }
				</a>
			</li>
		</c:forEach>
		<li class="page-item">
			<a class="page-link" href="javascript:searchGoStockF('${pageMaker.next ? pageMaker.endPage+1 : cri.page }');">
				<i class="fas fa-angle-right"></i>
			</a>
		</li>
		<li class="page-item">
			<a class="page-link" href="javascript:searchGoStockF('${pageMaker.realEndPage }');">
				<i class="fas fa-angle-double-right"></i>
			</a>
		</li>
	</ul>
</nav>
    			
 			