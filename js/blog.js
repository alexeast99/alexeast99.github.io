let controller = new ScrollMagic.Controller();

let fadeAway0 = gsap.to("#p0", {opacity: 0});

let scene0 = new ScrollMagic.Scene({
  triggerElement: "#p0-trigger",
  duration: $(window).height() + 250
})
  .setTween(fadeAway0)
  .setPin("#p0");

controller.addScene(scene0);
