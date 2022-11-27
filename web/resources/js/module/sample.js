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

async function apiUploadUserTempLicense(user_type, type, file) {
    function apiFetch(user_type, type, file) {
        const formData = new FormData();
        formData.append('file', file);

        let requestOptions = {
            method: 'POST',
            body: formData,
        };
        const response = fetch(`/${user_type}/mypage/license/temp/upload/${type}`, requestOptions);
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

async function profileDefaultChange(user_type, name, phone, email) {
    function apiFetch(user_type, name, phone, email) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const raw = JSON.stringify({
            name, phone, email
        });
        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
            body: raw,
        };
        const response = fetch(`/${user_type}/mypage/update/default`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, name, phone, email);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function profileCarCodeChange(user_type, car_code) {
    function apiFetch(user_type, car_code) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const raw = JSON.stringify({
            car_code
        });
        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
            body: raw,
        };
        const response = fetch(`/${user_type}/mypage/update/car`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, car_code);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiUnregister(user_type, reason) {
    function apiFetch(user_type, reason) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const raw = JSON.stringify({
            reason
        });
        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
            body: raw,
        };
        const response = fetch(`/${user_type}/mypage/unregister`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, reason);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiUpdateAlarm(user_type, type) {
    function apiFetch(user_type, type) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
        };
        const response = fetch(`/${user_type}/mypage/update/alarm/${type}`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, type);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiGetPoints(user_type, type) {
    function apiFetch(user_type, type) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));

        const requestOptions = {
            method: 'GET',
            headers: myHeaders,
        };
        const response = fetch(`/${user_type}/mypage/get/points/${type}`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, type);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiChargePoint(user_type, point) {
    function apiFetch(user_type, point) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const raw = JSON.stringify({
            point
        });
        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
            body: raw,
        };
        const response = fetch(`/${user_type}/mypage/charge/point`, requestOptions);
        return response.then((res) => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, point);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiEmployeeRegister(user_type, employee) {
    function apiFetch(user_type, employee) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const raw = JSON.stringify(employee);
        let requestOptions = {
            headers: myHeaders,
            method: 'POST',
            body: raw,
        };
        const response = fetch(`/${user_type}/mypage/employee/register`, requestOptions);
        return response.then(res => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, employee);
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function apiSupplierRegister(user_type, supplier) {
    function apiFetch(user_type, supplier) {
        const myHeaders = new Headers();
        myHeaders.append('Content-Type', 'application/json');
        myHeaders.append('Content-Api', tokenGenerator(8));
        const raw = JSON.stringify(supplier);
        let requestOptions = {
            headers: myHeaders,
            method: 'POST',
            body: raw,
        };
        const response = fetch(`/${user_type}/mypage/supplier/register`, requestOptions);
        return response.then(res => res.json());
    }

    let result;
    try {
        result = await apiFetch(user_type, supplier);
        return result;
    } catch (error) {
        console.log(error);
    }
}