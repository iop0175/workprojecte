window.addEventListener("load",()=>{
    document.getElementById("check").addEventListener("click",e =>{
      const comname =document.getElementById("comname").value;
      const comadd = document.getElementById("comadd");
      fetch(`/comadd/check/${comname}`).then(resp => resp.text()).then(result =>{
          if(result == "ok"){
              alert("중복환인완료")
              comadd.removeAttribute("type","button")

          }else{
              alert("이미 해당업체가 등록되어 있습니다.") 
          }
      })
    })  
  })