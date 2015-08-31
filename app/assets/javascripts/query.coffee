# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
	$("#toggle-dept").click ->
		$("#dept-list").slideToggle()
		$(this).animateRotate(180)
	$(".timetable td").hover(
		->
			tdNow = $(this).attr 'class'
			$("td."+tdNow).css "background-color", "rgba(0, 0, 0, 0.25)"
			$(this).siblings().not(".period").css "background-color", "rgba(0, 0, 0, 0.25)"
			$(this).css "background-color", "rgba(0, 0, 0, 0.5)"
			$(this).siblings().filter(".period").css {
				backgroundColor: "#2a8658",
				color: "white",
				right: "5px",
				boxShadow: "2px 0px 5px 0px rgba(0,0,0,0.75)"
			}
			$("th."+tdNow+"h").css {
				backgroundColor: "#2a8658",
				color: "white"
				bottom: "5px",
				boxShadow: "0px 2px 5px 0px rgba(0,0,0,0.75)"
			}
		->
			tdNow = $(this).attr 'class'
			$("td."+tdNow).css "background-color", "transparent"
			$(this).siblings().not(".period").css "background-color", "transparent"
			$(this).siblings().filter(".period").css {
				backgroundColor: "transparent",
				color: "rgba(0, 0, 0, 0.54)",
				right: "0px",
				boxShadow: "none"
			}
			$("th."+tdNow+"h").css {
				backgroundColor: "transparent",
				color: "rgba(0, 0, 0, 0.54)",
				bottom: "0px",
				boxShadow: "none"
			}
	)