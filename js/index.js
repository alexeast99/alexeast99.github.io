function pop() {
  $("#name").popover('show');
}

if (!document.cookie) {
  document.cookie = "value=here";

  let timeline = new gsap.timeline({
    defaults: {
      duration: 1.2,
      ease: "slow"
    },
    onComplete: pop
  });

  timeline
    .from("#name", {opacity: 0, delay: .7})
    .from("#developer", {opacity: 0})
    .from("#engineer", {opacity: 0})

  $(document).click(function(){
    $("#name").popover('hide');
  });
}

let bye = gsap.to(".sl-d", {opacity: 0, duration: .25});

let disappear = gsap.to("#screenimg", {opacity: .70});

let controller = new ScrollMagic.Controller();

let scene = new ScrollMagic.Scene({
  triggerHook: "onEnter"
})
  .setPin("#screenimg-cont", {pushFollowers: false})
  .addTo(controller);

let scene1a = new ScrollMagic.Scene({
  triggerHook: "onEnter",
  duration: $(window).height()
})
  .setTween(disappear)
  .addTo(controller);

let scene2 = new ScrollMagic.Scene({
  triggerHook: 0,
  triggerElement: "#firstRow"
})
  .setPin("#firstRow", {pushFollowers: false})
  .addTo(controller);

let scene3 = new ScrollMagic.Scene({
  triggerHook: .1,
  triggerElement: "#secondRow"
})
  .setTween(bye)
  .addTo(controller);
