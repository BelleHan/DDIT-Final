<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

   	
<form id="jobFormFran">
	<input type="hidden" name="page" value="" />
	<input type="hidden" name="perPageNum" value="" />
	<input type="hidden" name="searchType" value="" />
	<input type="hidden" name="keyword" value="" />
</form>

<!-- pagenation -->
	<nav aria-label="Navigation">
		<ul class="pagination justify-content-center m-0">
			<li class="page-item">
				<a class="page-link" href="javascript:list_go(1);">
					<i class="fas fa-angle-double-left"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go('${pageMaker1.prev ? pageMaker1.startPage-1 : cri1.page }');">
					<i class="fas fa-angle-left"></i>
				</a>
			</li>
			<c:forEach var="pageNum" begin="${pageMaker1.startPage }" end="${pageMaker1.endPage }" >
				<li class="page-item ${pageMaker1.cri.page == pageNum ? 'active' : '' }">
					<a class="page-link" href="javascript:list_go('${pageNum }');" >
					${pageNum }
					</a>
				</li>
			</c:forEach>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go('${pageMaker1.next ? pageMaker1.endPage+1 : cri1.page }');">
					<i class="fas fa-angle-right"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go('${pageMaker1.realEndPage }');">
					<i class="fas fa-angle-double-right"></i>
				</a>
			</li>
		</ul>
	</nav>