<div id="message-sidebar" class="widget">
	<div id="message-new"><a href="{{$new.url}}" class="{{if $new.sel}}newmessage-selected{{/if}}">{{$new.label}}</a> </div>
	
	<ul class="message-ul">
		{{foreach $tabs as $t}}
			<li class="tool"><a href="{{$t.url}}" class="message-link{{if $t.sel}}message-selected{{/if}}">{{$t.label}}</a></li>
		{{/foreach}}
	</ul>
	
</div>
