let timeline = new gsap.timeline({
  defaults: {
    duration: 1.2,
    ease: "slow"
  }
});

timeline
  .from("#name", {opacity: 0, delay: .7})
  .from("#developer", {opacity: 0, delay: .2})
  .from("#engineer", {opacity: 0})
  .from("#c0", {opacity: 0}, 3.3)
  .from("#c1", {opacity: 0}, 3.3)
  .from("#c2", {opacity: 0}, 3.3)
  .from("#c3", {opacity: 0}, 3.3)
  .from("#c4", {opacity: 0}, 3.3)
  .from("#c5", {opacity: 0}, 3.3);

function littleBigger(id) {

  gsap.to(id, {scale: 1.10});

}

function littleSmaller(id) {

  gsap.to(id, {scale: 1.00});

}

  $("img").mouseover(function() {

    $(this).removeClass("shadow").addClass("shadow-lg");
    littleBigger($(this));

  }).mouseleave(function() {

    $(this).removeClass("shadow-lg").addClass("shadow");
    littleSmaller($(this));

  })
