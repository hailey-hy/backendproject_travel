<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 여행지티켓</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/resources/css/activities_main.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/btnFunction.js"></script>
<style>
.photo{
display: none;
width: 800px;
height: 600px;
}
.photo:first-child {
	display: block;
}
#photoParent{
width: 850px;
margin: auto;
} 
</style>
<script>
	var index = 0; 
	$(document).ready(function(){
		
		setInterval(() => {
			slideShow();
		}, 1000);
		
		function slideShow(){
			const photo = document.getElementsByClassName("photo");
			for (let i = 0; i < photo.length; i++){
				photo[i].style.display = "none";
			}
			index++; 
			if(index > photo.length){
				index = 1; 
			}
			photo[index-1].style.display = "block";
		}
	}); // ready end
</script>
</head>
<body>
	<jsp:include page="../include/nav.jsp" />
	<header class="title">
		<br>
		<br>
		<!-- <img id="logo" alt="웹사이트 로고" src="logo.jpg"> -->
		<h1>여행지 티켓 예매</h1>
		<br>
		<hr>
	</header>
	<br>
	<!-- <div id="selectParent">
		&nbsp; <input id="ggdo" class="tab-item" type="button" value="경기도">&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도">&nbsp;
		<input id="jldo" class="tab-item" type="button" value="전라도">&nbsp;
		<input id="gsdo" class="tab-item" type="button" value="경상도">&nbsp;
		<input id="jjdo" class="tab-item" type="button" value="제주도">&nbsp;
	</div> -->
	<div class="main-container">
		<div class="main-item-1">
			<aside class="aside">
					<jsp:include page="activities_sidebar.jsp"/>
				</aside>
			<br>
		</div>
		<div class="main-item">
			<table id="mainPara">
				<tr>
					<td>
						<h3 id="mainParaTitle">여행 계획 세우시기 막막하시죠?</h3><br>
						<p class="para">여행 전에 미리 방문하실 여행지 
						<br>체험장/ 이벤트/ 박물관/ 놀이공원 티켓 준비하시어
						<br>즐겁고 꽉찬 여행되실 수 있게 
						<br>저희 <strong>"전국이 내 손 안에"</strong>가 도와드리겠습니다!</p><br>
						<p id="para" class="para">현장 구입보다 <u>저렴하게!</u> <u>알뜰하게!</u>
						<br>최대 85% 티켓 할인 혜택을 놓치지 마세요!<p>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>
						<div id="photoParent">
							<img class="photo" alt="가평 아침 고요 수목원" src="<%=request.getContextPath() %>/resources/img/arboretumEx2_ggdo.jpg">
							<img class="photo" alt="대관령 아기동물 체험장" src="<%=request.getContextPath() %>/resources/img/animalEx_gwdo.jpg">
							<img class="photo" alt="스플라스 리솜 워터파크" src="<%=request.getContextPath() %>/resources/img/waterParkEx_ccdo.jpg">
							<img class="photo" alt="해남 명량 케이블카" src="<%=request.getContextPath() %>/resources/img/cableOceanEx_jldo.jpg">
							<img class="photo" alt="양산 에덴 밸리 눈썰매" src="<%=request.getContextPath() %>/resources/img/sledEx2_gsdo.jpg">
							<img class="photo" alt="제주 감귤 박물관" src="<%=request.getContextPath() %>/resources/img/tangerineEx_jjdo.jpg">
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<br>
	<br>
	<br>
	</section>
	<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
	
</body>
</html>