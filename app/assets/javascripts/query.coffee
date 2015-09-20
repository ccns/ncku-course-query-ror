# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
	$("#app-area").css {
		height: $( document ).height(),
		width: $( document ).width()
	}

	$("#result").height $( document ).height() - $( "#filter" ).height() - 20

	$( window ).resize ->
		$("#app-area").css {
			height: $( document ).height(),
			width: $( document ).width()
		}

	$("#toggle-dept").click ->
		$("#dept-list-containter").slideToggle ->
			$("#result").height $( document ).height() - $( "#filter" ).height() - 20
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
				color: "black",
				right: "",
				boxShadow: ""
			}
			$("th."+tdNow+"h").css {
				backgroundColor: "",
				color: "black",
				bottom: "",
				boxShadow: ""
			}
	)

	$(".timetable td").click ->
		$(this).toggleClass("selected")

	$("#reset").click ->
		$(".timetable td").removeClass("selected")
