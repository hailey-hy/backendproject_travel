<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">&nbsp;&nbsp;<img src="<%=request.getContextPath() %>/resources/img/logo.png" width="50px" height="50px">&nbsp;&nbsp;전국이내손안에</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="/">HOME</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="activities">여행지 티켓</a>
            </li>
          </ul>
        </div>
        <ul class="navbar-nav justify-content-end">
        <%
	        if(session.getAttribute("sessionID") == null) // 로그인이 안되었을 때
	        { 
    	%>
	        <li class="nav-item">
	              <a class="nav-link" href="login">로그인</a>
	            </li>
	        <li class="nav-item">
	              <a class="nav-link" href="signup">회원가입</a>
	        </li>
	        <li class="nav-item">
	              <a class="nav-link" href="mypage">마이페이지</a>
	        </li>
	    <%
	        }
	        else // 로그인 했을 경우
	        {
    	%>
    		<li class="nav-item">
	              <a class="nav-link" href="login.jsp">로그아웃</a>
	            </li>
	        <li class="nav-item">
	              <a class="nav-link" href="mypage">마이페이지</a>
	        </li>
    	<%    } %>
        </ul>
      </nav>
</body>
</html>