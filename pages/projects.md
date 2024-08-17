---
layout: page
title: /projects
permalink: /projects/
---
<!-- GitHub Stats Section -->
<!-- <table style="width: 100%; border-collapse: collapse;">
  <tr>
    <td style="text-align: center; border: none;">
      <img src="https://github-readme-stats.vercel.app/api?username=omkar-334&include_all_commits=true&count_private=true&theme=transparent&rank_icon=github&custom_title=Github+Stats&show_icons=true" alt="Github Stats" style="max-width: 100%; height: auto;">
    </td>
    <td style="text-align: center; border: none;">
      <img src="https://github-readme-stats-git-masterrstaa-rickstaa.vercel.app/api/top-langs/?username=omkar-334&layout=compact&langs_count=8&theme=transparent" alt="Language Stats" style="max-width: 100%; height: auto;">
    </td>
  </tr>
</table> -->

<div class="github-stats-container">
  <img src="https://github-readme-stats.vercel.app/api?username=omkar-334&include_all_commits=true&count_private=true&theme=transparent&rank_icon=github&custom_title=Github+Stats&show_icons=true" alt="Github Stats" class="github-stat-img">
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