function createPointChargeElement(point) {
    let div = document.createElement('div');
    div.classList.add('col-12','p-24','point');
    const __buildPointChargeElement = (point) => {
        return `<div class="d-flex flex-column">
                         <div class="d-flex justify-content-between">
                             <div class="medium-h6 c-basic-black">
                                 <span class="bold-h6 c-brand-blue">+10,000P</span> 충전
                             </div>
                             <div class="medium-h6 c-basic-black">
                                 2022.12.22(목)
                             </div>
                         </div>
                     </div>`;
    }
    div.innerHTML = __buildPointChargeElement(point);
    /*TODO AddEvent or Callback*/
    return div;
}

function createPointRefundElement(point) {
    let div = document.createElement('div');
    div.classList.add('col-12','p-24','point');
    const __buildPointChargeElement = (point) => {
        return `<div class="d-flex flex-column">
                         <div class="d-flex justify-content-between">
                             <div class="medium-h6 c-basic-black">
                                 <span class="bold-h6 c-brand-red">-10,000P</span> 충전
                             </div>
                             <div class="medium-h6 c-basic-black">
                                 2022.12.22(목)
                             </div>
                         </div>
                     </div>`;
    }
    div.innerHTML = __buildPointChargeElement(point);
    /*TODO AddEvent or Callback*/
    return div;
}