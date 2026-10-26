---
title: 'Тест — Пакунки'
translations_gpt:
---

{% include menu.html %}

Що виводить ця програма?

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

`$x` створено через `my`. Тож вона лексична. Вона ніколи не потрапляє до простору імен `M`. Через це шлях `$M::x` нічого не знаходить. Він дає невизначене значення. Тож `.defined` дає `False`. Так можна дістатися лише до змінної `our`.

</div>

{% include nav.html %}
