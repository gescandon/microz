function piResponse() {
piSetCookie('visitor_id36622', '272003806', 3650);

if (document.location.protocol != "https:") {
var analytics_link = "http://" + "lp2.heroku.com/analytics?";
pi.tracker.visitor_id='272003806'
var variables = 'conly=true';
for (property in pi.tracker) {
	variables += "&"+property+"="+pi.tracker[property];
}
var headID = document.getElementsByTagName("head")[0];
piScriptObj[piScriptNum] = document.createElement('script');
piScriptObj[piScriptNum].type = 'text/javascript';
piScriptObj[piScriptNum].src = analytics_link + variables;
headID.appendChild(piScriptObj[piScriptNum]);
piScriptObj[piScriptNum].onload = function() { return; }
}
}
piResponse();




