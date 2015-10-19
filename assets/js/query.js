$(document).ready(function() {
  $('.modal-trigger').leanModal();
  $("#app-area").css({
    height: $(document).height(),
    width: $(document).width()
  });
  $("#result").height($(document).height() - $("#filter").height() - 20);
  $(window).resize(function() {
    return $("#app-area").css({
      height: $(document).height(),
      width: $(document).width()
    });
  });
  $("#toggle-dept").click(function() {
    $("#dept-list-containter").slideToggle(function() {
      return $("#result").height($(document).height() - $("#filter").height() - 20);
    });
    return $(this).animateRotate(180);
  });
  $(".timetable td").hover(function() {
    var tdNow;
    tdNow = $(this).attr('class');
    tdNow = tdNow.split(' ', 1);
    $("td." + tdNow).not(".selected").css("background-color", "rgba(0, 0, 0, 0.2)");
    $(this).siblings().not(".period").not(".selected").css("background-color", "rgba(0, 0, 0, 0.2)");
    $(this).css("background-color", "rgba(0, 0, 0, 0.3)");
    $(this).siblings().filter(".period").css({
      backgroundColor: "#2a8658",
      color: "white",
      right: "5px",
      boxShadow: "2px 0px 5px 0px rgba(0,0,0,0.75)"
    });
    return $("th." + tdNow + "h").css({
      backgroundColor: "#2a8658",
      color: "white",
      bottom: "5px",
      boxShadow: "0px 2px 5px 0px rgba(0,0,0,0.75)"
    });
  }, function() {
    var tdNow;
    tdNow = $(this).attr('class');
    tdNow = tdNow.split(' ', 1);
    $("td." + tdNow).css("background-color", "");
    $(this).siblings().not(".period").css("background-color", "");
    $(this).siblings().filter(".period").css({
      backgroundColor: "",
      color: "black",
      right: "",
      boxShadow: ""
    });
    return $("th." + tdNow + "h").css({
      backgroundColor: "",
      color: "black",
      bottom: "",
      boxShadow: ""
    });
  });
  $(".timetable td").click(function() {
    return $(this).toggleClass("selected");
  });
  return $("#reset").click(function() {
    return $(".timetable td").removeClass("selected");
  });
});
