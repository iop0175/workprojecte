window.addEventListener("load", () => {
    const fields = document.querySelectorAll(".field");
    fields.forEach((fieldbtn) => {
        fieldbtn.addEventListener("click", e => {
            const field = e.target.dataset.field;
            const name = document.getElementById("name");
            name.innerHTML = field;
            const count =  document.getElementById("count");
            fetch(`searchcount/${field}`)
                .then(resp => resp.text())
                .then(result => {
                    count.innerHTML = result;
                    document.getElementById("submit").addEventListener("click", e=>{
                        fetch(`field/list/${field}`).then(resp => resp.text()).then(result =>{
                            document.getElementById('comwork').innerHTML = result;
                        });
                        fetch(`field/viplist/${field}`).then(resp => resp.text()).then(result =>{
                            document.getElementById('vipcomwork').innerHTML = result;
                        });
                    })
                });
        });
    });
});