---
title: Home
layout: base
header-layout: home
landing-title: Overpass Brass
description: null
nav-order: 0
image: null
author: null
---

<!-- Banner -->
<section id="banner" class="major">
    <div class="inner">
        <header class="major">
            <h1>{{ page.landing-title }}</h1>
        </header>
        <div class="content">
            <p style="text-transform: uppercase;">{{ site.description }}</p>
        </div>
    </div>
</section>

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v24.0&appId=APP_ID"></script>

<!-- Main -->
<div id="main">

  <!-- One -->
  {% include tiles.html %}

  <!-- Two -->
  <section id="two">
    <div class="inner">
      <div class="row">
        <div class="6u 12u$(small)">
          <header class="major">
              <h2>Upcoming Gigs</h2>
          </header>
          <p>Overpass Brass performs sporadically across the bay area. Watch our <a href="https://www.facebook.com/UnderpassBrass">Facebook page</a> for announcements of upcoming shows.</p>
        </div>
        <div class="6u 12u$(small) align-right">
          <div class="fb-page"
                data-href="https://www.facebook.com/UnderpassBrass"
                data-tabs="timeline"
                data-width="500"
                data-height=""
                data-small-header="false"
                data-adapt-container-width="true"
                data-hide-cover="false"
                data-show-facepile="true">
            <blockquote cite="https://www.facebook.com/UnderpassBrass" class="fb-xfbml-parse-ignore">
              <a href="https://www.facebook.com/UnderpassBrass">Overpass Brass</a>
            </blockquote>
          </div>
        </div>
      </div>
    </div>
  </section>

</div>
