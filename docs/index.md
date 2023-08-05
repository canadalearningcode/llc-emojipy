---
title: Emoji Art with Processing and Python
program: Adult Programs, Ladies Learning Code
---

<main>

<section id="slide-content">

{% for group in site.slides %}

<section class="slide-group">
    {{ group.content | inspect }}
    {{ group.content | split: "<h2>" | inspect }}
    {% for slide in group.content | split: "<h2>" %}
        {{ slide | inspect }}
        <article class="slide">
            {{ slide | prepend: "<h2>" }}
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