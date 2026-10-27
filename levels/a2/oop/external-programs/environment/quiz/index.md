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

`%*ENV` is the dynamic hash with the environment variables. You read a variable by its name, like `%*ENV<HOME>`. `@*ARGS` is different. It holds the command-line arguments. These are the values after the program name in the command.

</div>

{% include nav.html %}
