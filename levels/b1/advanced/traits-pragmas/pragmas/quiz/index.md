---
title: 'Quiz — Pragmas'
---

{% include menu.html %}

Raku’s `strict` pragma is on by default. What happens if you assign to a variable that you never declared, as in `$x = 42`?

{:.quiz}
1 | It is a compile-time error
0 | It silently creates `$x`
0 | It prints a warning but runs
0 | It sets `$x` to `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` is on by default. It requires you to declare every variable with `my` first. So `$x = 42` without `my` does not compile. The error is *Variable '$x' is not declared*. If you turn the pragma off with `no strict`, the assignment works.

</div>

{% include nav.html %}
