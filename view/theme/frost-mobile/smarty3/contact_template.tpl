
<div class="contact-entry-wrapper" id="contact-entry-wrapper-{{$contact.id}}" >
	<div class="contact-entry-photo-wrapper" >
		<div class="contact-entry-photo mframe" id="contact-entry-photo-{{$contact.id}}"
		onmouseover="if (typeof t{{$contact.id}} != 'undefined') clearTimeout(t{{$contact.id}});" 
		onmouseout="t{{$contact.id}}=setTimeout('closeMenu(\'contact-photo-menu-{{$contact.id}}\');',200)" >

<!--			<a href="{{$contact.url}}" title="{{$contact.img_hover}}" /><img src="{{$contact.thumb}}" {{$contact.sparkle}} alt="{{$contact.name}}" /></a>-->
			<span onclick="openClose('contact-photo-menu-{{$contact.id}}');" class="fakelink contact-photo-menu-button" id="contact-photo-menu-button-{{$contact.id}}">
			<img src="{{$contact.thumb}}" {{$contact.sparkle}} alt="{{$contact.name}}" />
			</span>

			{{if $contact.photo_menu}}
<!--			<span onclick="openClose('contact-photo-menu-{{$contact.id}}');" class="fakelink contact-photo-menu-button" id="contact-photo-menu-button-{{$contact.id}}">menu</span>-->
                <div class="contact-photo-menu" id="contact-photo-menu-{{$contact.id}}">
                    <ul>
                        {{$contact.photo_menu}}
                    </ul>
                </div>
			{{/if}}
		</div>
			
	</div>
	<div class="contact-entry-photo-end" ></div>
		<div class="contact-entry-name" id="contact-entry-name-{{$contact.id}}" >{{$contact.name}}</div><br />
{{if $contact.alt_text}}<div class="contact-entry-details" id="contact-entry-rel-{{$contact.id}}" >{{$contact.alt_text}}</div>{{/if}}
	<div class="contact-entry-network" id="contact-entry-network-{{$contact.id}}" >{{$contact.network}}</div>

	<div class="contact-entry-end" ></div>
</div>
