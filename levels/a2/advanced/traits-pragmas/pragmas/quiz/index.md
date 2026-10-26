---
title: 'Quiz — Pragmas'
---

{% include menu.html %}

In Raku, the pragma `strict` is on by default. You do not declare a variable, but you assign a value to it. For example, `$x = 42`. What happens?

{:.quiz}
1 | It is a compile-time error
0 | It silently creates `$x`
0 | It prints a warning but runs
0 | It sets `$x` to `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` is on by default. With it, you must first declare every variable with `my`. So `$x = 42` without `my` does not compile. The error is *Variable '$x' is not declared*. With `no strict`, the pragma is off. Then the assignment works.

</div>

{% include nav.html %}
