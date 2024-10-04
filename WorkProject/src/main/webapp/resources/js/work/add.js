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
            // 100%일 때 "입력 완료" 표시
            complete.innerText = "입력 완료";
            button.type = "submit";
        } else {
            // 100%가 되었다가 다시 입력이 지워지면 동적으로 값 업데이트
            complete.innerHTML = `입력 완료까지 <span id="addProgress">${progress}</span>% !`;
            button.type = "button";
            
        }
    }
}
