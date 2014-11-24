var nextGig = {
	place:'Blackbird Buvette',
	datetime:'Dec 6 @ 10pm'
};

var songs = ['Don\'t You Want Me - Human League',
	'Whip It - Devo',
	'Send Me an Angel - Real Life',
	'Relax - Frankie Goes to Hollywood',
	'Space Age Love Song - Flock of Seagulls',
	'Once In a Lifetime - Talking Heads',
	'Electic Avenue - Eddy Grant',
	'Let\'s Dance - David Bowie',
	'and more...'];

var smarkup = '<h1><span class="label label-success">';
var songsli = '';
      for (var i=0; i< songs.length; i++) {
        songsli += smarkup + songs[i] + '</span></h1>';
      }

var shocks = ['/shock','/bouncer','/fibber','/bobble'];
var shockTime = 5000;
var shockFadeIn = 3000;
var shockOn = true;
function setShock() {
	if (shockOn) {
	  $( "#containr" ).fadeOut( shockFadeIn, function(){
		var ind = Math.round(Math.random() * (shocks.length-1));
		window.location = shocks[ind];	  	
	  } );
	}
}

function gotoPage(pname){
	window.location = pname;
}

