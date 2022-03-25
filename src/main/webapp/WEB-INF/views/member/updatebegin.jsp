<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<%=request.getContextPath() %>/resources/css/login.css" rel="stylesheet"/>
<title>전국이내손안에 - 회원정보수정</title>
</head>
<body>
<%-- <jsp:include page="../include/nav.jsp"/>
<h1>회원정보수정</h1>
<form action="update">
	<!-- jsp가 전달받은 parameter값으로 고정!  -->
	아이디: <input type="text" name="id" ><br>
<input type="submit" value="회원정보수정 하러가기"> --%>
<jsp:include page="../include/nav.jsp" />

<div class="main-container">
    <header class="logo">
    <div>
        <br><br>회원정보수정
    </div>
    <br><br>
    </header>
    <form action="update">
    <contant class="login-container">
    <center>
    <input type="text" class="id" placeholder="아이디" id="id" name="id"/>
    <input type="submit" value="회원정보수정 하러가기">
    </center>
    </contant>
    </form>
  </div>
<center>
    <footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
    </center>
</body>
</html>