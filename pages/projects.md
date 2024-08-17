---
layout: page
title: /projects
permalink: /projects/
---

<div class="github-stats-container">
  <img src="https://github-readme-stats.vercel.app/api?username=omkar-334&&theme=transparent&rank_icon=github&custom_title=Github+Stats&show_icons=true" alt="Github Stats" class="github-stat-img">
  <img src="https://github-readme-stats-git-masterrstaa-rickstaa.vercel.app/api/top-langs/?username=omkar-334&layout=compact&langs_count=8&theme=transparent" alt="Language Stats" class="github-stat-img">
</div>
<br>
<div class="projects">
  {%- assign sorted_projects = site.projects | sort: "importance" -%}

  <div class="grid">
    {%- for project in sorted_projects -%}
      {% include projects.html %}
    {%- endfor %}
  </div>
</div>