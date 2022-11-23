function createWorkElement(work) {
    const __buildWorkInnerElement = (work) => {
        return `<div class="d-flex flex-column">
                               <div class="d-flex justify-content-between">
                                   <div class="bold-h5">
                                       운송 운반 | 덤프트럭 2대
                                   </div>
                                   <svg class="cursor-pointer _like my-auto" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                       <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                             fill="#D5D8E1"></path>
                                   </svg>
                               </div>
                               <div class="pt-16 regular-p1">
                                   9월 21일 (수), 9월22일 (목)
                               </div>
                               <div class="pt-8 regular-p1">
                                   07:00 ~ 18:00
                               </div>
                               <div class="padding-top-4 ">
                                   <span class="regular-p1">
                                       창원시 마산합 영통구 신동구
                                   </span>
                                   <img src="../../resources/assets/images/icon/icon-location-arrow.svg" alt="">
                                   <span class="regular-p1">
                                       창원시 마산합 영통구 신동구
                                   </span>
                               </div>

                               <div class="pt-16 regular-p1">
                                   <span class="bold-h4">150,000</span>원
                               </div>

                               <div class="pt-16 d-flex justify-content-start">
                                   <div>
                                       <button type="button" class="btn btn-block btn-box opacity">
                                           <span class="medium-h6 c-brand-blue my-auto ">
                                               동부123
                                           </span>
                                       </button>
                                   </div>
                                   <div class="pl-16">
                                       <button type="button" class="btn btn-block btn-box opacity">
                                           <span class="medium-h6 c-brand-blue my-auto ">
                                               동부
                                           </span>
                                       </button>
                                   </div>
                               </div>
                           </div>`;
    }
    let div = document.createElement('div');
    div.classList.add('col-12', 'p-24', 'work');
    div.setAttribute('data-hash', work.hash);
    div.innerHTML = __buildWorkInnerElement(work);
    /*TODO Add Event Listener & Callback*/
    return div;
}

function createWorkPointElement(work) {
    const __buildWorkInnerElement = (work) => {
        let unit = '+';
        let color = 'c-brand-blue';
        if (work.type === 'pay') {
            unit = '-';
            color = 'c-brand-red';
        } else if (work.type === 'repayment') {
            unit = '+';
            color = 'c-brand-blue';
        }
        return `<div class="d-flex flex-column">
                         <div class="d-flex justify-content-between">
                             <div class="bold-h5">
                                 운송 운반 | 덤프트럭 2대
                             </div>
                             <div class="bold-h5 ${color}">
                                 ${unit}300P
                             </div>
                         </div>
                         <div class="pt-16 regular-p1">
                             9월 21일 (수), 9월22일 (목)
                         </div>
                         <div class="pt-8 regular-p1">
                             07:00 ~ 18:00
                         </div>
                         <div class="padding-top-4 ">
                             <span class="regular-p1">
                                 창원시 마산합 영통구 신동구
                             </span>
                             <img src="/resources/assets/images/icon/icon-location-arrow.svg" alt="">
                             <span class="regular-p1">
                                 창원시 마산합 영통구 신동구
                             </span>
                         </div>
                         <div class="pt-16 regular-p1">
                             <span class="bold-h4">150,000</span>원
                         </div>
                     </div>`;
    }
    let div = document.createElement('div');
    div.classList.add('col-12', 'p-24', 'work');
    div.innerHTML = __buildWorkInnerElement(work);
    /*TODO Add Event Listener & Callback*/
    return div;
}

function createWorkElementRow(work) {
    const __buildWorkInnerElement = (work) => {
        return `<div class="col-12 p-24">
                          <div class="d-flex flex-column">
                              <div class="d-flex justify-content-between">
                                  <div class="bold-h5">
                                      운송 운반 | 덤프트럭 2대
                                  </div>
                                  <svg class="cursor-pointer _like my-auto" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                       xmlns="http://www.w3.org/2000/svg">
                                      <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                            fill="#D5D8E1"></path>
                                  </svg>
                              </div>
                              <div class="pt-16 regular-p1">
                                  9월 21일 (수), 9월22일 (목)
                              </div>
                              <div class="pt-8 regular-p1">
                                  07:00 ~ 18:00
                              </div>
                              <div class="padding-top-4 ">
                                  <span class="regular-p1">
                                      창원시 마산합 영통구 신동구
                                  </span>
                                  <img src="../../resources/assets/images/icon/icon-location-arrow.svg" alt="">
                                  <span class="regular-p1">
                                      창원시 마산합 영통구 신동구
                                  </span>
                              </div>
                              <div class="pt-16 regular-p1">
                                  <span class="bold-h4">150,000</span>원
                              </div>
                              <div class="pt-16 d-flex justify-content-start">
                                  <div>
                                      <button type="button" class="btn btn-block btn-box opacity">
                                          <span class="medium-h6 c-brand-blue my-auto ">
                                              동부
                                          </span>
                                      </button>
                                  </div>
                                  <div class="pl-16">
                                      <button type="button" class="btn btn-block btn-box opacity">
                                          <span class="medium-h6 c-brand-blue my-auto ">
                                              동부
                                          </span>
                                      </button>
                                  </div>
                              </div>
                          </div>
                      </div>`;
    }
    let div = document.createElement('div');
    div.classList.add('row', 'work');
    div.setAttribute('data-hash', work.hash);
    div.innerHTML = __buildWorkInnerElement(work);
    /*TODO Add Event Listener & Callback*/
    return div;
}