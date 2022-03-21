// // 부모창에서 정보 가져오기
// var item = document.getElementById('item-name');
// function changeName(){
//     item.innerText= "제주 올인원 이벤트 패키지";
    
// }
// changeName();

// var it = window.opener.document.getElementsByClassName('selected').value;
// console.log(it);


// 결제 방식 선택
const option = document.getElementsByClassName("div-option");

function handleClick(event){
    console.log(event.target)
    console.log(event.target.classList);

    if (event.target.classList[1] === "clicked") {
        event.target.classList.remove("clicked");
    } else {
        for (var i = 0; i < option.length; i++) {
            option[i].classList.remove("clicked");
        }
        event.target.classList.add("clicked");
        }
    } 

function init() {
    for (var i = 0; i < option.length; i++){
        option[i].addEventListener("click", handleClick);
    }
}

init();