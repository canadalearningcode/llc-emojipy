---
title: Emoji Art with Processing and Python
program: Adult Programs, Ladies Learning Code
---

<main>

<section id="slide-content">

{% for group in site.slides %}

<section class="slide-group">
    {% assign slide_group = group.content | split: "<hr />" %}
    <pre>
        {{ group.content | split: "<hr />" }}
    </pre>
    <pre>
        {{ slide_group | inspect }}
    </pre>
    {% for slide in slide_group %}
        
        <article class="slide">
            {{ slide | inspect }}
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