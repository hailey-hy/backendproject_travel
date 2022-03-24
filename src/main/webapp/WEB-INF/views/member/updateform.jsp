<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<%=request.getContextPath() %>/resources/css/login.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/nav.jsp" />

<div class="main-container">
<center>
<h1>회원정보수정</h1>
</center>
<form action="updateresult" method="post">
<contant class="login-container">
    <center>

	<!-- jsp가 전달받은 parameter값으로 고정!  -->
	<input type="text" name="id" value="${param.id }" placeholder="아이디" readonly="readonly"><br>
	<input type="password" name="password" placeholder="비밀번호"><br>
	<input type="text" name="phone" placeholder="휴대폰번호"><br>
<input type="submit" value="회원정보수정">
</center>
</contant>
</form>
</div>
<center>
    <footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
    </center>
</body>
</html>