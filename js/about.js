let controller = new ScrollMagic.Controller();

let fade0 = gsap.to("#d0", {opacity: 0});

let scene0 = new ScrollMagic.Scene({
  triggerHook: 0,
  duration: $(window).height()
})
  .setTween(fade0)
  .setPin("#d0");
