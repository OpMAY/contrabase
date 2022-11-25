function createWorkElement(work) {
    const __buildWorkInnerElement = (work) => {
        let date_html = '';
        work.work_dates.forEach(function (work_date, index, dates) {
            let date = new Date(work_date);
            let week = Time.StringDateFormatDayOfWeek(work_date);
            if (index === dates.length - 1) {
                date_html = `${(date.getMonth() - 1)}월 ${date.getDay()}일 (${week})`;
            } else {
                date_html = `${(date.getMonth() - 1)}월 ${date.getDay()}일 (${week}), `;
            }
        });
        let place_html;
        if (work.start_place !== undefined && work.start_place !== null) {
            place_html = `<span class="regular-p1">
                                       ${work.start_place}
                                   </span>
                                   <img src="/resources/assets/images/icon/icon-location-arrow.svg" alt="">
                                   <span class="regular-p1">
                                       ${work.end_place}
                                   </span>`;
        } else {
            place_html = `<span class="regular-p1">
                                       ${work.start_place}
                                   </span>`;
        }
        let hashtags_html = '';
        /*TODO 2022-11-24 긴급모집, 식사여부, 주차여부로 대체*/
        if (work._emergency) {
            hashtags_html += `<div class="mr-16">
                                                 <button type="button" class="btn btn-block btn-box opacity">
                                                     <span class="medium-h6 c-brand-blue my-auto ">
                                                          긴급 모집
                                                     </span>
                                                 </button>
                                             </div>`;
        }
        hashtags_html += `<div class="mr-16">
                                                     <button type="button" class="btn btn-block btn-box opacity">
                                                         <span class="medium-h6 c-brand-blue my-auto ">
                                                             ${findParkingType(work.parking_info).keyword}
                                                         </span>
                                                     </button>
                                                 </div>`;
        hashtags_html += `<div>
                                                     <button type="button" class="btn btn-block btn-box opacity">
                                                         <span class="medium-h6 c-brand-blue my-auto ">
                                                             ${findDishingType(work.dishing_info).keyword}
                                                         </span>
                                                     </button>
                                                 </div>`;
        return `<div class="d-flex flex-column">
                               <div class="d-flex justify-content-between">
                                   <div class="bold-h5">
                                       ${work.name} | ${findVehicleType(work.vehicle_type).keyword}
                                   </div>
                                   <svg class="cursor-pointer ${work._like ? 'is-active' : ''} _like my-auto" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                       <path d="M21.2841 8.27584L15.3333 7.411L12.6731 2.01803C12.6005 1.87037 12.4809 1.75084 12.3333 1.67818C11.963 1.49537 11.513 1.64771 11.3278 2.01803L8.66766 7.411L2.71688 8.27584C2.55282 8.29928 2.40281 8.37662 2.28797 8.49381C2.14913 8.63651 2.07262 8.8285 2.07526 9.02758C2.0779 9.22666 2.15946 9.41655 2.30203 9.55553L6.6075 13.7532L5.59032 19.6805C5.56646 19.8184 5.58172 19.9602 5.63436 20.0899C5.687 20.2195 5.77491 20.3318 5.88813 20.4141C6.00135 20.4963 6.13535 20.5452 6.27492 20.5551C6.4145 20.5651 6.55407 20.5357 6.67782 20.4704L12.0005 17.6719L17.3231 20.4704C17.4684 20.5477 17.6372 20.5735 17.7989 20.5454C18.2067 20.4751 18.4809 20.0883 18.4106 19.6805L17.3934 13.7532L21.6989 9.55553C21.8161 9.44068 21.8934 9.29068 21.9169 9.12662C21.9802 8.71646 21.6942 8.33678 21.2841 8.27584V8.27584Z"
                                             fill="#D5D8E1"></path>
                                   </svg>
                               </div>
                               <div class="pt-16 regular-p1">
                                   ${date_html}
                               </div>
                               <div class="pt-8 regular-p1">
                                   ${work.start_time} ~ ${work.end_time}
                               </div>
                               <div class="padding-top-4 ">
                                   ${place_html}
                               </div>

                               <div class="pt-16 regular-p1">
                                   <span class="bold-h4">${addComma(work.budget)}</span>원
                               </div>

                               <div class="pt-16 d-flex justify-content-start">
                                   ${hashtags_html}
                               </div>
                           </div>`;
    }
    let div = document.createElement('div');
    div.classList.add('col-12', 'p-24', 'work');
    div.setAttribute('data-hash', work.hash_no);
    div.innerHTML = __buildWorkInnerElement(work);
    /*TODO Add Event Listener & Callback*/
    div.querySelector('._like').addEventListener('click', function (event) {
        let work_hash = this.closest('.work').dataset.hash;
        let _like = this;
        if ((!_like.classList.contains('is-active'))) {
            apiWorkLike('user', work_hash).then((result) => {
                console.log('apiWorkLike', result);
                if (result.status === 'OK') {
                    _like.classList.add('is-active');
                } else {
                    viewAlert({content: '좋아요를 할 수 없습니다. 다시 시도해주세요.'});
                }
            });
        } else {
            apiWorkLike('user', work_hash).then((result) => {
                console.log('apiWorkLike', result);
                if (result.status === 'OK') {
                    _like.classList.remove('is-active');
                } else {
                    viewAlert({content: '좋아요를 취소할 수 없습니다. 다시 시도해주세요.'});
                }
            });
        }
        event.stopPropagation();
        event.preventDefault();
    });
    div.addEventListener('click', function (event) {
        let work_hash = this.dataset.hash;
        location.href = `/user/work/detail/${work_hash}`;
        event.stopPropagation();
        event.preventDefault();
    });
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
                                  <img src="/resources/assets/images/icon/icon-location-arrow.svg" alt="">
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

function createWorkRecruitElement(work) {
    let div = document.createElement('div');
    div.classList.add('col-12', 'p-24', 'work');
    const __buildWorkInnerElement = (work) => {
        return `<div class="d-flex flex-column">
                          <div class="d-flex justify-content-between">
                              <div class="bold-h5">
                                  운송 운반 | 덤프트럭 2대
                              </div>
                              <div class="bold-h5 c-brand-blue">
                                  1일 남음
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
    div.innerHTML = __buildWorkInnerElement(work);
    div.appendChild(createWorkMediasElement(work.users));
    div.addEventListener('click', function (event) {
        event.stopPropagation();
        event.preventDefault();
    });
    /*TODO Add Event & Callback*/
    return div;
}

function createWorkCompleteElement(work) {
    let div = document.createElement('div');
    div.classList.add('col-12', 'p-24', 'work');
    const __buildWorkInnerElement = (work) => {
        return `<div class="d-flex flex-column">
                          <div class="d-flex justify-content-between">
                              <div class="bold-h5">
                                  운송 운반 | 덤프트럭 2대
                              </div>
                              <div class="bold-h5 c-brand-blue">
                                  1일 남음
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
    div.innerHTML = __buildWorkInnerElement(work);
    div.appendChild(createWorkMediasElement(work.users));
    div.addEventListener('click', function (event) {
        event.stopPropagation();
        event.preventDefault();
    });
    /*TODO Add Event & Callback*/
    return div;
}

function createWorkCancelElement(work) {
    let div = document.createElement('div');
    div.classList.add('col-12', 'p-24', 'work');
    const __buildWorkInnerElement = (work) => {
        return `<div class="d-flex flex-column">
                          <div class="d-flex justify-content-between">
                              <div class="bold-h5">
                                  운송 운반 | 덤프트럭 2대
                              </div>
                              <div class="bold-h5 c-brand-blue">
                                  1일 남음
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
    div.innerHTML = __buildWorkInnerElement(work);
    div.appendChild(createWorkMediasElement(work.users));
    div.addEventListener('click', function (event) {
        event.stopPropagation();
        event.preventDefault();
    });
    /*TODO Add Event & Callback*/
    return div;
}

function createWorkMediasElement(users) {
    let div = document.createElement('div');
    div.classList.add('media-container');
    users?.forEach(function (user) {
        let media = createWorkMediaElement(user);
        div.appendChild(media);
    });
    return div;
}

function createWorkMediaElement(user) {
    let div = document.createElement('div');
    const __buildWorkMediaInnerElement = (user) => {
        return `<div class="_profile align-self-start mr-2" style="background-image: url('https://via.placeholder.com/350x150')"></div>
                      <div class="media-body">
                          <div class="mt-0 d-flex">
                              <div class="name my-auto bold-h5">김우식</div>
                              <div class="transport ml-auto my-auto d-flex">
                                  <div class="regular-h6 c-brand-red _cancel">취소</div>
                                  <button type="button" class="btn btn-sm btn-block opacity my-auto _call">
                                      <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                          <g clip-path="url(#clip0_408_492)">
                                              <path d="M21 16.42V19.956C21.0001 20.2092 20.9042 20.453 20.7316 20.6382C20.559 20.8234 20.3226 20.9363 20.07 20.954C19.633 20.984 19.276 21 19 21C10.163 21 3 13.837 3 5C3 4.724 3.015 4.367 3.046 3.93C3.06372 3.67744 3.17658 3.44101 3.3618 3.26841C3.54703 3.09581 3.79082 2.99989 4.044 3H7.58C7.70404 2.99987 7.8237 3.04586 7.91573 3.12902C8.00776 3.21218 8.0656 3.32658 8.078 3.45C8.101 3.68 8.122 3.863 8.142 4.002C8.34073 5.38892 8.748 6.73783 9.35 8.003C9.445 8.203 9.383 8.442 9.203 8.57L7.045 10.112C8.36445 13.1865 10.8145 15.6365 13.889 16.956L15.429 14.802C15.4919 14.714 15.5838 14.6509 15.6885 14.6237C15.7932 14.5964 15.9042 14.6068 16.002 14.653C17.267 15.2539 18.6156 15.6601 20.002 15.858C20.141 15.878 20.324 15.9 20.552 15.922C20.6752 15.9346 20.7894 15.9926 20.8724 16.0846C20.9553 16.1766 21.0012 16.2961 21.001 16.42H21Z" fill="#015ADC"></path>
                                          </g>
                                          <defs>
                                              <clipPath id="clip0_408_492">
                                                  <rect width="24" height="24" fill="white"></rect>
                                              </clipPath>
                                          </defs>
                                      </svg>
                                  </button>
                                  <button type="button" class="btn btn-sm btn-block opacity my-auto _report">
                                      <svg width="20" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                          <path d="M1.192 18V12C1.192 9.87827 2.03485 7.84344 3.53515 6.34315C5.03544 4.84285 7.07027 4 9.192 4C11.3137 4 13.3486 4.84285 14.8489 6.34315C16.3491 7.84344 17.192 9.87827 17.192 12V18H18.192V20H0.192V18H1.192ZM3.192 12H5.192C5.192 10.9391 5.61343 9.92172 6.36357 9.17157C7.11372 8.42143 8.13113 8 9.192 8V6C7.6007 6 6.07458 6.63214 4.94936 7.75736C3.82414 8.88258 3.192 10.4087 3.192 12ZM8.192 0H10.192V3H8.192V0ZM16.97 2.808L18.384 4.222L16.264 6.343L14.849 4.929L16.97 2.808ZM0 4.222L1.414 2.808L3.535 4.928L2.122 6.344L0 4.222Z" fill="#FF4E4E"></path>
                                      </svg>
                                  </button>
                              </div>
                          </div>
                          <div>
                              <p class="regular-p1">차량 번호 : 34가 20394</p>
                          </div>
                      </div>`;
    }
    div.classList.add('media');
    div.innerHTML = __buildWorkMediaInnerElement(user);
    /*TODO Add Event * Callback*/
    div.querySelector('._cancel').addEventListener('click', function (event) {
        event.stopPropagation();
        event.preventDefault();
    });
    div.querySelector('._call').addEventListener('click', function (event) {
        event.stopPropagation();
        event.preventDefault();
    });
    div.querySelector('._report').addEventListener('click', function (event) {
        event.stopPropagation();
        event.preventDefault();
    });
    return div;
}
