//탭 선택
const tabItems = document.querySelectorAll('.tab-item');
const tabContentItems = document.querySelectorAll('.tab-content-item');

function selectItem(e) {
    removeBackground();
    removeShow();

    this.classList.add('tab-background');
    
    const tabContentItem = document.querySelector(`#${this.id}-content`);
    
    tabContentItem.classList.add('show');
}

function removeBackground(){
    tabItems.forEach(item => item.classList.remove('tab-background'))
}

function removeShow(){
    tabContentItems.forEach(item => item.classList.remove('show'))
}

tabItems.forEach(item => item.addEventListener('click', selectItem));