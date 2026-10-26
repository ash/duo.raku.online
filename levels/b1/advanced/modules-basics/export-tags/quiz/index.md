---
title: 'Quiz — Export tags'
---

{% include menu.html %}

A module declares `sub hello is export` and `sub goodbye is export(:partings)`. Which subroutines can a program call directly after `use Greeting :partings;`?

{:.quiz}
1 | Only `goodbye`
0 | Only `hello`
0 | Both `hello` and `goodbye`
0 | Neither of them

{% include quiz.html %}

<div class="extended-explanation">

If you name a tag, `use` imports that group *instead of* the default one. So `:partings` brings in `goodbye` but leaves out `hello`. To get both, you would ask for the built-in `:ALL` tag with `use Greeting :ALL;`.

</div>

{% include nav.html %}
