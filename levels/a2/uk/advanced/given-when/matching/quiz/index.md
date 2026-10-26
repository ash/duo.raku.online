---
title: 'Тест — `when`'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

Коли блок `when` збігається, він сам *виходить* з `given`. Raku не переходить до наступного `when`. `5` відповідає першій умові, `$_ > 0`. Тож програма виводить `positive`. Другий `when 5` теж підходить. Але Raku ніколи до нього не доходить.

</div>

{% include nav.html %}
