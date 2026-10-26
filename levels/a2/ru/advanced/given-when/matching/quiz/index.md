---
title: Тест — `when`
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

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

Когда блок `when` совпадает, он сам *выходит* из `given`. Raku не переходит к следующему `when`. `5` подходит под первое условие, `$_ > 0`. Поэтому программа печатает `positive`. Второй `when 5` тоже подходит. Но Raku до него не доходит.

</div>

{% include nav.html %}
