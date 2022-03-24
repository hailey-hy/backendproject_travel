<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 여행지티켓</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link href="<%=request.getContextPath() %>/resources/css/purchaseMenu.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/setMinDate.js"></script>
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/btnFunction.js"></script>
<script type="text/javascript">
/* submit 로그인 확인 */
 function checkForm(){
	var uid = '<%=(String)session.getAttribute("id")%>';
	if(uid=="null"){
		alert("로그인이 필요합니다.")
		return false
	}
	return true
}
   
</script>
<script>
	$(document).ready(function() {
		
		
		/* $('form').on('submit', function() {
			let activities_ccdo = [
				{ name: "아산 퍼스트빌리지 공룡월드", price: 7000 },
				{ name: "예산 스플라스 리솜 워터파크", price: 16200 }
			];
		
			let names = activities_ccdo.map( (item) => item.name);
			let prices = activities_ccdo.map( (item) => item.price);

			var radioVal = $('input[name="option"]:checked').val();
			var personNum = $('input[id="textbox"]').val();
			var date = $('input[type="date"]').val();
			var name; 
		 	var price; 
		 	var totalPrice;
		 	
			for(i in names){
				if(radioVal == names[i]){
					name = names[i]; 
					price = prices[i];
				}				
			}
			totalPrice = personNum * price; 
			confirm(
`고객님, 예매하실 정보를 확인해주세요.
여행지 티켓: ${name}
선택하신 날짜: ${date} 
총 인원 수: ${personNum}명 
총 결제 금액: ${totalPrice}원`);
		}) // submit end */
		
}) // ready end
</script>
</head>
<body>
	<jsp:include page="../include/nav.jsp" />
	<header class="title">
		<br>
		<br>
		<h1>여행지 티켓 예매</h1>
		<br>
		<hr>
	</header>
	<br>
	<!-- <div id="selectParent">&nbsp; 
		<input id="ggdo" class="tab-item" type="button" value="경기도">&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도">&nbsp;
		<input id="ccdo" class="tab-item tab-background" type="button" value="충청도">&nbsp;
		<input id="jldo" class="tab-item" type="button" value="전라도">&nbsp;
		<input id="gsdo" class="tab-item" type="button" value="경상도">&nbsp;
		<input id="jjdo" class="tab-item" type="button" value="제주도">&nbsp;
	</div> -->
	<div class="main-container">
		<div class="main-item-1">
			<aside class="aside">
				<jsp:include page="activities_sidebar.jsp"/>
			</aside>
		</div>
	<div class="main-item-2">
	<form action="purchase" method="get" class="reserveInput" onsubmit="return checkForm()">
		<table class="tbl">
			<tr><td><h4>원하시는 <strong>여행지 티켓</strong>을 선택하여 주세요.</h4></td></tr>
		<c:if test="${!empty param.location}">
		<c:forEach items="${activityLocationList}" var="dto">
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/${dto.image}"></td>
				<td id="dinoEx" class="explanation">
					<h4>${dto.product}</h4>
					<hr>
					주소: ${dto.address}<br>
					운영 시간: ${dto.hours}<br>
					전화: ${dto.tel}<br>
					가격: ${dto.price}원<br><br>
					<ul>
						<li>${dto.memo}</li>
					</ul>
				</td>
			</tr>
			</c:forEach>
			</c:if>
				<%-- <td>&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <td><h3><input type="radio" name="option" value="아산 퍼스트빌리지 공룡월드" required /> 공룡월드</h3></td> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_ccdo1_date" type="date" min="{new Date().toISOString().split('T')[0]}" required><br><br><br>
					<input id="activities_ccdo1" class="btn-blue" type="button" name="option" value="예매하기" required />					
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/waterParkEx_ccdo.jpg"></td>
				<td id="waterParkEx" class="explanation">
					<h4>스플라스 리솜 워터파크</h4>
					<hr>
					주소: 충청남도 예산군 덕산면 온천단지 3로 45-7<br>
					운영 시간: 09:00~18:00 <br>
					전화: 041-330-8064<br>
					가격: 16,200원 (기존가 33,000원)<br><br>
					<ul>
						<li>600년의 역사를 지닌 덕산온천수를 마음껏 즐겨보세요!</li>
						<li>49도의 보양온천 덕산온천수가 공급되어<br> 
						사계절 내내 스파와 물놀이 즐기 수 있답니다!</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<!-- <td><input type="radio" name="option" value="예산 스플라스 리솜 워터파크" required/></td> -->
				<td>
					<!-- <input id="activities_ccdo2" type="button" name="reserve" value="예매하기" required /> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_ccdo2_date" type="date" required><br><br><br>
					<input id="activities_ccdo2" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
				<!-- <td>	
					<div id="float-container">
						<div>
						   	<label for="textbox">총 인원 수</label><br>
						    <input type="number" id="count" placeholder="인원수를 입력하세요." pattern=[0-9]{1-1000} required/><br><br>
						</div>
						<div>
							<label for="textbox">예약 날짜</label><br>
						    <input id="date" type="date" required>
						</div><br><br>
						<div>
						    <input type="submit" id="btn_reservation" class="btn-blue" value="예매하기"/>
						</div>
					</div>
				</td> -->
			</tr> --%>
		
		</table>
	
	</div>
	<div class="main-item-3">
	<!-- <input id="activities_ccdo2" type="button" name="reserve" value="예매하기" required /> -->
					<form action="purchase" onsubmit="return checkForm()">
					<div class="item">
					<label>티켓명</label><br>
						<select name="product">
							<option value="강촌 ATV 카트"> 강촌 ATV 카트</option>
							<option value="대관령 아기동물 체험장"> 대관령 아기동물 체험장</option>
							<option value="버드파크"> 버드파크</option>
							<option value="아침 고요 수목원"> 아침 고요 수목원</option>
							<option value="캐니언파크 실내 동물원 테마파크"> 캐니언파크 실내 동물원 테마파크</option>
							<option value="경주월드 자유이용권"> 경주월드 자유이용권</option>
							<option value="대구 아쿠아리움"> 대구 아쿠아리움</option>
							<option value="에덴 밸리 눈썰매 & 빙어 체험장">에덴 밸리 눈썰매 & 빙어 체험장</option>
							<option value="명량 케이블카 & 땅끝 해양 자연사 박물관">명량 케이블카 & 땅끝 해양 자연사 박물관</option>
							<option value="쥬키아이스파크 입장권">쥬키아이스파크 입장권</option>
							<option value="감귤 박물관">감귤 박물관</option>
							<option value="제주 바다 체험장">제주 바다 체험장</option>
							<option value="허브 동산">허브 동산</option>
							<option value="스플라스 리솜 워터파크">스플라스 리솜 워터파크</option>
							<option value="스퍼스트빌리지 공룡월드">스퍼스트빌리지 공룡월드</option>
						</select>
						<%-- <c:if test="${product=}">
						<c:forEach items="${activityLocationList}" var="dto">
						</c:forEach>
						</c:if> --%>
					</div>
					<div class="item">
						<label>총 인원 수</label><br>
						<input name="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					</div>
					<div class="item">
					<label>예약 날짜</label><br>
						<!-- <input name="date" type="text"> -->
						<input type="date" name="date"  class="date" id="activities_date" required><br><br><br>
						<input id="activities_submit" class="btn-blue" type="submit" value="예매하기" required />	
					</div>
					</form>
					
	</div>
	</div>
	<br>
	<br>
	<br>
	<center>
	<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
	</center>
</body>
</html>