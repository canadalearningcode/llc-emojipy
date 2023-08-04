---
title: Emoji Art with Processing and Python
program: Adult Programs, Ladies Learning Code
---

<main>

<section id="slide-content">
{% for slide in site.slides %}
    <section class="slide-group">
    <header><h1 id="{{ slide.slide_group_name | slugify }}">{{ slide.slide_group_name }}</h1></header>
    {{ slide.content }}
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