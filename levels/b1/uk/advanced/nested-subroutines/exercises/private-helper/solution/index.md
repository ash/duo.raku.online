---
title: 'Розв''язання: Приватний помічник'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Вихідний код можна знайти у файлі [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Вивід

```
16
```

## Коментарі

1. Помічника `double` визначено всередині `stats`, тож його видно лише там. Жодна інша частина програми не може його викликати.

1. `stats` використовує його двічі: `double(3)` дає `6`, а `double(5)` дає `10`. Їхня сума становить `16`.

{% include nav.html %}
