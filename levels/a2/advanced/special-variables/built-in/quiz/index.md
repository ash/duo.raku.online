---
title: 'Quiz — Special variables'
---

{% include menu.html %}

Which built-in variable keeps the command-line arguments of the program?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

The command-line arguments come as a *list*. So the variable has the sigil `@`. It is also dynamic, so it has the twigil `*`. The result is `@*ARGS`. `%*ENV` is the hash of the environment. It does not have the arguments. `@*ARGV` is the name in Perl. Raku does not use it.

</div>

{% include nav.html %}
