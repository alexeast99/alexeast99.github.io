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
    .from("#c0", {opacity: 0}, 3.3)
    .from("#c1", {opacity: 0}, 3.3)
    .from("#c2", {opacity: 0}, 3.3)
    .from("#c3", {opacity: 0}, 3.3)
    .from("#c4", {opacity: 0}, 3.3)
    .from("#c5", {opacity: 0}, 3.3);

}
