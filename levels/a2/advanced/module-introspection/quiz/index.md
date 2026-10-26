---
title: 'Quiz — The Stash'
---

{% include menu.html %}

The `Greeting` module exports `hello`. It also has `our $version`. What does `Greeting::.keys.sort` return?

{:.quiz}
1 | ($version EXPORT)
0 | ($version)
0 | ($version &hello)
0 | (hello version)

{% include quiz.html %}

<div class="extended-explanation">

`$version` is the `our` variable of the module. It is in the list with its sigil. `EXPORT` is a package. Raku adds it automatically. It has the names with `is export`. So the exported `hello` is in `EXPORT`. It is not a separate name in the package.

</div>

{% include nav.html %}
