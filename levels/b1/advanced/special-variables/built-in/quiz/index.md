---
title: 'Quiz — Special variables'
---

{% include menu.html %}

In which built-in variable can you find the program’s command-line arguments?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

The command-line arguments come as a *list*. So the variable has the `@` sigil and the dynamic `*` twigil: `@*ARGS`. `%*ENV` is the environment hash and not the arguments. `@*ARGV` is how Perl writes it, and Raku does not use this name.

</div>

{% include nav.html %}
