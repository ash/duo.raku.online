---
title: 'Тест — Пакунки'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | Помилку

{% include quiz.html %}

<div class="extended-explanation">

`$x` оголошено через `my`, тож вона лексична й ніколи не потрапляє до простору імен `M`. Саме тому шлях `$M::x` нічого не знаходить, лише невизначене значення. Тож `.defined` дає `False`. Так можна було б дістатися лише до змінної `our`.

</div>

{% include nav.html %}
