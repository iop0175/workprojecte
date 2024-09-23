$(function() {
    var lnb = $("#nav").offset().top;
   
    $(window).scroll(function() {
     
      var window = $(this).scrollTop();
      
      if(lnb <= window) {
        $("#nav").addClass("fixed");
      }else{
        $("#nav").removeClass("fixed");
      }
    })
  });