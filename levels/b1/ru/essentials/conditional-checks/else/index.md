---
title: '`else` блоки'
---

{% include menu.html %}

После блока `if` может идти блок `else`. Raku запускает блок `else`, когда условие не выполняется.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Блок `else` нельзя использовать сам по себе. Для этого есть вариант получше, который называется [`unless`](../unless). Мы познакомимся с ним буквально через минуту.

{% assign human=1 %}
{% include nav.html %}
