function updateProgress() {
    const input = document.querySelectorAll('.essential');
    let progressCount = 0;

    input.forEach(input => {
        const targetId = input.getAttribute('data-target');
        const relatedDiv = document.getElementById(targetId);

        if (input.value.trim() !== '') {
            progressCount++;
            if (relatedDiv) {
                relatedDiv.style.display = 'none';
            }
        } else {
            if (relatedDiv) {
                relatedDiv.style.display = 'block';
            }
        }
    });

    const progress = progressCount * 20;
    const progressbar = document.getElementById("progress");
    const addProgress = document.getElementById("addProgress");
    const complete = document.getElementById("complete");
    const button = document.getElementById("submit");
    if (progressbar) {
        progressbar.value = progress;
    }

    if (addProgress) {
        addProgress.textContent = progress;
    }

    if (complete) {
        if (progress == 100) {
            complete.innerText = "입력 완료";
            button.type = "submit";
        } else {
            complete.innerHTML = `입력 완료까지 <span id="addProgress">${progress}</span>% !`;
            button.type = "button";
            
        }
    }
}
window.addEventListener("load",()=>{
    document.getElementById("wwbutton").addEventListener("click",e=>{
        fetch("/vipcheck").then(resp => resp.text()).then(result =>{
            if(result == "ok"){
                document.getElementById("wwbutton").style.backgroundColor = "rgb(106, 106, 225)";
                document.getElementById("wwbutton").style.Color = "white";
                document.getElementById("vipMain").style.display= "flex";
                document.getElementById("vipBener").style.display= "flex";
                document.getElementById("conteant").action ="vipadd";
            }else{
                if(confirm("유료회원 서비스입니다 구독하시겠습니까?") == true){
                    location.href="/addvip";
                }else{
                    alert("가입안함");
                };
            };
        });
    });
});
