const container = document.querySelector(".container"),
      pwShowHide = document.querySelectorAll(".showHidePw"),
      pwFields = document.querySelectorAll(".password"),
      signUp = document.querySelector(".signup-link"),
      login = document.querySelector(".login-link");

    //   js code to show/hide password and change icon
    pwShowHide.forEach(eyeIcon =>{
        eyeIcon.addEventListener("click", ()=>{
            pwFields.forEach(pwField =>{
                if(pwField.type ==="password"){
                    pwField.type = "text";

                    pwShowHide.forEach(icon =>{
                        icon.classList.replace("uil-eye-slash", "uil-eye");
                    })
                }else{
                    pwField.type = "password";

                    pwShowHide.forEach(icon =>{
                        icon.classList.replace("uil-eye", "uil-eye-slash");
                    })
                }
            }) 
        })
    })

    // js code to appear signup and login form
    signUp.addEventListener("click", ( )=>{
        container.classList.add("active");
    });
    login.addEventListener("click", ( )=>{
        container.classList.remove("active");
    });

    
    // Lấy các phần tử cần thiết
const loginForm = document.querySelector('.form.login')
const forgotForm = document.querySelector('.form.forgot')
const signUpForm = document.querySelector('.form.signup')

const loginLink = document.querySelector('.login-link')
const forgotLink = document.querySelector('.forgot-link')
const signUpLink = document.querySelector('.signup-link')

let currentForm = 'login'; // lưu trạng thái form hiện tại

// Xử lý sự kiện khi người dùng nhấn vào nút "Quên mật khẩu"
forgotLink.addEventListener('click', function (e) {
    e.preventDefault()
    if (currentForm === 'login') {
        loginForm.style.display = 'none';
    } else if (currentForm === 'signup') {
        signUpForm.style.display = 'none';
    }
    currentForm = 'forgot'; // cập nhật trạng thái form hiện tại
    forgotForm.style.display = 'block'
})

// Xử lý sự kiện khi người dùng nhấn vào nút "Quay lại"
loginLink.addEventListener('click', function (e) {
    e.preventDefault()
    if (currentForm === 'forgot') {
        forgotForm.style.display = 'none';
    } else if (currentForm === 'signup') {
        signUpForm.style.display = 'none';
    }
    currentForm = 'login'; // cập nhật trạng thái form hiện tại
    loginForm.style.display = 'block'
})

signUpLink.addEventListener('click', function (e) {
    e.preventDefault()
    if (currentForm === 'login') {
        loginForm.style.display = 'none';
    } else if (currentForm === 'forgot') {
        forgotForm.style.display = 'none';
    }
    currentForm = 'signup'; // cập nhật trạng thái form hiện tại
    signUpForm.style.display = 'block'
})

    
