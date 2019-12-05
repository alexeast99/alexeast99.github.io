if (!document.cookie) {
  document.cookie = "value=here";

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
    .from("#screenimg", {opacity: 0}, 3.3);

}

let bye = gsap.to(".sl-d", {opacity: 0, duration: .25});

let disappear = new gsap.timeline({})
  .to("#screenimg", {opacity: 0}, 0);

let controller = new ScrollMagic.Controller();

let scene = new ScrollMagic.Scene({
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
