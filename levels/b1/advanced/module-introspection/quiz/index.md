---
title: 'Quiz — The Stash'
---

{% include menu.html %}

The `Greeting` module exports `hello` and defines `our $version`. What does `Greeting::.keys.sort` return?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` is the `our` variable of the module, and it is listed with its sigil. `EXPORT` is a package that Raku adds automatically for the `is export` names. So the exported `hello` appears there, not as a separate name in the package.

</div>

{% include nav.html %}
