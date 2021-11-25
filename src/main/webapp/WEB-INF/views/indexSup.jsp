<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${!empty loginSup }">
	<script>
		location.href="<%=request.getContextPath()%>/sup/index.do";
	</script>
</c:if>
<c:if test="${empty loginSup }">
	<jsp:forward page="/WEB-INF/views/common/loginFormSup.jsp"/>
</c:if>