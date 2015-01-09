<ul id="mainmenu">
  {% unless site.root_item.hidden? %}<li><a href="{{ site.root_item.url }}"{% if site.root_item.current? %} class="active"{% endif %}>{{site.root_item.title}}</a></li>{% endunless %}
 {% for item in site.visible_menuitems %}
   <li{% unless item.translated? %} class="untranslated"{% endunless %}><a href="{{ item.url }}"{% unless item.translated? %} class="fci-editor-menuadd"{% endunless %}{% if item.selected? %} class="active"{% endif %}>{{ item.title }}</a>   
{% if item.selected? %}
    {% if editmode %}
        <ul class="submenu">
            {% for level2 in item.visible_children %}
               <li{% unless level2.translated? %} class="untranslated"{% endunless %}><a href="{{ level2.url }}"{% unless level2.translated? %} class="fci-editor-menuadd"{% endunless %}{% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a></li>
             {% endfor %}
                 <li>{% menubtn item.hidden_children %}</li>
            <li>{% menuadd parent="item" %}</li>
        </ul>
    {% else %}
     {% if item.children? %}
     <ul class="submenu">
     
     {% for level2 in item.children %}
       <li><a href="{{ level2.url }}"{% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a></li>
     {% endfor %}
     </ul>
     {% endif %}
{% endif %}
{% endif %}
   </li>
 {% endfor %}
                 <li>{% menubtn site.hidden_menuitems %}</li>
<li>{%menuadd%}</li>
</ul>
<!-- //navmenu -->