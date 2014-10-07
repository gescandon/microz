var nextGig = {
	place:'Blackbird Buvette',
	datetime:'Nov 1 @ 10pm'
};

var songs = ['Missing Persons - Destination Unknown',
	'Devo - Whip It',
	'Berlin - Metro',
	'Frankie Goes to Hollywood - Relax',
	'B-52s - Planet Claire'];

var smarkup = '<h1><span class="label label-success">';
var songsli = '';
      for (var i=0; i< songs.length; i++) {
        songsli += smarkup + songs[i] + '</span></h1>';
      }
