---
title: Emoji Art with Processing and Python
program: Adult Programs, Ladies Learning Code
---

<main>

<section id="slide-content">
{% for slidegroups in site.slides %}
    {% for slide in slidegroups.content | split: "</h2>" %}
        <article>
            {% assign header = slide | prepend: "<h2>" %} 
            {% cycle 'a':  header , slide %}
        </article>
    {% endfor %}
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