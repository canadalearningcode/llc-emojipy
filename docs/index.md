---
title: Emoji Art with Processing and Python
program: Adult Programs, Ladies Learning Code
---

<main>

<section id="slide-content">
{% for slidegroups in site.slides %}
    {% for slide in slidegroups | split: "<h2>" %}
        <article>
            <div>
    <h2>{{ slide.content }}
            </div>
            {% if slide.notes %}
            <div>
            {{ slide.notes }}
            </div>
            {% endif %}
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