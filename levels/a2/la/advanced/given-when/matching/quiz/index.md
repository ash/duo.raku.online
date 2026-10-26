---
title: 'Quiz — `when`'
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
given 5 {
    when $_ > 0 { say 'positive' }
    when 5      { say 'five' }
}
```

{:.quiz}
1 | positive
0 | five
0 | both lines
0 | nothing

{% include quiz.html %}

<div class="extended-explanation">

Cum copia `when` congruit, per se copiam `given` *relinquit*. Raku ad proximam `when` non pergit. `5` primae condicioni satisfacit, `$_ > 0`. Itaque programma `positive` imprimit. Secunda `when 5` etiam convenit. Sed Raku numquam ad eam pervenit.

</div>

{% include nav.html %}
