const loginBtn = document.querySelector(".loginBtn");

loginBtn.addEventListener("click", function () {
  const loginId = document.querySelector(".id").value;
  const loginPassword = document.querySelector(".password").value;

  loginId && loginPassword ? (document.querySelector(".loginBtn").style.backgroundColor = "blue") : 0;
});

var signBtn = document.getElementById("signinButton") 
signBtn.addEventListener('click', signFunc)

function signFunc () {
  var userid = document.getElementById("userId").value; 
  var userpwd = document.getElementById("userPwd").value; 

  if(userid == "multicampus" && userpwd == "12345678") {
    alert("로그인 성공");
    console.log("로그인 성공");
  } else {
    alert("로그인 실패");
    console.log("로그인 실패");
  }
}
