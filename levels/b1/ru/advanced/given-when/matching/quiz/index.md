---
title: Тест — `when`
translations_gpt:
---

{% include menu.html %}

Что напечатает следующая программа?

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

После совпадения блок `when` автоматически *выходит* из `given`. Поэтому «проваливания» нет. `5` подходит под первое условие, `$_ > 0`, поэтому печатается `positive`. Второй `when 5` так и не выполняется, хотя он бы тоже совпал.

</div>

{% include nav.html %}
