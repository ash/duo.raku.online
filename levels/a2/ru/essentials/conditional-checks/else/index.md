---
title: '`else` блоки'
---

{% include menu.html %}

После блока `if` можно добавить блок `else`. Raku выполняет блок `else`, когда условие равно `False`.

```raku
my $t = 36.6;
if 35.5 < $t < 37.5 {
    say 'You are fine.';
}
else {
    say 'Call a doctor, maybe?';
}
```

Нельзя использовать блок `else` отдельно. Для этого есть способ лучше: [`unless`](../unless). Мы увидим его очень скоро.

{% assign human=1 %}
{% include nav.html %}
