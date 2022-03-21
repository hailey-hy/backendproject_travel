const tab = document.querySelectorAll('.myTab-item');
const tab_bot = document.querySelectorAll('.myTab-content-item');

function selectItem() {
    removeBorder();
    removeShow();
    this.classList.add('myTab-border');
    const tab_bot = document.querySelector(`#${this.id}-content`);
    tab_bot.classList.add('show');
}

function removeBorder() {
    tab.forEach(item => item.classList.remove('myTab-border'));
}

function removeShow() {
    tab_bot.forEach(item => item.classList.remove('show'));
}

tab.forEach(item => item.addEventListener('click', selectItem));