<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
              <a class="nav-link" href="/travel/">HOME</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="/travel/activities/main">여행지 티켓</a>
            </li>
          </ul>
        </div>
        <ul class="navbar-nav justify-content-end">
        
    	<%
		if(session.getAttribute("id") == null) // 로그인이 안되었을 때
{
			%>
	        <li class="nav-item">
	              <a class="nav-link" href="/travel/login">로그인</a>
	            </li>
	        <li class="nav-item">
	              <a class="nav-link" href="/travel/signup">회원가입</a>
	        </li>
	    <%
			}
			else // 로그인 했을 경우
			{
			%>
	    
    	
    		<li class="nav-item">
	              <a class="nav-link" href="/travel/login">로그아웃</a>
	            </li>
	        <li class="nav-item">
	              <a class="nav-link" href="/travel/updatebegin">회원정보수정</a>
	        </li>
    	
    	<% } %>
        </ul>
      </nav>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>