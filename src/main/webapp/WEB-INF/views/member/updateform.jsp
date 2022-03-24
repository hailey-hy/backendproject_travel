<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/nav.jsp" />
<h1>회원정보수정</h1>
<form action="updateresult" method="post">
	<!-- jsp가 전달받은 parameter값으로 고정!  -->
	아이디: <input type="text" name="id" value="${param.id }" readonly="readonly"><br>
	암호: <input type="password" name="password"><br>
	폰번호: <input type="text" name="phone"><br>
<input type="submit" value="회원정보수정">
</form>
</body>
</html>