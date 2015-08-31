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
		->
			tdNow = $(this).attr 'class'
			$("td."+tdNow).css "background-color", "transparent"
			$(this).siblings().not(".period").css "background-color", "transparent"
	)