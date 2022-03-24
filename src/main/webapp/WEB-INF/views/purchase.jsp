<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/PurchaseStyleCommon.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
    <style>
    .footer-cols {
   	margin-top: 10rem;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 2rem;
}
    </style>
    <title>전국이내손안에 - 구매하기</title>
</head>
<body>
 	<!-- 내비게이션 바 -->
    <jsp:include page="include/nav.jsp" />
 
    <section class="title">
        <h2>구매하기</h2>
    </section>
    
	<%-- <h1> ${param.product}</h1>
	<h1> ${param.eventDate}</h1>
	<h1> ${param.count}</h1>
	<h1> ${result}</h1>
	<h1> <script>getPrice(${param.product});</script> </h1> --%>
    <section class="title-item">
    <c:if test="${!empty paramValues}">
    	<h2 id="item-name-1">티켓명: ${purchaseDTO.product}</h2>
    	<h2 id="item-name-2">티켓 매수: ${purchaseDTO.count}</h2>
    	<h2 id="item-name-3">예약 날짜: <%= request.getParameter("date")%></h2>
    </c:if>
        <h2 id="item-price">결제 금액: 30000원</h2>
    </section>

    <section class="select">
        <h3>결제 방식 선택</h3>
        <div class="select-option">
            <div class="div-option">신용/체크카드</div>
            <div class="div-option">실시간 계좌 이체</div>
            <div class="div-option">무통장 입금</div>
            <div class="div-option">휴대폰</div>
        </div>
        <button class="btn-final">결제하기</button>
    </section>
    


    <script src="<%=request.getContextPath() %>/resources//js/mainPurchase.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <center>
    <footer class="footer"><jsp:include page="include/footer.jsp" /></footer>
    </center>
</body>
</html>