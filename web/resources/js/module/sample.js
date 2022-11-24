$(document).ready(function () {
    console.log('module : library-sample.js execute');
});

/**임시*/

/**api.js 임시*/
async function apiGetAlarms(user_type, alarm_type) {
    function apiFetch(user_type) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));

        const requestOptions = {
            method: 'GET',
            headers: myHeaders,
        };
        const response = fetch(`/${user_type}/mypage/get/alarms/${alarm_type}`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type);
        return result;
    } catch (error) {
        console.log(error);
    }
}