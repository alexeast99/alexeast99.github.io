$("img").mouseover(function() {

  $(this).removeClass("shadow").addClass("shadow-lg");
  gsap.to($(this), {scale: 1.05});

}).mouseleave(function() {

  $(this).removeClass("shadow-lg").addClass("shadow");
  gsap.to($(this), {scale: 1.00});

})
