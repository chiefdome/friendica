{{if $item.indent}}{{else}}
<div class="wall-item-decor">
	<img id="like-rotator-{{$item.id}}" class="like-rotator" src="images/rotator.gif" alt="{{$item.wait}}" title="{{$item.wait}}" style="display: none;" />
</div>
{{/if}}
<div class="wall-item-container {{$item.indent}}">
	<div class="wall-item-item">
		<div class="wall-item-info">
			<div class="contact-photo-wrapper"
				onmouseover="if (typeof t{{$item.id}} != 'undefined') clearTimeout(t{{$item.id}}); openMenu('wall-item-photo-menu-button-{{$item.id}}')" 
				onmouseout="t{{$item.id}}=setTimeout('closeMenu(\'wall-item-photo-menu-button-{{$item.id}}\'); closeMenu(\'wall-item-photo-menu-{{$item.id}}\');',200)">
				<a href="{{$item.profile_url}}" target="redir" title="{{$item.linktitle}}" class="contact-photo-link" id="wall-item-photo-link-{{$item.id}}">
					<img src="{{$item.thumb}}" class="contact-photo{{$item.sparkle}}" id="wall-item-photo-{{$item.id}}" alt="{{$item.name}}" />
				</a>
				<a href="#" rel="#wall-item-photo-menu-{{$item.id}}" class="contact-photo-menu-button icon s16 menu" id="wall-item-photo-menu-button-{{$item.id}}">menu</a>
				<ul class="contact-menu menu-popup" id="wall-item-photo-menu-{{$item.id}}">
				{{$item.item_photo_menu}}
				</ul>
				
			</div>
		</div>
			<div class="wall-item-actions-author">
				<a href="{{$item.profile_url}}" target="redir" title="{{$item.linktitle}}" class="wall-item-name-link"><span class="wall-item-name{{$item.sparkle}}">{{$item.name}}</span></a> 
			<span class="wall-item-ago">-
			{{if $item.plink}}<a class="link" title="{{$item.plink.title}}" href="{{$item.plink.href}}" style="color: #999">{{$item.ago}}</a>{{else}} {{$item.ago}} {{/if}}
			{{if $item.lock}} - <span class="fakelink" style="color: #999" onclick="lockview(event,{{$item.id}});">{{$item.lock}}</span> {{/if}}
			</span>
			</div>
		<div class="wall-item-content">
			{{if $item.title}}<h2><a href="{{$item.plink.href}}">{{$item.title}}</a></h2>{{/if}}
			{{$item.body}}
			{{if $item.has_cats}}
			<div class="categorytags"><span>{{$item.txt_cats}} {{foreach $item.categories as $cat}}{{$cat.name}} <a href="{{$cat.removeurl}}" title="{{$remove}}">[{{$remove}}]</a> {{if $cat.last}}{{else}}, {{/if}}{{/foreach}}
			</div>
			{{/if}}

			{{if $item.has_folders}}
			<div class="filesavetags"><span>{{$item.txt_folders}} {{foreach $item.folders as $cat}}{{$cat.name}} <a href="{{$cat.removeurl}}" title="{{$remove}}">[{{$remove}}]</a> {{if $cat.last}}{{else}}, {{/if}}{{/foreach}}
			</div>
			{{/if}}
		</div>
	</div>
	<div class="wall-item-bottom">
		<div class="wall-item-links">
		</div>
		<div class="wall-item-tags">
			{{foreach $item.tags as $tag}}
				<span class='tag'>{{$tag}}</span>
			{{/foreach}}
		</div>
	</div>
	<div class="wall-item-bottom">
		<div class="">

		</div>
		<div class="wall-item-actions">

			<div class="wall-item-actions-social">
			
			
			{{if $item.vote}}
				<a href="#" id="like-{{$item.id}}" class="icon like" title="{{$item.vote.like.0}}" onclick="dolike({{$item.id}},'like'); return false">{{$item.vote.like.1}}</a>
				<a href="#" id="dislike-{{$item.id}}" class="icon dislike" title="{{$item.vote.dislike.0}}" onclick="dolike({{$item.id}},'dislike'); return false"></a>
			{{/if}}
						
			{{if $item.vote.share}}
				<a href="#" id="share-{{$item.id}}" class="icon recycle" title="{{$item.vote.share.0}}" onclick="jotShare({{$item.id}}); return false"></a>
			{{/if}}	


			{{if $item.star}}
				<a href="#" id="starred-{{$item.id}}" onclick="dostar({{$item.id}}); return false;" class="star-item icon {{$item.isstarred}}" title="{{$item.star.toggle}}">
				<img src="images/star_dummy.png" class="icon star" alt="{{$item.star.do}}" /> </a>
				<a href="#" id="tagger-{{$item.id}}" onclick="itemTag({{$item.id}}); return false;" class="tag-item icon tagged" title="{{$item.star.tagger}}"></a>					  
			{{/if}}	
			
			{{if $item.filer}}
			<a href="#" id="filer-{{$item.id}}" onclick="itemFiler({{$item.id}}); return false;" class="filer-item icon file-as" title="{{$item.star.filer}}"></a>
			{{/if}}				
			
			{{if $item.plink}}<a class="icon link" title="{{$item.plink.title}}" href="{{$item.plink.href}}">{{$item.plink.title}}</a>{{/if}}
			
					
					
			</div>
			
			<div class="wall-item-actions-tools">

				{{if $item.drop.pagedrop}}
					<input type="checkbox" title="{{$item.drop.select}}" name="itemselected[]" class="item-select" value="{{$item.id}}" />
				{{/if}}
				{{if $item.drop.dropping}}
					<a href="item/drop/{{$item.id}}" onclick="return confirmDelete();" class="icon drop" title="{{$item.drop.delete}}">{{$item.drop.delete}}</a>
				{{/if}}
				{{if $item.edpost}}
					<a class="icon pencil" href="{{$item.edpost.0}}" title="{{$item.edpost.1}}"></a>
				{{/if}}
			</div>
			<div class="wall-item-location">{{$item.location}}&nbsp;</div>
		</div>
	</div>
	<div class="wall-item-bottom">
		<div class="wall-item-links"></div>
		<div class="wall-item-like" id="wall-item-like-{{$item.id}}">{{$item.like}}</div>
		<div class="wall-item-dislike" id="wall-item-dislike-{{$item.id}}">{{$item.dislike}}</div>	
	</div>
</div>

<div class="wall-item-comment-wrapper" >
	{{$item.comment}}
</div>
