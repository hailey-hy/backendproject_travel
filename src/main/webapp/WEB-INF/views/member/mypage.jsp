<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage.css">
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<title>전국이내손안에 - 마이페이지</title>
</head>

<body>
    <header>
        <jsp:include page="../include/nav.jsp" />
    </header>

    <section class="myTabs">
        <div class="container">
            <div id="myTab-1" class="myTab-item myTab-border">
                <p class="hide-sm">비밀번호 수정</p>
            </div>
            <div id="myTab-2" class="myTab-item ">
                <p class="hide-sm">찜해둔 목록</p>
            </div>
            <div id="myTab-3" class="myTab-item ">
                <p class="hide-sm">예약 / 결제 목록</p>
            </div>
        </div>
    </section>

    <section class="myTab-content">
        <div class="container">
            <div id="myTab-1-content" class="myTab-content-item show">
                <div class="myTab-1-content-inner">
                    <div>
                        <center>
                        <h2>비밀번호 수정</h2>
                        <input type="id" class="id" placeholder="아이디" id="id" style="width:600px;height:80px;font-size:30px;"/><br><br>
                        <input type="password" class="password" placeholder="비밀번호" id="pwd" style="width:600px;height:80px;font-size:30px;"/><br><br>
                        <input type="password" class="confirmpwd" placeholder="비밀번호 확인" id="confirmpwd" style="width:600px;height:80px;font-size:30px;"/><br><br>
                        <button class="loginBtn" id="loginBtn" style="width:200px">저장</button>
                        </center>
                    </div>
                </div>
            </div>

            <div id="myTab-2-content" class="myTab-content-item">
                <div class="myTab-2-content-top">
                    <div>
                        <p class="text-lg">
                            
                        </p>
                    </div>
                </div>
            </div>

            <div id="myTab-3-content" class="myTab-content-item">
                <div class="myTab-2-content-top">
                    <div>
                        <p class="text-lg">
                            
                        </p>
                    </div>
                </div>
            </div>
    </section>

    <script src="js/mypage.js"></script>
    <script src="js/changeInfo.js"></script>
    <footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
</body>
</html>