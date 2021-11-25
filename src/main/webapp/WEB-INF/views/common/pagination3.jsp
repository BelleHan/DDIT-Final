<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

   	
<form id="jobFormSup">
	<input type="hidden" name="page" value="" />
	<input type="hidden" name="perPageNum" value="" />
	<input type="hidden" name="searchType" value="" />
	<input type="hidden" name="keyword" value="" />
</form>

<!-- pagenation -->
	<nav aria-label="Navigation">
		<ul class="pagination justify-content-center m-0">
			<li class="page-item">
				<a class="page-link" href="javascript:list_go_sup(1);">
					<i class="fas fa-angle-double-left"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go_sup('${pageMaker3.prev ? pageMaker3.startPage-1 : cri3.page }');">
					<i class="fas fa-angle-left"></i>
				</a>
			</li>
			<c:forEach var="pageNum" begin="${pageMaker3.startPage }" end="${pageMaker3.endPage }" >
				<li class="page-item ${pageMaker3.cri.page == pageNum ? 'active' : '' }">
					<a class="page-link" href="javascript:list_go_sup('${pageNum }');" >
					${pageNum }
					</a>
				</li>
			</c:forEach>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go_sup('${pageMaker3.next ? pageMaker3.endPage+1 : cri3.page }');">
					<i class="fas fa-angle-right"></i>
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="javascript:list_go_sup('${pageMaker3.realEndPage }');">
					<i class="fas fa-angle-double-right"></i>
				</a>
			</li>
		</ul>
	</nav>