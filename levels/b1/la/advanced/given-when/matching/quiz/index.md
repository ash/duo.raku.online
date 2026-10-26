---
title: 'Quiz — `when`'
translations_gpt:
---

{% include menu.html %}

Quid sequens programma imprimit?

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

Postquam copia `when` congruit, per se e copia `given` *erumpit*. Itaque nullus est transitus. `5` primae condicioni satisfacit, `$_ > 0`, itaque `positive` imprimitur. Secunda `when 5` numquam attingitur, quamquam etiam congrueret.

</div>

{% include nav.html %}
