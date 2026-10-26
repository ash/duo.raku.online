---
title: 'Quiz — Distributions'
---

{% include menu.html %}

A file has the name and the version of a Raku distribution. It also says what the distribution provides. Which file is it?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

The file `META6.json` describes a distribution. It is a JSON file in the top directory. Its key `provides` links each module name to its source file. The key `depends` lists the other distributions that the distribution needs.

</div>

{% include nav.html %}
