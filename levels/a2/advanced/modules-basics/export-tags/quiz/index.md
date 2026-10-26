---
title: 'Quiz — Export tags'
---

{% include menu.html %}

A module has `sub hello is export` and `sub goodbye is export(:partings)`. A program has `use Greeting :partings;`. Which subroutines can the program call directly?

{:.quiz}
1 | Only `goodbye`
0 | Only `hello`
0 | Both `hello` and `goodbye`
0 | Neither of them

{% include quiz.html %}

<div class="extended-explanation">

With a tag, `use` imports its group *instead of* the default group. So `:partings` brings in `goodbye`, but not `hello`. To get both, ask for the built-in tag `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
