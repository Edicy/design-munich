<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
  <title>{% unless page.site_title == "" %}{{ page.site_title }} &gt; {% endunless %}{{page.title}}</title>
</head>

<body>
	
	<div id="wrap"{% if site.search.enabled %} style="padding-top: 86px;"{% endif %}>
   {% if site.search.enabled %}<div id="search">
<form action="" class="edys-search">
<div><input type="text" id="onpage_search" placeholder="{{  "search" | lc }}"/></div>
</form>
</div>{% endif %}
   
   
   
   <div id="leftside">
       {% include "Langmenu" %}
       <div id="header" class="clearfix">
           {% editable site.header %}
       </div> <!-- //header -->
       {% include "Mainmenu" %}
   </div>
   
   <div id="container" class="content-hyphenate">
     
     <div id="content" class="clearfix" data-search-indexing-allowed="true">
       
       {% content %}
       <div class="clearer"></div>
     </div> <!-- //content -->
     
     <div id="footer" class="clearfix content-hyphenate">
       
       
       {% content name="footer" xpage="true" %}
       <div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
     </div> <!-- //footer -->
     
   </div> <!-- //container -->
   <div class="clearer"></div>
   
    
  </div> <!-- //wrap -->
{% unless editmode %}{{ site.analytics }}{% endunless %}
  {% include "JS" %}
</body>
</html>