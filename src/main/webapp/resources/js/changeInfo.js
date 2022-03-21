var signinButton = document.getElementById("loginBtn") 
signinButton.addEventListener('click', signinFunc)

function signinFunc () {
  var pwd = document.getElementById("pwd").value; 
  var confirmpwd = document.getElementById("confirmpwd").value; 

  if(pwd == "12345678" && confirmpwd == "12345678") {
    alert("원래 비밀번호로는 바꿀 수 없습니다.");
  } else if(pwd !=12345678 && confirmpwd != "12345678"){
    alert("비밀번호 변경이 완료되었습니다.");
  } else{
    alert("동일한 비밀번호를 두 번 입력하셔야 합니다.");
  }

}