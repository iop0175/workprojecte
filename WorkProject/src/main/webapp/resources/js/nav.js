window.addEventListener("load",()=>{
    document.getElementById("nemu").addEventListener("click",e=>{
        document.getElementById("navhi").style.display ='grid'
        
    });
    document.getElementById("cross").addEventListener("click",e=>{
        document.getElementById("navhi").style.display ='none'
        
    })
});