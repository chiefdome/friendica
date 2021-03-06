{{if $dropping}}
<div id="item-delete-selected-top" class="fakelink" onclick="deleteCheckedItems('#item-delete-selected-top');">
  <div id="item-delete-selected-top-icon" class="icon drophide" title="{{$dropping}}" onmouseover="imgbright(this);" onmouseout="imgdull(this);" ></div>
  <div id="item-delete-selected-top-desc" >{{$dropping}}</div>
</div>
<img id="item-delete-selected-top-rotator" class="like-rotator" src="images/rotator.gif" style="display: none;" />
{{else}}
{{if $mode==display}}
<div id="display-top-padding"></div>
{{/if}}
{{/if}}

{{$live_update}}

{{foreach $threads as $thread}}
{{include file="file:{{$thread.template}}" item=$thread}}
{{/foreach}}

<div id="conversation-end"></div>

{{if $dropping}}
<div id="item-delete-selected" class="fakelink" onclick="deleteCheckedItems('#item-delete-selected');">
  <div id="item-delete-selected-icon" class="icon drophide" title="{{$dropping}}" onmouseover="imgbright(this);" onmouseout="imgdull(this);" ></div>
  <div id="item-delete-selected-desc" >{{$dropping}}</div>
</div>
<img id="item-delete-selected-rotator" class="like-rotator" src="images/rotator.gif" style="display: none;" />
<div id="item-delete-selected-end"></div>
{{/if}}
