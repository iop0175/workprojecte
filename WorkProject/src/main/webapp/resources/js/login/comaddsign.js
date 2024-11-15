window.addEventListener("load",()=>{
    document.querySelectorAll(".add").forEach(adds =>{
        adds.addEventListener("click", e=>{
            const id = e.target.dataset.id;
            fetch(`add/com/${id}`).then(resp => resp.text()).then(result =>{
                if(result == "ok"){
                    alert("승인 완료") ; 
                    location.href= '/company/mycompany/sign';
                };
            }); 
        });
    });
    document.querySelectorAll(".cancel").forEach(adds =>{
        adds.addEventListener("click", e=>{
            const id = e.target.dataset.id;
            fetch(`del/com/${id}`).then(resp => resp.text()).then(result =>{
                if(result == "ok"){
                    alert("거부 완료") ;
                    location.href= '/company/mycompany/sign';
                };
            }); 
        });
    });
});