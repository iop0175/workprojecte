window.addEventListener("load",()=>{
    document.getElementById("can").addEventListener("click", e=>{
        window.close();
    })
    document.querySelectorAll(".payBox").forEach(e=>{
        e.addEventListener("click",item =>{
            const items = item.target.dataset.type;
            const url = window.location.pathname;
            fetch(`${url}/${items}`).then(resp => resp.text()).then(result =>{
                document.getElementById("main").innerHTML = result;
                document.getElementById("pay").addEventListener("click",e=>{
                    fetch(`${url}/pay/${items}`).then(resp => resp.text()).then(result =>{
                        if(result == "ok"){
                            alert("결제가 완료되었습니다.")
                        }else{
                            alert("결제가 실페하였습니다")
                        }
                    });
                });
            });
        });
    }) ; 
});