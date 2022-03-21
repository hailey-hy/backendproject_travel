const tab = document.querySelectorAll('.tab-item');
const tab_bot = document.querySelectorAll('.tab-content-item');

function removeBorder() {
    tab.forEach(item => item.classList.remove('tab-border'));
}

function removeShow() {
    tab_bot.forEach(item => item.classList.remove('show'));
}

// 특정 tab을 선택
function selectItem() {
    // 다른탭을 누르게 되면 border와 세부 내용을 화면에서 지운다
    removeBorder();
    removeShow();
    // 새로운 tab의 class들을 add하고 새 tab-bot은 기존 id-content꼴
    this.classList.add('tab-border');
    const tab_bot = document.querySelector(`#${this.id}-content`);
    tab_bot.classList.add('show');
}

// tab 버튼을 누름
tab.forEach(item => item.addEventListener('click', selectItem));