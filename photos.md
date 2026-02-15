---
layout: page
title: Photos
description: null
nav-order: 2
tile-order: 2
image: assets/photos/20250824-neighborhood-party/DSC8725.jpeg
---

{% assign photos = site.static_files
    | where_exp: "item", "item.path contains 'assets/photos'"
    | sort: "path"
    | reverse %}

<style>
  span.image.fit img {
    height: 20vw;
    object-fit: cover;
    transform: scale(1);
    transition: transform 0.3s ease;

    &:hover {
      transform: scale(1.05);
    }
  }
</style>

<script src="
https://cdn.jsdelivr.net/npm/lightbox2@2.11.5/dist/js/lightbox.min.js
" defer></script>
<link href="
https://cdn.jsdelivr.net/npm/lightbox2@2.11.5/dist/css/lightbox.min.css
" rel="stylesheet">

<div class="box alt">
  <div class="row 50% uniform">
    {% for file in photos %}
      {% capture credits %}
        {% include_relative {{ file.path | replace: file.name, "_credit.md" }} %}
      {% endcapture %}
      <div class="{% cycle '4u', '5u', '3u', '3u', '5u', '4u' %}">
        <span class="image fit">
          <a href="{% link {{ file.path }} %}" data-lightbox="photos" data-title="{{ credits }}">
            <img src="{% link {{ file.path }} %}" alt="Photograph" title="{{ credits }}" />
          </a>
        </span>
      </div>
    {% endfor %}
  </div>
</div>
