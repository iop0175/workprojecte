window.addEventListener("load", () => {

    submit.addEventListener("click", e => {
        const id = document.getElementById("id")
        const password = document.getElementById("password");
        const submit = document.getElementById("submit");
        const idbox = document.getElementById("idbox");
        const pwbox = document.getElementById("pwbox");
        if (id.value == "" && password.value == "") {
            alert("아이디와 비밀번호를 입력하시오")
            idbox.style.borderColor = 'red';
            pwbox.style.borderColor = 'red';
        } else if (id.value == "") {
            alert("아이디를 입력하시오")
            idbox.style.borderColor = 'red';
        } else if (password.value == "") {
            alert("비밀번호를 입력하시오")
            pwbox.style.borderColor = 'red';
        } else {
            idbox.style.borderColor = 'black'
            pwbox.style.borderColor = 'black';
        }
        fetch(`login_check/${id.value}/${password.value}`, {method: "GET"})
            .then(res => res.text())
            .then(result => {
                if (result === "ok") {
                    window.location="/work";
                } else{
                    alert("아이디와 비밀번호를 확인하시오.");
                } 
            });

    });
});