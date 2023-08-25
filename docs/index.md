---
title: Emoji Art with Processing and Python
program: Adult Programs, Ladies Learning Code
---

<main>

<section id="slide-content">

{% for group in site.slides %}

<section class="slide-group" id="slide-group-{{ group.slide_group_name | slugify }}" >

    {% assign slide_group = group.content | split: "<hr />" %}
    {% for slide in slide_group %}
        <article class="slide" id="{{ group.slide_group_name | slugify }}-{{ forloop.index }}">
            {{ slide | replace: "<!--#","" | replace: "#-->","" }}
        </article>

    {% endfor %}
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