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
			tdNow = tdNow.split ' ', 1
			# td hover
			$("td."+tdNow).not(".selected").css "background-color", "rgba(0, 0, 0, 0.2)"
			$(this).siblings().not(".period").not(".selected").css "background-color", "rgba(0, 0, 0, 0.2)"
			$(this).css "background-color", "rgba(0, 0, 0, 0.3)"
			# th hover
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
			tdNow = tdNow.split ' ', 1
			# td hover
			$("td."+tdNow).css "background-color", ""
			$(this).siblings().not(".period").css "background-color", ""
			# th hover
			$(this).siblings().filter(".period").css {
				backgroundColor: "",
				color: "rgba(0, 0, 0, 0.54)",
				right: "",
				boxShadow: ""
			}
			$("th."+tdNow+"h").css {
				backgroundColor: "",
				color: "rgba(0, 0, 0, 0.54)",
				bottom: "",
				boxShadow: ""
			}
	)

	$(".timetable td").click -> 
		$(this).toggleClass("selected")
		
	$("#reset").click ->
		$(".timetable td").removeClass("selected")
	