window.addEventListener("load",()=>{
    const btns = document.querySelectorAll(".contract")
    btns.forEach((btn)=>{
        btn.addEventListener("click",e =>{
            if(confirm("conName 와 계약을 진행 하시겠습니까?") == true){
                const comBrn  =  prompt("2차 확인 계약을 진행하기 위해 당사의 사업자 번호를 입력하세요");
                fetch("/company/checkcon").then(resp => resp.text).then(result =>{
                    alert(result);
                })
                
            };
        });
    })
    
});