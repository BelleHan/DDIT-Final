<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${!empty loginEmp }">
	<script>
		location.href="<%=request.getContextPath()%>/hq/index.do";
	</script>
</c:if>
<c:if test="${empty loginEmp }">
	<jsp:forward page="/WEB-INF/views/common/loginFormHq.jsp"/>
</c:if>

