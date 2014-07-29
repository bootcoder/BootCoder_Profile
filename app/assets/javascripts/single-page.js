/////////////////////////////////////
/// Single Render Site JS ///////////
/////////////////////////////////////

$(document).ready(function() {
	console.log("singleJS 200");
	hideSection();
	hideSpacer();
	navListener();
	spacerRotate();
	console.log("load complete");
});


var hideSection = function() {
console.log("HIDE THAT SHIT!");
	$(".index-section").hide();
};

var hideSpacer = function() {
console.log("HIDE THAT SHIT!");
	$(".index-spacer").hide();
};




///////////////////////////////////
/// Event Listeners ///////////////
///////////////////////////////////

var navListener = function() {
	
	$("#projects-nav").on("click", function(e){
		e.preventDefault();
		hideSection();
		displayProjects();
		scrollDown();
	});

	$("#resume-nav").on("click", function(e){
		e.preventDefault();
		hideSection();
		displayResume();
		scrollDown();
	});

	$("#skills-nav").on("click", function(e){
		e.preventDefault();
		hideSection();
		displaySkills();
		scrollDown();
	});

	$("#history-nav").on("click", function(e){
		e.preventDefault();
		hideSection();
		displayHistory();
		scrollDown();
	});

	$("#contact-nav").on("click", function(e){
		e.preventDefault();
		hideSection();
		displayContact();
	});

};



///////////////////////////////////
/// Section Div Displays //////////
///////////////////////////////////

var displayProjects = function() {
	$("#index-projects").show();
};

var displayResume = function() {
	$("#index-resume").show();
};

var displaySkills = function() {
	$("#index-skills").show();
};

var displayHistory = function() {
	$("#index-history").show();
};

var displayContact = function() {
	$("#index-contact").show();
	scrollDown();
};



var scrollDown = function() {
	console.log("inside scrollDown");
	$("html, body").delay(500).animate({scrollTop: $(".single-display-area").offset().top }, 1000);
	console.log("end scrollDown");
};




////////////////////////////////////
/// Spacer Display and Rotation ////
////////////////////////////////////

var spacerRotate = function() {
	console.log("spacerRotate 200");

	var displayTime = 4000,
			transitionTime = 2000;

	var currentIndex = 0;

	var $slides = $('#single-display-spacers section');
	console.log($slides);
	function animateBG() {
		$('#index-spacer'+currentIndex).hide();
		console.log("inside-animateBG");
		currentIndex = (currentIndex < 3) ? currentIndex + 1 : 0;
		$('#index-spacer'+currentIndex).show();
		setTimeout(function(){
			console.log("inside-timeout");
			console.log(currentIndex);
			animateBG();
		},	displayTime);
	}
	animateBG();
};
