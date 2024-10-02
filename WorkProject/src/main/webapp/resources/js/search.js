window.addEventListener("load",()=>{
    document.getElementById("search").addEventListener("keyup",e =>{
        if(e.keyCode ===13){
            const search = document.querySelector("input[name = 'search']").value;
            window.location.href = `/work/search/${search}`;
        }
    });
});