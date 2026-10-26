---
title: 'Тест — `when`'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

```raku
given 5 {
    when $_ > 0 { say 'positive' }
    when 5      { say 'five' }
}
```

{:.quiz}
1 | positive
0 | five
0 | обидва рядки
0 | нічого

{% include quiz.html %}

<div class="extended-explanation">

Після збігу блок `when` автоматично *виривається* з `given`. Тож провалювання немає. `5` відповідає першій умові, `$_ > 0`, тож виводиться `positive`. До другого `when 5` виконання так і не доходить, хоча він теж збігся б.

</div>

{% include nav.html %}
