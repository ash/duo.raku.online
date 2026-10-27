---
title: 'Quiz — The environment'
---

{% include menu.html %}

Which variable holds the program’s environment variables?

{:.quiz}
0 | `@*ARGS`
1 | `%*ENV`
0 | `$*ENV`
0 | `%ENV`

{% include quiz.html %}

<div class="extended-explanation">

`%*ENV` is the dynamic hash of environment variables. You read a variable by its name, as in `%*ENV<HOME>`. `@*ARGS`, on the other hand, holds the command-line arguments.

</div>

{% include nav.html %}
