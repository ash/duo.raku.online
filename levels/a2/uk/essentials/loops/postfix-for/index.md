---
title: Постфіксна форма `for`
---

{% include menu.html %}

Ви вже знаєте інші модифікатори операторів: [`if` та `else`](/uk/essentials/conditional-checks/modifiers) і [`while` та `until`](/uk/essentials/loops/modifiers). Це добра новина. У Raku схожі речі працюють схожим чином.

Після короткого тіла циклу може стояти `for`:

```raku
.say for 1..7;
```

Діапазони виглядають дуже природно з `for` у кінці.

Ця програма робить те саме, що й звичайний цикл:

```raku
for 1..7 -> $n {
    say $n;
}
```

Або вона робить те саме, що й цей цикл із `$_`:

```raku
for 1..7 {
    .say;
}
```

Тут `.say` — це короткий спосіб написати `$_.say`.

{% include nav.html %}
