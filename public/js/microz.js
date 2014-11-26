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


var words = [['You were working as a waitress in a cocktail bar'],
['She drove a Plymouth Satellite', 'faster than the speed of light'],
['Good heavens Miss Sakamoto','you\'re beautiful!'],
['Go forward', 'Move ahead'],
['When I see you', 'eyes will turn blue'],
['I thought about you while the radio played'],
['Open fire on my burning heart', 'I\'ve never been lucky in love'],
['There is water', 'at the bottom of the ocean'],
['Hit me with those laser beams'],
['Don\'t touch me', 'I\'m a real live wire'],
['Once I ran to you', 'now I run from you'],
['And if you say run', 'I\'ll run with you'],
['Your empty eyes', 'Seem to pass me by'],
['You shouldn\'t let your manners slip','You\'re to precious']];

var colorz = ['#ed2373',"#e8ea00","#0085d7","#75e100"];

function getElement(varArr) {
	var ind = Math.round(Math.random() * (varArr.length-1));
	return ind;
}
var smarkup = '<h1><span class="label label-success">';
var songsli = '';
      for (var i=0; i< songs.length; i++) {
        songsli += smarkup + songs[i] + '</span></h1>';
      }

var shocks = ['/shock','/bouncer','/fibber','/bobble','/singer'];
var shockTime = 23000;
var shockFadeIn = 3000;
var shockOn = true;
function setShock() {
	if (shockOn) {
	  $( "#shockbox" ).fadeOut( shockFadeIn, function(){
		var ind = getElement(shocks);
		window.location = shocks[ind];	  	
	  } );
	}
}

function gotoPage(pname){
	window.location = pname;
}

function getColor() {
	return colorz[getElement(colorz)];
}
function getLyric() {
	var wrd = words[getElement(words)];
	console.log (wrd[0]);
	return wrd;
}