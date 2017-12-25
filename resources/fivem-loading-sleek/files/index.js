$( document ).ready(function() {
  setTimeout(loadDatSkweenie, 2000);
});

function loadDatSkweenie() {
	var rules = ["Do not RDM or VDM.", 
				"A microphone is a requirement.", 
				"Do not abuse/exploit bugs.", 
				"Do not use cheats.", 
				"No racism",
				"Do not harass others.",
				"Use common sense.",
				"Remember Its RP."
				]
	var fadeTime = 500
	var fadeTime2 = 500
		$(".infohold").fadeIn(900)
		$(".steamid").show(900)
	$(rules).each(function( i ) {
		var rCount = Number(i) 
		fadeTime2 = fadeTime2 + 300
		$(".block .text:nth-child("+rCount+")").hide()
		$( ".block:nth-child(1)" ).append( "<p class='text'>"+rules[rCount]+"</p>" )
		$(".block .text:nth-child("+rCount+")").show(fadeTime2)
	})
};