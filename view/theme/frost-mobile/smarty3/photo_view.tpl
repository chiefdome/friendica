<div id="live-display"></div>
<h3><a href="{{$album.0}}">{{$album.1}}</a></h3>

<div id="photo-edit-link-wrap">
{{if $tools}}
<a id="photo-edit-link" href="{{$tools.edit.0}}">{{$tools.edit.1}}</a>
|
<a id="photo-toprofile-link" href="{{$tools.profile.0}}">{{$tools.profile.1}}</a>
{{/if}}
{{if $lock}} | <img src="images/lock_icon.gif" class="lockview" alt="{{$lock}}" onclick="lockview(event,'photo/{{$id}}');" /> {{/if}}
</div>

<div id="photo-nav">
	{{if $prevlink}}<div id="photo-prev-link"><a href="{{$prevlink.0}}"><img src="view/theme/frost-mobile/images/arrow-left.png"></a></div>{{/if}}
	{{if $nextlink}}<div id="photo-next-link"><a href="{{$nextlink.0}}"><img src="view/theme/frost-mobile/images/arrow-right.png"></a></div>{{/if}}
</div>
<div id="photo-photo"><a href="{{$photo.href}}" title="{{$photo.title}}"><img src="{{$photo.src}}" /></a></div>
<div id="photo-photo-end"></div>
<div id="photo-caption">{{$desc}}</div>
{{if $tags}}
<div id="in-this-photo-text">{{$tags.0}}</div>
<div id="in-this-photo">{{$tags.1}}</div>
{{/if}}
{{if $tags.2}}<div id="tag-remove"><a href="{{$tags.2}}">{{$tags.3}}</a></div>{{/if}}

{{if $edit}}
{{$edit}}
{{else}}

{{if $likebuttons}}
<div id="photo-like-div">
	{{$likebuttons}}
	{{$like}}
	{{$dislike}}	
</div>
{{/if}}

{{$comments}}

{{$paginate}}
{{/if}}

