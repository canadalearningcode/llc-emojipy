---
title: Emoji Art with Processing and Python
program: Adult Programs, Ladies Learning Code
---

<main>

<section id="slide-content">

{% for group in site.slides %}

<section class="slide-group">
    {% assign slidegroup = group.content | split: "<h2" %}
    {% for slide in slidegroup %}
        {% if slide contains "/h2>" %}
        <article class="slide">
            {{ slide | prepend: "<h2" }}
        </article>
        {% endif %}
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