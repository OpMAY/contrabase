'use strict';
/**
 * Root @RequestMapping("/api")
 * @RequestMapping(value="/{type}/bookmark/like/{no}", method=httpMessage.POST)
 * public void test(@PathVariable("type") String type,@PathVariable("no") int no){
 *
 * }
 * */

/*Template*/
async function apiLoginCheck() {
    function apiFetchLoginCheck() {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));

        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
        };
        const response = fetch(`/auth/login/check`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetchLoginCheck();
        return result;
    } catch (error) {
        console.log(error);
    }
}
async function apiLogout() {
    function apiFetchLogout() {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));

        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
        };
        const response = fetch(`/auth/logout`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetchLogout();
        return result;
    } catch (error) {
        console.log(error);
    }
}
