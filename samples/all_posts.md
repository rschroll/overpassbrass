---
layout: base
title: All posts
landing-title: 'All posts'
nav-menu: true
description: null
image: null
author: null
show_tile: false
---

<!-- Main -->
<div id="main" class="alt">

  <!-- One -->
  <section id="one">
    <div class="inner">
      {% for post in site.posts %}
      {% if post.title != 404 %}
      <header class="major">
        <h1>{{ post.title }}</h1>
      </header>
      {% if post.image %}<span class="image main"><img src="{{ site.baseurl }}/{{ post.image }}" alt="" /></span>{% endif %}
      {% if post.date %}<p>{{ post.date }}</p>{% endif %}
      <p>{{ post.content }}</p>
      {% endif %}
      {% endfor %}
    </div>
  </section>

</div>