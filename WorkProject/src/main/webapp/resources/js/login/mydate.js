window.addEventListener("load",()=>{
    document.getElementById("oldadd").addEventListener("click",e=>{
        fetch("/oldaddch").then(resp => resp.text()).then(result => {
            if(result == "ok"){
                location.href="/oldcomadd";
            }else{
                alert("승인대기중인 요청이 있습니다");
            };
        });
    });
});