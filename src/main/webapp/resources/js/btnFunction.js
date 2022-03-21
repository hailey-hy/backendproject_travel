/**
 *여행지 티켓 예매 - 페이지 사이 클릭시 이동 메서드
 */

$(document).ready(function(){
	$('#ggdo').on('click', function(){
		window.open("activities_ggdo.html", "_self");	
	}) // ggdo click end
	$('#gwdo').on('click', function(){
		window.location.href = "activities_gwdo.html";
	}) // gwdo click end
	$('#ccdo').on('click', function(){
		window.location.href = "activities_ccdo.html";
	}) // ccdo click end
	$('#jldo').on('click', function(){
		window.location.href = "activities_jldo.html";
	}) // jldo click end
	$('#gsdo').on('click', function(){
		window.location.href = "activities_gsdo.html";
	}) // gsdo click end
	$('#jjdo').on('click', function(){
		window.location.href = "activities_jjdo.html";
	}) // jjdo click end
}); 	
	