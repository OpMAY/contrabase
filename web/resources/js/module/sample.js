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

async function apiWorkLike(user_type, work_hash) {
    function apiFetch(user_type, work_hash) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));

        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
        };
        const response = fetch(`/${user_type}/mypage/update/work/like/${work_hash}`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, work_hash);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiWorkReport(user_type, work_hash, content) {
    function apiFetch(user_type, work_hash, content) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const raw = JSON.stringify({
            content,
            status: false,
        });
        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
            body: raw,
        };
        const response = fetch(`/${user_type}/mypage/create/report/work/${work_hash}`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, work_hash, content);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiGetWorks(user_type, work_type) {
    function apiFetch(user_type, work_type) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));

        const requestOptions = {
            method: 'GET',
            headers: myHeaders,
        };
        const response = fetch(`/${user_type}/mypage/get/works/${work_type}`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, work_type);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiGetLikeWorks(user_type) {
    function apiFetch(user_type) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));

        const requestOptions = {
            method: 'GET',
            headers: myHeaders,
        };
        const response = fetch(`/${user_type}/mypage/get/like/works`, requestOptions);
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

async function apiChangeUserProfile(user_type, file) {
    function apiFetch(user_type, file) {
        const formData = new FormData();
        formData.append('file', file);

        let requestOptions = {
            method: 'POST',
            body: formData,
        };
        const response = fetch(`/${user_type}/mypage/profile/upload`, requestOptions);
        return response.then(res => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, file);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiChangeUserLicense(user_type, type, file) {
    function apiFetch(user_type, type, file) {
        const formData = new FormData();
        formData.append('file', file);

        let requestOptions = {
            method: 'POST',
            body: formData,
        };
        const response = fetch(`/${user_type}/mypage/license/upload/${type}`, requestOptions);
        return response.then(res => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, type, file);
        return result;
    } catch (error) {
        console.log(error);
    }
}