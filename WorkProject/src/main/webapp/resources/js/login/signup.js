window.addEventListener("load", () => {
    document
        .getElementById("idCK")
        .addEventListener("click", e => {
            const id = document
                .querySelector("input[name='id']")
                .value;
            fetch(`id_check/${id}`, {method: "GET"})
                .then(res => res.text())
                .then(result => {
                    if (result === "ok") {
                        alert("사용가능한 아이디 입니다")
                        id_check = true;
                        document
                            .getElementById("id")
                            .readOnly = true;;
                        document.getElementById("submit").type ='submit';
                    } else {
                        alert("중복된 아이디 입니다.")
                    }
                }); 
        })
})