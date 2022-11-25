function createPointChargeElement(point) {
    let div = document.createElement('div');
    div.classList.add('col-12', 'p-24', 'point');
    const __buildPointChargeElement = (point) => {
        return `<div class="d-flex flex-column">
                         <div class="d-flex justify-content-between">
                             <div class="medium-h6 c-basic-black">
                                 <span class="bold-h6 c-brand-blue">+${addComma(point.point)}P</span> ${findRequestStatus(point.status).keyword}
                             </div>
                             <div class="medium-h6 c-basic-black">
                                 ${Time.formatLocalDate(point.updated_datetime)}(${Time.StringDateFormatDayOfWeek(Time.formatLocalDate(point.updated_datetime))})
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
    div.classList.add('col-12', 'p-24', 'point');
    const __buildPointChargeElement = (point) => {
        return `<div class="d-flex flex-column">
                         <div class="d-flex justify-content-between">
                             <div class="medium-h6 c-basic-black">
                                 <span class="bold-h6 c-brand-red">-${addComma(point.point)}P</span> 환불
                             </div>
                             <div class="medium-h6 c-basic-black">
                                 ${Time.formatLocalDate(point.updated_datetime)}(${Time.StringDateFormatDayOfWeek(Time.formatLocalDate(point.updated_datetime))})
                             </div>
                         </div>
                     </div>`;
    }
    div.innerHTML = __buildPointChargeElement(point);
    /*TODO AddEvent or Callback*/
    return div;
}