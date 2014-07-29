/////////////////////////////////////
/// Single Render Site JS ///////////
/////////////////////////////////////


$(document).ready(function() {
	console.log("singleJS 200");
	hideSection();
	hideSpacer();
	navListener();
	spacerRotate();
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
		scrollDown();
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
};

var displayProjects = function() {
	$("#index-projects").show();
};

var displayProjects = function() {
	$("#index-projects").show();
};



var scrollDown = function() {
	$("html, body").delay(1000).animate({scrollTop: $(".single-display-area").offset().top }, 2000);
};




////////////////////////////////////
/// Spacer Display and Rotation ////
////////////////////////////////////

var spacerRotate = function() {
	console.log("spacerRotate 200");

	var displayTime = 10000,
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
