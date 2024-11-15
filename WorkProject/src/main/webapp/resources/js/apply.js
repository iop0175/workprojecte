window.addEventListener("load", () => {
    const apply = document.getElementById("apply");
    apply.addEventListener("click", e => {
        const comName = e.target.dataset.comname;
        fetch(`/work/apply/${comName}`).then(resp => resp.text()).then(result => {
            if (result==="ok") {
                document
                    .getElementById("applyBox")
                    .classList
                    .remove("hide");
                document
                    .getElementById("apply_title_box")
                    .removeAttribute('id');
                apply.style.borderImage = "linear-gradient(to bottom right, #0060fd, #03e6c8, #df30e2)";
                apply.style.borderImageSlice = "1";
                apply.style.borderRadius = "10px"
            }else if(result === "samecom") {
                alert("본인의 회사에 지원은 불가능 합니다")
            }else {
                alert("로그인후 사용하가능 합니다.");
            };
        });

    });
});