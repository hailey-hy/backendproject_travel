<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" />
<title>전국이내손안에 - 회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/resources/css/login.css" rel="stylesheet"/>
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
</head>

<body>

  <jsp:include page="../include/nav.jsp" />

  <div class="main-container">
    <header class="logo">
      <div>
        <br><br>환영합니다!
      </div>
      <br><br>
    </header>
   <contant class="login-container">
     <form action="signup" method="post" >
     <center>
	<input type=text class="id" name="id" placeholder="아이디">
	<input type="password" class="password" name="password" placeholder="비밀번호">
	<input type="text" class="name" name="name" placeholder="이름">
	<input type="text" class="phone"  name="phone" placeholder="휴대폰 번호">
	<input type="text" class="email"  name="email" placeholder="이메일">
	<input type="submit" class="loginBtn" value="회원가입">
	</center>
</form>
    </contant>
      </div>
  <script src="js/login.js"></script>
  <center>
<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
</center>
</body>

</html>