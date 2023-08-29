---
title: Slides
program: Adult Programs, Ladies Learning Code
# layout: slide_group
---

<main>

<section id="slide-content">

{% for group in site.slides %}

<section class="slide-group" id="slide-group-{{ group.slide_group_name | slugify }}" >

    {{ group }}
    
    {% comment %}
    {% include slide_group.md content=group %}

    
    {% assign slide_group = group.content | split: "<hr />" %}
    {% assign slide_nav = group.content | replace: "<!--#","<" | replace: "#-->",">" | split: "</nav>" | first | append: "</nav>" %}

        {{ slide_nav }}
    
    {% for slide in slide_group %}
        <article class="slide" id="{{ group.slide_group_name | slugify }}-{{ forloop.index }}">
            {{ slide }}
        </article>

    {% endfor %}
    {% endcomment %}
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

</main>