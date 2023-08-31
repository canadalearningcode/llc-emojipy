---
title: Slides
program: Adult Programs, Ladies Learning Code
layout: slide_view
---
<section id="slide-content">

    {% for slide_group in site.slides %}

        {{ slide_group }}

    {% endfor %}

</section>

{% comment %}
<section id="slide-navigation">
<ul>
{% for slide in site.slides %}
    <li><a href="#{{ slide.slide_group_name | slugify }}">{{ slide.slide_group_name }}</a></li>
{% endfor %}
{% endcomment %}
</ul>
</section>