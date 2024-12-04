window.addEventListener("load", () => {
    const areaButtons = document.querySelectorAll(".area_list_city");
    const priRegion = document.getElementById("priRegion");
    areaButtons.forEach(button => {
        button.addEventListener("click", event => {
            const city = event.target.dataset.area;
            let selectedCities = priRegion
                .value
                .split(",")
                .map(item => item.trim())
                .filter(item => item);

            if (selectedCities.includes(city)) {
                selectedCities = selectedCities.filter(item => item !== city);
                button
                    .classList
                    .remove("selected");
            } else {
                if (selectedCities.length >= 3) {
                    alert("최대 3개의 도시만 선택할 수 있습니다!");
                    return;
                }
                selectedCities.push(city);
                button
                    .classList
                    .add("selected");
            }

            priRegion.value = selectedCities.join(", ");
        });
    });
    document
        .getElementById("wwbutton")
        .addEventListener("click", e => {
            fetch("/vipcheck")
                .then(resp => resp.text())
                .then(result => {
                    if (result == "ok") {
                        document
                            .getElementById("wwbutton")
                            .style
                            .backgroundColor = "rgb(106, 106, 225)";
                        document
                            .getElementById("wwbutton")
                            .style
                            .Color = "white";
                        document
                            .getElementById("vipMain")
                            .style
                            .display = "flex";
                        document
                            .getElementById("vipBener")
                            .style
                            .display = "flex";
                        document
                            .getElementById("conteant")
                            .action = "vipadd";
                    } else {
                        if (confirm("유료회원 서비스입니다 구독하시겠습니까?") == true) {
                            location.href = "/addvip";
                        } else {
                            alert("가입안함");
                        };
                    };
                });
        });
    const button =document.getElementById("submit");
    button.addEventListener("click",e=>{
        const inputs = document.querySelectorAll(".conteant_item input");
        let count = 0;
        inputs.forEach(e=>{
            if(e.value == ""){
                count = 1;
            }else{
                count = 2;
            };
        });
        if(count == 1){
            alert("모든 입력사항에 입력 바랍니다.");
        }else{
            button.type = "submit";
        };
    });
});
