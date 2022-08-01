let form = document.querySelector('.auth__form');
let username = document.getElementById('username');
let email = document.getElementById('email');
let password = document.getElementById('password');
let sdt = document.getElementById('sdt');
let repassword = document.getElementById('re-password');
let inputs = form.querySelectorAll('.input');

// Check bỏ trống
for (let i = 0; i < inputs.length; i++) {
    inputs[i].onblur = inputs[i].oninput = function () {
        if (inputs[i].value.trim()) {
            setSuccessFor(inputs[i]);
        } else {
            setErrorFor(inputs[i], 'Trường này không được bỏ trống');
        }
    }
}
function setErrorFor(input, message) {
    const formControl = input.parentElement;
    const p = formControl.querySelector('p');
    p.innerText = message;
    formControl.className = 'form-control invalid';
}

function setSuccessFor(input) {
    const formControl = input.parentElement;
    const p = formControl.querySelector('p');
    p.innerText = '';
    formControl.className = 'form-control valid';
}



// Check trùng password 
repassword.onblur = repassword.oninput = function () {
    if (repassword.value.trim() === password.value.trim()) {
        setSuccessFor(repassword);
    } else {
        //setErrorFor(repassword, '');
        setErrorFor(repassword, 'Mật khẩu chưa trùng khớp');
    }
}



function responsive() {
    var x = document.getElementById("header-bot");
    if (x.className === "header_bot") {
        x.className += "responsive";
    }
    else {
        x.className = "header_bot";
    }
}





// check sdt
function checksdt(sdt) {
    var Characters = /[0]/g;
    var a = sdt.value.charAt(0);
    if (a.match(Characters)) {
        return true;
    }
    else {
        return false;
    }

}
sdt.onblur = sdt.oninput = function () {
    if (!checksdt(sdt)) {
        setErrorFor(sdt, "Ký tự đầu là 0 và có 9-11 ký tự");
    }
    else {
        setSuccessFor(sdt);
    }
    
}

btnReg.onclick = function (e) {
    var valid = true;
    if (!(username.value.trim() || email.value.trim() || password.value.trim() || repassword.value.trim())) {
        //alert('Hãy điền đầy đủ các trường');
        let btn_error = document.getElementById('btn_error');
        btn_error.innerHTML = 'Hãy điền đầy đủ các trường';
        valid = false;
    }

    if (!username.value.trim()) {
        setErrorFor(username, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    }
    else {
        setSuccessFor(username);
    }
    if (!email.value.trim()) {
        setErrorFor(email, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(email);
    }
    if (!sdt.value.trim()) {
        setErrorFor(sdt, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(email);
    }
    if (!password.value.trim()) {
        setErrorFor(password, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(password);
    }
    if (!repassword.value.trim()) {
        setErrorFor(repassword, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(repassword);
    }
    if (!checksdt(sdt)) {
        valid = false;
        setErrorFor(sdt, "Ký tự đầu là 0 và có 9-11 ký tự");
    } else {
        setSuccessFor(sdt);
    }
   
    if (!valid) {
        e.preventDefault();
    }

}