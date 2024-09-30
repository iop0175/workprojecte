const content = `WORK WAY에서 가능합니다`;
const text = document.querySelector(".text");
const com1_data = `11111111111111`;
const com1 = document.getElementById("com1");
let com_i = 0;
let count = 0;
let com1_i = 0;
let count1 = 0;
window.addEventListener('scroll', () => {
    if (window.scrollY >= 1300 && count == 0) {
        function typing(){
            if(com_i<content.length){
                let target = content.charAt(com_i);
                text.innerHTML = text.innerHTML+target;
                com_i++;
            }
        }
        setInterval(typing,100);
        count++
    }
})
window.addEventListener('scroll', () => {
    if (window.scrollY >= 1300 && count1 == 0) {
        function typing(){
            if(com1_i<com1_data.length){
                let target = com1_data.charAt(com1_i);
                com1.innerHTML = com1.innerHTML+target;
                com1_i++;
            }
        }
        setInterval(typing,100);
        count1++
    }

})