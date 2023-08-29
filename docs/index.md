---
title: Slides
program: Adult Programs, Ladies Learning Code
# layout: slide_group
---
<section id="slide-content">

    {% for slide_group in site.slides %}

    <section class="slide-group" id="slide-group-{{ slide_group.slide_group_name | slugify }}" >

        {{ slide_group }}

    </section>

    {% endfor %}

</section>

<section id="slide-navigation">
<ul>
{% for slide in site.slides %}
    <li><a href="#{{ slide.slide_group_name | slugify }}">{{ slide.slide_group_name }}</a></li>
{% endfor %}
</ul>
</section>