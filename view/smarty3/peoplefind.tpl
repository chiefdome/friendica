<div id="peoplefind-sidebar" class="widget">
	<h3>{{$findpeople}}</h3>
	<div id="peoplefind-desc">{{$desc}}</div>
	<form action="dirfind" method="post" />
		<input id="side-peoplefind-url" type="text" name="search" size="24" title="{{$hint}}" /><input id="side-peoplefind-submit" type="submit" name="submit" value="{{$findthem}}" />
	</form>
	<div class="side-link" id="side-match-link"><a href="match" >{{$similar}}</a></div>
	<div class="side-link" id="side-suggest-link"><a href="suggest" >{{$suggest}}</a></div>
	<div class="side-link" id="side-random-profile-link" ><a href="randprof" target="extlink" >{{$random}}</a></div>
	{{if $inv}} 
	<div class="side-link" id="side-invite-link" ><a href="invite" >{{$inv}}</a></div>
	{{/if}}
</div>

