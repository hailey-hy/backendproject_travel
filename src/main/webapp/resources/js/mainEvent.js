// 탭 선택
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

// 구매 창 이동 및 구매 정보 얻기
// const purchaseItem = document.querySelectorAll('.btn-blue');
// purchaseItem.forEach(item => item.addEventListener('click', openPurchase));

// function openPurchase(e){
//     window.open("Purchase.html")
//     this.classList.add('selected')
// }
// function removeSelected(){
//     purchaseItem.forEach(item => item.classList.remove('selected'))
// }