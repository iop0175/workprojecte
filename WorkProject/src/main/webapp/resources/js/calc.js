window.addEventListener("load", () => {
    const buttons = document.querySelectorAll(".calc");

    buttons.forEach((button) => {
        button.addEventListener("click", (e) => {
            const operator = e.target.dataset.operator;
            const numValue = parseInt(e.target.dataset.num, 10);
            const calcNum = document.getElementById("calc_num");

            if (isNaN(numValue)) {
                alert("올바른 숫자 값을 제공해주세요.");
                return;
            }

            let currentValue = parseInt(calcNum.value, 10) || 0;

            if (operator === "+") {
                calcNum.value = currentValue + numValue;
            } else if (operator === "-") {
                calcNum.value = Math.max(currentValue - numValue, 0);
            } else {
                calcNum.value = 0;
            }
        });
    });
});