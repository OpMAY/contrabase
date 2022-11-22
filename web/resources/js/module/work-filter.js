function createWorkElement(work) {
    const __buildWorkInnerElement = (work) => {
        return `<div class="col-12 p-24">
                          <div class="d-flex flex-column">
                              <div class="d-flex justify-content-between">
                                  <div class="bold-h5">
                                      운송 운반 | 덤프트럭 2대
                                  </div>
                                  <div>
                                      <img src="../../resources/assets/images/icon/icon-star-active.svg" alt="">
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
    div.innerHTML = __buildWorkInnerElement(work);
    /*TODO Add Event Listener & Callback*/
    return div;
}