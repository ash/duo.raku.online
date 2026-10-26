---
title: 'Quiz — Distributions'
---

{% include menu.html %}

Which file describes a Raku distribution, with its name, version and what it provides?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

`META6.json` describes a distribution. It is a JSON file in the top directory of the distribution. Its `provides` key links each module name to its source file. The `depends` key lists the other distributions that it needs.

</div>

{% include nav.html %}
