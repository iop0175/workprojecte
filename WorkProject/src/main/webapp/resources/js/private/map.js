window.addEventListener("load", () => {
    const cities = [
        { id: "Seoul_list", element: document.getElementById("Seoul"), name: "서울" },
        { id: "Incheon_list", element: document.getElementById("Incheon"), name: "인천" },
        { id: "Busan_list", element: document.getElementById("Busan"), name: "부산" },
        { id: "Daegu_list", element: document.getElementById("Daegu"), name: "대구" },
        { id: "Gwangju_list", element: document.getElementById("Gwangju"), name: "광주" },
        { id: "Daejeon_list", element: document.getElementById("Daejeon"), name: "대전" },
        { id: "Ulsan_list", element: document.getElementById("Ulsan"), name: "울산" },
        { id: "Sejong_list", element: document.getElementById("Sejong"), name: "세종" },
        { id: "Gyeonggi_list", element: document.getElementById("Gyeonggi"), name: "경기도" },
        { id: "Gangwon_list", element: document.getElementById("Gangwon"), name: "강원도" },  
        { id: "Chungcheongnam_list", element: document.getElementById("Chungcheongnam"), name: "충청남도" },
        { id: "Chungcheongbuk_list", element: document.getElementById("Chungcheongbuk"), name: "충청북도" },
        { id: "Jeollanam_list", element: document.getElementById("Jeollanam"), name: "전라남도" },
        { id: "Jeollabuk_list", element: document.getElementById("Jeollabuk"), name: "전라북도" },
        { id: "Gyeongsangnam_list", element: document.getElementById("Gyeongsangnam"), name: "경상남도" },
        { id: "Gyeongsangbuk_list", element: document.getElementById("Gyeongsangbuk"), name: "경상북도" }
    ];

    let input = document.getElementById("area_search_box");

    // 선택지를 모두 가져온다
    const items = document.querySelectorAll(".area_list_city");

    // 배열로 저장되기 때문에 forEach로 하나씩 이벤트를 등록해준다.
    items.forEach((item) => {
        item.addEventListener('click', (city) => {
            // 모든 도시의 효과를 지운다
            items.forEach((e) => e.classList.remove('list_clicked'));
            
            // 선택한 그 아이만 효과를 추가해준다.
            item.classList.add('list_clicked');
            
            // 모든 도시를 회색으로 초기화
            cities.forEach(({ element }) => element.style.fill = "gray");

            // 선택된 도시의 색을 녹색으로 변경하고, 입력 상자에 도시 이름을 넣음
            const selectedCity = cities.find(c => c.id === city.currentTarget.id);
            if (selectedCity) {
                selectedCity.element.style.fill = "green";
                input.value = selectedCity.name;
                const area_city =selectedCity.name;
                const count = document.getElementById("count")
                fetch(`/private/area/${area_city}`,{method:"GET",}).then(res => res.text()).then(result => {
                    if (result < 1) {
                        count.innerHTML = "0";
                    } else
                    count.innerHTML = `${result}`;
                });
            }
            const submit = document.getElementById("button_box").addEventListener("click",e =>{
                fetch(`/private/area/${selectedCity.name}/viplist`,{method:"GET"},).then(res => res.text()).then(result =>{
                    document.getElementById("vipcomwork").innerHTML = result;
                });
                fetch(`/private/area/${selectedCity.name}/list`,{method:"GET"},).then(res => res.text()).then(result =>{
                    document.getElementById("comwork").innerHTML = result;
                });
            })
        });
    });
});
