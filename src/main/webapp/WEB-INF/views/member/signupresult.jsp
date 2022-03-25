<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	})
</script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<%=request.getContextPath() %>/resources/css/result.css" rel="stylesheet"/>
<title>전국이내손안에 - 회원가입</title>
</head>
<body>
<jsp:include page="../include/nav.jsp" />
<div class="result-container">
<div class="result-text">
<c:if test="${result == 1}">
	<p><%=request.getParameter("id") %>님, <br> 정상적으로 회원가입이 완료되었습니다.</p>
</c:if>
</div>
</div>
<center>
	<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
	</center>
</body>
</html>