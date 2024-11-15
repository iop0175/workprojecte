window.addEventListener("load", ()=>{
    const btns = document.querySelectorAll(".getbtn");
    btns.forEach((btn)=>{
        btn.addEventListener("click",e=>{
           const date = e.target.dataset.end;
           window.open(`/payment/${date}`,'_blank','width=405, height=610, top=50, left=50, scrollbars=no')
        });
    });
    const btn = document.querySelector(".getbtnhi");
    const date = btn.dataset.end;
    btn.addEventListener("click",e=>{
        window.open(`/payment/${date}`,'_blank','width=401, height=605, top=50, left=50, scrollbars=no')
    });
});